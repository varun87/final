class ReviewsController < ApplicationController
 
   def create
     Review.create("apartmenttype_id" => params["apartmenttype_id"],
                   "rating" => params["rating"],
                   "content" => params["content"])
     redirect_to "/apartmenttypes/#{params["apartmenttype_id"]}", :notice => "Thanks for your review!"
 
   end
 
 
 end