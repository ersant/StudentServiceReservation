package com.infoControllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ReservationBeans.Reservation;

@Controller
@RequestMapping("/")
public class MainController {
	
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView home() {
		
		//return new ModelAndView("home", "homeMessage", "Welcome Santosh");
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home");
		mv.addObject("result","Welcome Santosh");
		return mv;
	}
	
	@RequestMapping("reservation")
	 public String reservation(Model model) {
		 
		Reservation rs = new Reservation();
		model.addAttribute("reservation",rs);
		return "reservationpage";
		
	 }
	@RequestMapping("submitForm")
	public String submitForm(@ModelAttribute("reservation") Reservation rs) {
		
		return "Confirmationform";
	}
	
	// testing purpose Method   <-- Santosh
	@RequestMapping("/springMvc")
	public String springMvc() {
		return "springMvc";
	}
	// testing purpose Method   <-- Santosh
	@RequestMapping("springBoot")
	public String sprinBoot() {
		
		return "springBoot";
	}

}
