package com.msayem.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.ui.ModelMap;

import com.msayem.mail.Mail;

/**
 * Handles page requests for the application.
 * 
 * @author MSAYEM
 */
@Controller
public class IndexController {

	private final Logger logger = LoggerFactory.getLogger(getClass());
	
	ApplicationContext context = new ClassPathXmlApplicationContext("spring-mail.xml");
	Mail newMail = (Mail) context.getBean("mailBean");
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView indexController() {
		
		logger.info("test-project: Loading index.jsp page...");		
		return new ModelAndView("index", "commandSendEmail", new Mail());
	}

	@RequestMapping(value="sendEmail", method = RequestMethod.POST)
	public String mailController(@ModelAttribute("mail") Mail mail, ModelMap model) {
		
		model.addAttribute("from", mail.getFrom());
		model.addAttribute("to", mail.getTo());
		model.addAttribute("subject", mail.getSubject());
		model.addAttribute("message", mail.getMessage());
		
		newMail.sendMail(mail.getFrom(), mail.getTo(), mail.getSubject(), mail.getMessage());
		
		logger.info("test-project: Loading mailSent.jsp page...");
		return "mailSent";
	}
}