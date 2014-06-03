class UserprofilesController < ApplicationController

  # Try commenting out or removing this code entirely
  # to see what would happen.
  
 
  def destroy
    userprofile = Userprofile.find_by("id" => params["id"])
    userprofile.delete
    redirect_to "/userprofiles"
  end

  # Receive form submitted from /userprofiles/new
  def create
    Userprofile.create("name" => params["full_name"], "photo_url" => params["url"])
    redirect_to "/userprofiles"
  end

  # Receive form submitted from /userprofiles/edit
  def update
    userprofile = Userprofile.find_by("id" => params["id"])
    userprofile.update("name" => params["full_name"], "photo_url" => params["url"])
    redirect_to "/userprofiles"
  end

end
