package com.fpt.java.service;

import java.util.ArrayList;
import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

@Service
public class MailService {
	@Autowired
	JavaMailSender sender;
	
	private List<MimeMessage> mailList = new ArrayList<>();
	
	public void pushMail(String to) {
		MimeMessage message = sender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(message);
		try {
			helper.setFrom("Dao Quang Dat <datdqpk01405@fpt.edu.vn>");
			helper.setTo(to);
			helper.setSubject("Cảm ơn bạn đã đặt hàng");
			
			String html = "<p th:text=\"${'Hello Dear ' + name}\"></p>\r\n"
					+ "    <p th:if=\"${name.length() > 5}\">\r\n"
					+ "      Wow! You've got a long name (more than 5 chars)!\r\n"
					+ "    </p>\r\n"
					+ "    <p>\r\n"
					+ "      You have been successfully subscribed to the <b>Fake newsletter</b> on\r\n"
					+ "      <span th:text=\"${#dates.format(#dates.createNow(), 'dd MMM yyyy HH:mm')}\"></span>\r\n"
					+ "    </p>\r\n"
					+ "    \r\n"
					+ "    <p>\r\n"
					+ "      You can find <b>your inlined image</b> just below this text.\r\n"
					+ "    </p>\r\n"
					+ "    <p>\r\n"
					+ "    \r\n"
					+ "     <a href=\"https://javabydeveloper.com\">\r\n"
					+ "        <img src=\"https://shop.dammephongthuy.com/wp-content/uploads/2018/10/thankyoupage.png\" alt=\"htts://javabydeveloper.com\" height=\"110\" width=\"500\"/>\r\n"
					+ "      </a>\r\n"
					+ "    </p>\r\n"
					+ "    <p>\r\n"
					+ "      Regards, <br />\r\n"
					+ "      <em th:text=\"${sign}\"></em>\r\n"
					+ "      <p th:text=\"${location}\"></p>\r\n"
					+ "    </p>";
			helper.setText(html, true);
		} catch (MessagingException e) {
			System.out.println("Không thể thêm mail vào hàng đợi");
			e.printStackTrace();
		}
		mailList.add(message);
	}
	
	@Scheduled(fixedDelay = 2000)
	public void run() {
		while(!mailList.isEmpty()) {
			MimeMessage message = mailList.remove(0);
			try {
				sender.send(message);	
			} catch (Exception e) {
				System.out.println("Gửi mail lỗi");
				e.printStackTrace();
			}
		}
	}
}
