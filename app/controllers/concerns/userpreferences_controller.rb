  # Receive form submitted from /userprofiles/new
  def create
    Userprofile.create("name" => params["full_name"], "photo_url" => params["url"])
    redirect_to "/userprofiles"
  end

  Userpreference.create("apartmenttype_id" => params["chosen_apartmenttype_id"], "userprofile_id" => paramas[], "preference" => params[])