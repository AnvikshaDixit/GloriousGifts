package com.gloriousgift.contoller;


import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.gloriousgift.ProductModel.Product;
import com.gloriousgift.ProductModel.ProductService;
import com.gloriousgift.RoleSecurity.RoleSecurityService;
import com.gloriousgift.UserModel.User;
import com.gloriousgift.UserModel.UserService;


@Controller
public class gloriousGiftController
{	
	@Autowired
	UserService us;
	
	@Autowired
	ProductService ps;
	
	@Autowired
	RoleSecurityService rss;
	
	@RequestMapping("/")
	public String homewalkin()
	{
		rss.GenerateRole(null);
		return "index";
	}
	
	
	
	

	
	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	   public ModelAndView Signupinfo()
	   {
		  ModelAndView mav = new ModelAndView("signup");
	     mav.addObject("User",new User());
	      return mav;
	   }
	
	
	
	
	@RequestMapping(value = "/Uservalues", method = RequestMethod.POST)
	   public ModelAndView Uservalues (@Valid @ModelAttribute("User") User u,  BindingResult result ) 
	   {
		
		if(result.hasErrors()) 
		{
			System.out.println("Errors");
			
			ModelAndView mav = new ModelAndView("signup");
			
			mav.addObject("User", u);
			
			return mav; 
		}
		else
		{	
		  
			 us.insert(u);
	    		  
		     ModelAndView mav = new ModelAndView("Success");
	      
		     mav.addObject("User",new User());
	      
		     return mav;
		} 
	   }
	
	@RequestMapping(value = "/product", method = RequestMethod.GET)
	   public ModelAndView Productinfo()
	   {
		  ModelAndView mav = new ModelAndView("product");
	     mav.addObject("Product",new Product());
	      return mav;
	   }
	
	
	
	
	@RequestMapping(value = "/Productvalues", method = RequestMethod.POST)
	   public ModelAndView Productvalues(@ModelAttribute("Product")Product p) 
	   {
		  ps.insert(p);
	     
		  ModelAndView mav = new ModelAndView("product");
	      
		  mav.addObject("Product",new Product());
	      
		  return mav;
	   }
	
	
	
	@RequestMapping(value = "/loginpage", method = RequestMethod.GET)
	public ModelAndView logininfo(@RequestParam(value = "error", required = false) String error) {
	   
		
		ModelAndView model = new ModelAndView();
		if (error != null) {
			model.addObject("error", "Invalid username and password!");
		}
		model.setViewName("login");

		return model;

		

	}

	@RequestMapping(value = "/loginpage", method = RequestMethod.POST)
	public String logininfo1() {
		
	    return "login";

	}

	
	/*@RequestMapping(value = "/logincheck", method = RequestMethod.GET)
	public String logincheck() {

	   return "login";

	}*/
	
	
	
	
		
	/*@RequestMapping("/login")
	public String login()
	{
		return "login";
	}*/
	
	
	
	
	
	
	
		
	@RequestMapping("/allproducts")
	public ModelAndView allproducts()
	{ 
		List<Product> list = ps.list();
		
		String temp = "[";
		
		for( Product p:list )
		{
			temp += p.toString().replaceAll("\\\\", "/") + ",";
		}
		
		if( temp.length() > 1 )
			temp = temp.substring(0, temp.length()-1);
		
		temp+= "]";
		
		System.out.println(temp);
		 
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("JSONdata", temp);
		
		return mav;

  
	}

		@RequestMapping("/cartimg")
		public String  cart()
		{
		
  return "cartimg";

	}
		@RequestMapping("/index")
		public String home()
		{
			return "index";
					
			
		  }
		@RequestMapping("/aboutus")
		public String aboutus()
		{
			return "aboutus";
					
			
		  }
		
		
		
		
		
}