class ApartmenttypesController < ApplicationController
 
   def create
     Apartmenttype.create("title" => params["title"],
                  "rent" => params["rent"],
                  "poster_url" => params["url"],
                  "studentdirector_id" => params["chosen_studentdirector_id"])
     redirect_to "/apartmenttypes"
   end
 end