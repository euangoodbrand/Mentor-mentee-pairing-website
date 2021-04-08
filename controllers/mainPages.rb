get "/index" do
  @header = nil #initializing header 
  
  #If user already logged in then displays a header for profiles which are logged 
  #in else displays headers for non-logged in users
  if session[:logged_in]
    #If a mentee is logged in it displays the header for a mentee profile else
    #displays header for a mentor profile
    if session[:mentees_username] 
      @header = erb:"common/header_menteeA"
    elsif session[:mentors_username] 
      @header = erb:"common/header_mentorA"
    else
      @header = erb:"common/header_adminA"
    end
  else 
    @header = erb:"common/headerB"
  end
  erb :index
end

get "/contact" do
   @header = nil #initializing header
  
  #If user already logged in then displays a header for profiles which are logged 
  #in else displays headers for non-logged in users
  if session[:logged_in]
    #If a mentee is logged in it displays the header for a mentee profile else
    #displays header for a mentor profile
    if session[:mentees_username] 
      @header = erb:"common/header_menteeA"
    elsif session[:mentors_username] 
      @header = erb:"common/header_mentorA"
    else
      @header = erb:"common/header_adminA"
    end
  else 
    @header = erb:"common/headerB"
  end
  erb :contact
end

get "/accessibility" do
   @header = nil #initializing header
  
  #If user already logged in then displays a header for profiles which are logged 
  #in else displays headers for non-logged in users
  if session[:logged_in]
    #If a mentee is logged in it displays the header for a mentee profile else
    #displays header for a mentor profile
    if session[:mentees_username] 
      @header = erb:"common/header_menteeA"
    elsif session[:mentors_username] 
      @header = erb:"common/header_mentorA"
    else
      @header = erb:"common/header_adminA"
    end
  else 
    @header = erb:"common/headerB"
  end
  erb :accessibility
end

get "/SignUpChoices" do
  erb :signup_choices #Leads to a page which asks user to sign up as either mentee or as a mentor
end

get "/LoginPage" do
  erb :login
end

get "/MenteeSignUpForm" do
  erb :mentee_signup
end

post "/index" do
  redirect "/index"
end

get "/MentorSignUpForm" do
  erb :mentor_signup
end

get "/AdminHelp" do
  @header = erb:"common/headerB"
  erb :admin_help
end

post "/AdminHelp" do
  @header = erb:"common/headerB"
  erb :admin_help
end