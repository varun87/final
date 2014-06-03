class SessionsController < ApplicationController
 
   def authenticate
     the_user = User.find_by("username" => params["username"])
     if the_user != nil
       if the_user["password"] == params["password"]
         cookies["user_id"] = the_user["id"]
         redirect_to "/", :notice => "Hi, How are you #{the_user["name"]}!"
       else
         logger.debug the_user.inspect
         redirect_to "/login", :notice => "Unknown password."
       end
     else
       redirect_to "/login", :notice => "Unknown username."
     end
   end
 
 def logout
    cookies["user_id"] = nil
    redirect_to "/", :notice => "Bye, Hope to see you again!"
  end

 end