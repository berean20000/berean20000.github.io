package com.mungeno.app.common;

import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class APISet {
	public void sendMail(String receiver,String mpw) {
		Properties p = System.getProperties();
        p.put("mail.smtp.starttls.enable", "true");
        p.put("mail.smtp.host", "smtp.gmail.com");
        p.put("mail.smtp.auth", "true");
        p.put("mail.smtp.port", "587");
        p.put("mail.smtp.ssl.protocols", "TLSv1.2");
 
        Authenticator auth = new MyAuthentication();
        Session session = Session.getDefaultInstance(p, auth);
        MimeMessage msg = new MimeMessage(session);
        
        String mailtitle="뭉게노 비밀번호 확인";
        String mailcontent="임시 비밀번호는 "+mpw+" 입니다.";
 
        try {
            msg.setSentDate(new Date());
            InternetAddress from = new InternetAddress();
            
            from = new InternetAddress("MUNGENO<newyear19860101@gmail.com>");
            msg.setFrom(from);
 
            InternetAddress to = new InternetAddress(receiver);
            msg.setRecipient(Message.RecipientType.TO, to);
 
            msg.setSubject(mailtitle, "UTF-8");
            msg.setText(mailcontent, "UTF-8");
            msg.setHeader("content-Type", "text/html");
            
            javax.mail.Transport.send(msg);
        } catch (AddressException addr_e){
            addr_e.printStackTrace();
        } catch (MessagingException msg_e){
            msg_e.printStackTrace();
        }
	}
}
class MyAuthentication extends Authenticator {
	 
    PasswordAuthentication account;
 
    public MyAuthentication(){
        String id = "메일주소기입";
        String pw = "비밀번호기입";
        account = new PasswordAuthentication(id, pw);
    }
 
    public PasswordAuthentication getPasswordAuthentication(){
        return account;
    }
}
