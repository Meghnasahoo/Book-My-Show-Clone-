package com.movie.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.movie.model.Booking;
import com.movie.model.BookingRepo;
import com.movie.model.ComplainRepo;
import com.movie.model.ContactAdmin;
import com.movie.model.Feedback;
import com.movie.model.Feedback_Repo;
import com.movie.model.User;
import com.movie.model.UserRepo;

@Controller
public class Home_User_Controller {
	@Autowired
	UserRepo urepo;
	@Autowired
	ComplainRepo crepo;
	@Autowired
	Feedback_Repo frepo;
	@Autowired 
	BookingRepo brepo;
@RequestMapping("indexheader")
	public String indexHeader()
	{
		return "index_header";
	}
@RequestMapping("indexheader1")
public String indexHeader1()
{
	return "index_header1";
}
@RequestMapping("indexfooter")
public String indexFooter()
{
	return "index_footer";
}
@RequestMapping("index")
public String index()
{
	return "index";
}
@RequestMapping("index1")
public String index1()
{
	return "index1";
}
@RequestMapping("signup")
public String signup()
{
	return "signup";
}
@RequestMapping("regprocess")
public String register(@RequestParam("uname") String name, @RequestParam("uemail") String email, @RequestParam("uphno") String phno,  @RequestParam("upass") String password, @RequestParam("ucity") String city  )
{
	User u=new User();
	u.setName(name);
	u.setEmail(email);
	u.setPhno(phno);
	u.setPassword(password);
	u.setCity(city);
	urepo.save(u);
	return "index";
	
}
@RequestMapping("category")
public String category()
{
	return "category";
	
}
@RequestMapping("category2")
public String category2()
{
	return "category2";
	
}

@RequestMapping("usrlogin")
public String adminlogin()
{
	return "login";
}
@RequestMapping("loginproc")
public String loginprocess(@RequestParam("uemail") String email, @RequestParam("upass") String password, ModelMap model) {
    // Retrieve user from the database based on the provided email
    User user = urepo.findByEmail(email);

    if (user != null && user.getPassword().equals(password)) {
        return "category2"; // Redirect to dashboard if user exists and passwords match
    } 	
    else 
	{
		model.put("msg", "email or password error!");
		return "login";
	
}
}
@RequestMapping("contact")
public String contact()
{
	return "Contact";
	
}
@RequestMapping("contactproc")
public String conatctprocess(@RequestParam("pname") String name, @RequestParam("pemail") String email,@RequestParam("pmessage") String message){
    // Retrieve user from the database based on the provided email
   ContactAdmin c = new ContactAdmin();
   		c.setName(name);
   		c.setEmail(email);
   		c.setMessage(message);
   		crepo.save(c);
        return "index1"; // Redirect to dashboard if user exists and passwords match
    } 	
@RequestMapping("bookingseat")
public String bookingseat()
{
	return "Booking_Seat";
	
}
@RequestMapping("payment")
public String payment()
{
	return "payment";
}
@RequestMapping("success")
public String success()
{
	return "success";
}
@RequestMapping("feedback")
public String feedback()
{
	return "feedback";
	
}
@RequestMapping("feedbackproc")
public String feedbackprocess(@RequestParam("sname") String name,@RequestParam("sfeedback") String feedback){
    // Retrieve user from the database based on the provided email
Feedback f=new Feedback();
f.setName(name);
f.setFeedback(feedback);
      frepo.save(f);  
        return "index1";
    } 
@RequestMapping("Payment")
public String Payment()
{
	return payment();
}
@RequestMapping("booking")
public String bookingprocess(@RequestParam("bmname") String moviename,@RequestParam("bname") String custname,@RequestParam("bemail") String email,@RequestParam("baddress") String address,@RequestParam("bcity") String city,@RequestParam("bstate") String state,@RequestParam("bpin") Integer pincode,@RequestParam("bnamecard") String nameoncard,@RequestParam("bcardtype") String cardtype) {
	Booking b=new Booking();
	b.setMoviename(moviename);
	b.setCustName(custname);
	b.setEmail(email);
	b.setAddress(address);
	b.setCity(city);
	b.setState(state);
	b.setPincode(pincode);
	b.setNameoncard(nameoncard);
	b.setCardtype(cardtype);

	
	brepo.save(b);
	return "Success";
	
}
@RequestMapping("Success")
public String Success()
{
	return success();
}

}
