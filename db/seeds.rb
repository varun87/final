Studentdirector.delete_all
aa = Studentdirector.create("name" => "Aman Adhonom", "photo_url" => "http://o.quizlet.com/DoO4I88FxXFiEmlwpjpkKA_m.jpg")
ss = Studentdirector.create("name" => "Sonia Siu", "photo_url" => "http://2.bp.blogspot.com/_QM2-6hVKZbQ/S-Oem-U4LeI/AAAAAAAAKU8/FlZAHLSBo6U/s1600/sonia_sui3.jpg")
bv = Studentdirector.create("name" => "Bruno Valle", "photo_url" => "https://s3.amazonaws.com/photos.angel.co/users/410691-medium_jpg?1380748667")

Apartmenttype.delete_all
twinstudio = Apartmenttype.create("title" => "Twin studio", "rent" => 915, "studentdirector_id" => aa.id, "poster_url" => "http://www.kellogg.northwestern.edu/stu_aff/housing/images/units/twinstudio_1.jpg")
twobedroom = Apartmenttype.create("title" => "Two bedroom", "rent" => 1092, "studentdirector_id" => ss.id, "poster_url" => "http://www.kellogg.northwestern.edu/stu_aff/housing/images/units/twinstudio_5.jpg")
singlestudio = Apartmenttype.create("title" => "Single studio", "rent" => 1092, "studentdirector_id" => bv.id, "poster_url" => "http://www.kellogg.northwestern.edu/stu_aff/housing/images/units/twinstudio_3.jpg")
onebedroom = Apartmenttype.create("title" => "One bedroom", "rent" => 1445, "studentdirector_id" => bv.id, "poster_url" => "http://www.kellogg.northwestern.edu/stu_aff/housing/images/units/efficiency_2.jpg")
family = Apartmenttype.create("title" => "Family", "rent" => 1563, "studentdirector_id" => ss.id, "poster_url" => "http://www.kellogg.northwestern.edu/stu_aff/housing/images/units/efficiency_1.jpg")

Userprofile.delete_all
deependraojha = Userprofile.create("name" => "Deependra Ojha", "photo_url" => "http://www.name-list.net/img/images.php/Deependra_4.jpg")
nehabansal = Userprofile.create("name" => "Neha Bansal", "photo_url" => "http://clubm.in/sites/default/files/ClubM/story/images/hero_large10.jpg")
meghnaojha = Userprofile.create("name" => "Meghna Ojha", "photo_url" => "http://m.c.lnkd.licdn.com/mpr/mpr/shrink_80_80/p/2/005/019/0b8/2adb806.jpg")


Userpreference.delete_all
Userpreference.create("apartmenttype_id" => singlestudio.id, "userprofile_id" => deependraojha.id, "preference" => "No flat mates")
Userpreference.create("apartmenttype_id" => twinstudio.id, "userprofile_id" => deependraojha.id, "preference" => "1 male flatmate")
Userpreference.create("apartmenttype_id" => singlestudio.id, "userprofile_id" => nehabansal.id, "preference" => "No flat mates")
Userpreference.create("apartmenttype_id" => twobedroom.id, "userprofile_id" => nehabansal.id, "preference" => "1 female flat mate")
Userpreference.create("apartmenttype_id" => twobedroom.id, "userprofile_id" => meghnaojha.id, "preference" => "With spouse")
Userpreference.create("apartmenttype_id" => family.id, "userprofile_id" => meghnaojha.id, "preference" => "With spouse")

User.delete_all
neha = User.create("username" => "nehabansal", "password" => "nehabansal", "name" => "Neha Bansal")
deependra = User.create("username" => "deependraojha", "password" => "deependraojha", "name" => "Deependra Ojha")

Review.delete_all
Review.create("user_id" => deependra["id"], "apartmenttype_id" => family["id"], "rating" => 5, "content" => "Spacious")
Review.create("user_id" => deependra["id"], "apartmenttype_id" => twinstudio["id"], "rating" => 5, "content" => "Great apartment")
Review.create("user_id" => neha["id"], "apartmenttype_id" => twobedroom["id"], "rating" => 4, "content" => "Good but not great")
Review.create("user_id" => neha["id"], "apartmenttype_id" => family["id"], "rating" => 4, "content" => "Too spacious")
Review.create("user_id" => deependra["id"], "apartmenttype_id" => twobedroom["id"], "rating" => 3, "content" => "Not clean")

puts "There are now #{Apartmenttype.count} apartmenttypes, #{Studentdirector.count} studentdirectors, and #{Userprofile.count} users."
