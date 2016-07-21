package com.gloriousgift.contoller;


import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.gloriousgift.AddressModel.Address;
import com.gloriousgift.AddressModel.AddressService;
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
	
	@Autowired
	AddressService as;
	
	
	@RequestMapping("/")
	public String homewalkin()
	{
		rss.GenerateRole(null);
		return "index";
	}
	
	@RequestMapping("/signup")
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
	
	
	/*@RequestMapping(value = "/Admin**", method = RequestMethod.GET)
	public ModelAndView adminPage() {

	  ModelAndView model = new ModelAndView();
	  model.addObject("title", "Spring Security Login Form - Database Authentication");
	  model.addObject("message", "This page is for ROLE_ADMIN only!");
	  model.setViewName("Admin");
	  return model;

	}*/
	
	@RequestMapping(value = "/product", method = RequestMethod.GET)
	   public ModelAndView Productinfo()
	   {
		  ModelAndView mav = new ModelAndView("product");
	     mav.addObject("Product",new Product());
	      return mav;
	   }
	
	@RequestMapping(value = "/Productvalues", method = RequestMethod.POST)
	   public ModelAndView Productvalues(@ModelAttribute("Product")Product p,HttpServletRequest request, BindingResult result) 
	
	 {
		String filename=null;

	
	ServletContext context= request.getServletContext();

	String path = context.getRealPath("/");

	System.out.println("Path = "+path);

	p.setImage("resources/img/" + p.getFile().getOriginalFilename());
	
	System.out.println("File name = "+p.getFile().getOriginalFilename());

	File f=new File(path + "resources/img");
    
	
	
	if(!p.getFile().isEmpty())

	{

	try

	{
		f =new File(f.getAbsoluteFile()+System.getProperty("file.separator")+ p.getFile().getOriginalFilename());

	byte[] bytes=p.getFile().getBytes();

	BufferedOutputStream bs=new BufferedOutputStream (new FileOutputStream(f));

	bs.write(bytes);

	bs.close();
	
	/*p.setFile("/resources/img/");*/

	System.out.println("Image uploaded");
	}
	catch(Exception ex)

	{
		System.out.println(ex.getMessage());
	}
	
	}
	
	ps.insert(p);
	  	     
	  ModelAndView mav = new ModelAndView("product");
      
 	  mav.addObject("Product",new Product());
      
	  return mav;
	  }
   	
	
	@RequestMapping(value = "/loginpage", method = RequestMethod.GET)
	public ModelAndView logininfo(@RequestParam(value = "error", required = false) String error)
	
	{
		ModelAndView model = new ModelAndView();
		        if (error != null)
		        {
			         model.addObject("error", "Invalid username and password!");
		        }
		model.setViewName("login");

		return model;

		

	}

	@RequestMapping(value = "/loginpage", method = RequestMethod.POST)
	public String logininfo1() {
		
	    return "login";

	}

			
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
	
	
	

	/*@RequestMapping("/Details")
	public ModelAndView Addressdetails()
	{ 
		List<Product> list = as.list();
		
		String temp = "[";
		
		for( Address a:list )
		{
			temp += a.toString().replaceAll("\\\\", "/") + ",";
		}
		
		if( temp.length() > 1 )
			temp = temp.substring(0, temp.length()-1);
		
		temp+= "]";
		
		System.out.println(temp);
		 
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("JSONdata", temp);
		
		return mav;

  
	}
*/
	
	
	
		@RequestMapping("/cartimg")
		public String  cart()
		{
		
  return "cartimg";

	}
		
		@RequestMapping("/ContactUs")
		public String  contactus()
		{
		
  return "ContactUs";

	}
		
		@RequestMapping("/Admin")
		public String  Admin()
		{
		
  return "Admin";

	}
		
	/*	==========================================================
		*/
		@RequestMapping(value = "/Addressdetails", method = RequestMethod.GET)
		   public ModelAndView Addressinfo()
		   {
			  ModelAndView mav = new ModelAndView("Addressdetails");
		     mav.addObject("Address",new Address());
		      return mav;
		   }
		
		
		
		
		@RequestMapping(value = "/Addressvalues", method = RequestMethod.POST)
		   public ModelAndView Addressvalues (@ModelAttribute("Address") Address a) 
		   {
			
					  
				 as.insert(a);
		    		  
			     ModelAndView mav = new ModelAndView("Details");
		      
			     mav.addObject("Address",new Address());
		      
			     return mav;
			 
		   }
		

		
		
		
		@RequestMapping("/index")
		public String home()
		{
			return "index";
					
			
		  }
		@RequestMapping("/Aboutus")
		public String aboutus()
		{
			return "Aboutus";
					
			
		  }
		
		
		
		
		
}