package ntukhpi.semit.militaryoblikspring.service;

import java.io.File;
import jakarta.mail.MessagingException;
import jakarta.mail.internet.MimeMessage;
import org.springframework.stereotype.Service;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.beans.factory.annotation.Autowired;

@Service
public class EmailService {
    private final JavaMailSender javaMailSender;

    @Autowired
    public EmailService(JavaMailSender javaMailSender) {
        this.javaMailSender = javaMailSender;
    }

    public void sendSimpleLetter(String toEmail, String subject, String text) {
        SimpleMailMessage simpleMailMessage = new SimpleMailMessage();

        simpleMailMessage.setTo(toEmail);

        if (subject != null)
            simpleMailMessage.setSubject(subject);

        if (text != null)
            simpleMailMessage.setText(text);

        javaMailSender.send(simpleMailMessage);
    }

    public void sendLetterWithAttachment(String toEmail, String subject, String text, String filePath) {
        try {
            MimeMessage mimeMessage = javaMailSender.createMimeMessage();
            MimeMessageHelper mimeMessageHelper = new MimeMessageHelper(mimeMessage, true);

            mimeMessageHelper.setTo(toEmail);

            if (subject != null)
                mimeMessageHelper.setSubject(subject);

            if (text != null)
                mimeMessageHelper.setText(text);

            if (filePath != null) {
                File file = new File(filePath);
                if (file.exists()) {
                    mimeMessageHelper.addAttachment(file.getName(), file);
                    javaMailSender.send(mimeMessage);
                }
            }
        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }
}
