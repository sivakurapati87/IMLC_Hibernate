package com.intuiture.imlc.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ResourceBundle;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.intuiture.imlc.json.UserJson;

@CrossOrigin
@RestController
@RequestMapping("/LoginController")
public class LoginController {
	public static final ResourceBundle RB = ResourceBundle.getBundle("users");

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	@ResponseBody
	public UserJson submit(@RequestBody UserJson userJson) {
		String userNmae = RB.getString("userName");
		String password = RB.getString("password");
		if (userJson.getUserName().equals(userNmae) && userJson.getPassword().equals(password)) {
			userJson.setPassword(null);
			return userJson;
		} else {
			return null;
		}
	}

	// @RequestMapping(value = "/upload", method = RequestMethod.POST)
	// public @ResponseBody String upload(@RequestParam("file") MultipartFile
	// file) throws IOException {
	// String fileName = null;
	// if (!file.isEmpty()) {
	// try {
	// fileName = file.getOriginalFilename();
	// byte[] bytes = file.getBytes();
	// File newFile = new File("D:\\" + fileName);
	// BufferedOutputStream buffStream = new BufferedOutputStream(new
	// FileOutputStream(newFile));
	// buffStream.write(bytes);
	// buffStream.close();
	// return "You have successfully uploaded " + fileName;
	// } catch (Exception e) {
	// return "You failed to upload " + fileName + ": " + e.getMessage();
	// }
	// } else {
	// return "Unable to upload. File is empty.";
	// }
	// }
	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public @ResponseBody String upload(@RequestParam("uploadedFile") MultipartFile[] files) throws IOException {
		String fileName = null;
		BufferedOutputStream buffStream = null;
		try {
			if (files != null && files.length > 0) {
				for (MultipartFile file : files) {
					if (!file.isEmpty()) {
						System.out.println(file.getContentType());
						fileName = file.getOriginalFilename();
						byte[] bytes = file.getBytes();
						File newFile = new File("D:\\" + fileName);
						buffStream = new BufferedOutputStream(new FileOutputStream(newFile));
						buffStream.write(bytes);
					}
				}
				if (buffStream != null) {
					buffStream.close();
				}
			} else {
				return "Unable to upload. File is empty.";
			}
		} catch (Exception e) {
			return "You failed to upload " + fileName + ": " + e.getMessage();
		}
		return "";
	}

	@RequestMapping(value = "/download", method = RequestMethod.GET)
	public void download(final HttpServletRequest request, final HttpServletResponse response) {

		File file = new File("D:\\example.pdf");
		try (InputStream fileInputStream = new FileInputStream(file); OutputStream output = response.getOutputStream();) {

			response.reset();

			response.setContentType("application/octet-stream");
			response.setContentLength((int) (file.length()));

			response.setHeader("Content-Disposition", "attachment; filename=\"" + file.getName() + "\"");

			IOUtils.copyLarge(fileInputStream, output);
			output.flush();
		} catch (IOException e) {
			e.printStackTrace();
		}

	}

	@RequestMapping(value = "/previewPDF", method = RequestMethod.GET, produces = "application/pdf")
	public ResponseEntity<byte[]> getPDF() {
		FileInputStream fileStream;
		try {
			fileStream = new FileInputStream(new File("D:\\example.pdf"));
			byte[] contents = IOUtils.toByteArray(fileStream);
			HttpHeaders headers = new HttpHeaders();
			headers.setContentType(MediaType.parseMediaType("application/pdf"));
			String filename = "test.pdf";
			headers.setContentDispositionFormData(filename, filename);
			ResponseEntity<byte[]> response = new ResponseEntity<byte[]>(contents, headers, HttpStatus.OK);
			return response;
		} catch (FileNotFoundException e) {
			System.err.println(e);
		} catch (IOException e) {
			System.err.println(e);
		}
		return null;
	}
}
