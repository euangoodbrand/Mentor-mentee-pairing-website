require_relative "../spec_helper"


    
#checks that a user can be suspended
#
#
#tests that error message shows up when a nil mentee is attempted to be edited

describe "admin block page" do
    #admin 
  it "shows empty list message when no mentors" do
    login_admin
    click_link "Mentee List"
    expect(page).to have_content "Your search revealed no mentees."
    clear_database
  end
       
  it "allows block of a valid mentee" do
    visit "/login"
    login_admin
    click_link "Mentor List"
    expect(page).to have_content "Your search revealed no mentors."
    clear_database
  end
    
   it "shows empty list message when no mentors" do
    add_test_user
    login_admin
    click_link "Mentee List"
    click_button "Block"
    login_mentee
    expect(page).to have_content "Your account is suspended"
    clear_database
  end
       
  it "allows block of a valid mentee" do
    add_test_mentor
    login_mentor
    login_admin
    click_link "Mentor List"
    click_button "Block"
    login_mentor
    expect(page).to have_content "Your account is suspended"
    clear_database
  end
   it "allows block and unblock of a valid mentee" do
    add_test_user
    login_admin
    click_link "Mentee List"
    click_button "Block"
    click_button "Unblock"
    login_mentee
    expect(page).to have_content "George Test"
    clear_database
  end
       
  it "allows block and unblock of a valid mentor" do
    add_test_mentor
    login_mentor
    login_admin
    click_link "Mentor List"
    click_button "Block"
    click_button "Unblock"
    login_mentor
    expect(page).to have_content "Sam Mentor"
    clear_database
  end 
    
    #admin + mentor
    
it "shows empty list message when no mentors" do
    add_test_mentor
    login_admin_mentor
    click_link "Mentee List"
    expect(page).to have_content "Your search revealed no mentees."
    clear_database
  end
       
  it "allows block of a valid mentee" do
    login_admin
    click_link "Mentor List"
    expect(page).to have_content "Your search revealed no mentors."
    clear_database
  end
    
   it "shows empty list message when no mentors" do
    add_test_user
    add_test_mentor
    login_admin_mentor
    click_link "Mentee List"
    click_button "Block"
    login_mentee
    expect(page).to have_content "Your account is suspended"
    clear_database
  end
       
  it "allows block of a valid mentee" do
    add_test_mentor
    login_mentor
    add_test_mentor
    login_admin_mentor
    click_link "Mentor List"
    click_button "Block"
    login_mentor
    expect(page).to have_content "Your account is suspended"
    clear_database
  end
   it "allows block and unblock of a valid mentee" do
    add_test_user
   add_test_mentor
    login_admin_mentor
    click_link "Mentee List"
    click_button "Block"
    click_button "Unblock"
    login_mentee
    expect(page).to have_content "George Test"
    clear_database
  end
       
  it "allows block and unblock of a valid mentor" do
    add_test_mentor
    login_mentor
    add_test_mentor
    login_admin_mentor
    click_link "Mentor List"
    click_button "Block"
    click_button "Unblock"
    login_mentor
    expect(page).to have_content "Sam Mentor"
    clear_database
  end 
 it "tests for a mentee/mentor match" do
  clear_database
    add_test_mentor
    add_test_user
     login_mentor  
    login_mentee
    visit "/search"
    fill_in "searchForMentor", with: "Accounting and Financial Management (BA)"
    click_button "Submit"
    click_button "Send application" 
    login_mentor
    visit "/menteeApplications"

    click_button "Accept application"
    login_admin
    click_link "Mentee List"
    click_button "Block"
    login_mentee
    expect(page).to have_content "Your account is suspended"
    clear_database
  end
 it "tests for a mentee/mentor match" do
  clear_database
    add_test_mentor
    add_test_user
    login_mentor     
    login_mentee
    visit "/search"
    fill_in "searchForMentor", with: "Accounting and Financial Management (BA)"
    click_button "Submit"
    click_button "Send application" 
    login_mentor
    visit "/menteeApplications"

    click_button "Accept application"
    login_admin_mentor
    click_link "Mentee List"
    click_button "Block"
    login_mentee
    expect(page).to have_content "Your account is suspended"
    clear_database
 end
   it "allows block and unblock of a valid mentee" do
    add_test_user
   add_test_mentor
    login_admin_mentor
    click_link "Mentee List"
    click_button "Block"
    click_button "Unblock"
    login_mentee
    expect(page).to have_content "George Test"
    clear_database
  end
       
  it "allows block and unblock of a valid mentor" do
    add_test_mentor
    login_mentor
    add_test_mentor
    login_admin_mentor
    click_link "Mentor List"
    click_button "Block"
    click_button "Unblock"
    login_mentor
    expect(page).to have_content "Sam Mentor"
    clear_database
  end 
 it "tests for a mentee/mentor match" do
  clear_database
    add_test_mentor
    add_test_user
    login_mentor     
    login_mentee
    visit "/search"
    fill_in "searchForMentor", with: "Accounting and Financial Management (BA)"
    click_button "Submit"
    click_button "Send application" 
    login_mentor
    visit "/menteeApplications"
    click_button "Accept application"
    login_admin
    click_link "Mentor List"
    click_button "Block"
    login_mentor
    expect(page).to have_content "Your account is suspended"
    clear_database
  end
 it "tests for a mentee/mentor match" do
  clear_database
    add_test_mentor
    add_test_user
    login_mentor   
    login_mentee
    visit "/search"
    fill_in "searchForMentor", with: "Accounting and Financial Management (BA)"
    click_button "Submit"
    click_button "Send application" 
    login_mentor
    visit "/menteeApplications"
    click_button "Accept application"
    login_admin_mentor
    click_link "Mentor List"
    click_button "Block"
    login_mentor
    expect(page).to have_content "Your account is suspended"
    clear_database
 end
 it "tests for a mentee/mentor match" do
  clear_database
    add_test_mentor
    add_test_user
    login_mentor   
    login_mentee
    visit "/search"
    fill_in "searchForMentor", with: "Accounting and Financial Management (BA)"
    click_button "Submit"
    click_button "Send application" 
    login_mentor
    visit "/menteeApplications"
    click_button "Accept application"
    login_admin
    click_link "Mentor List"
    click_button "Block"
    login_mentor
    expect(page).to have_content "Your account is suspended"
    clear_database
  end

  it "allows block of a valid mentor" do
    add_test_mentor
    login_mentor
    add_test_mentor
    login_admin_mentor
    click_link "Mentor List"
    click_button "Block"
    click_button "Block"
    expect(page).to have_content "Account has already been blocked"
    clear_database
  end
it "allows block of a valid mentee" do
    add_test_user
    add_test_mentor
    login_mentor
    add_test_mentor
    login_admin_mentor
    click_link "Mentee List"
    click_button "Block"
    click_button "Block"

    expect(page).to have_content "Account has already been blocked"
    clear_database
  end
   it "shows empty list message when no mentors" do
    add_test_user
    login_admin
    click_link "Mentee List"
    click_button "Block"
    click_button "Unblock"
    click_button "Unblock"
    expect(page).to have_content "Account has already been unblocked"
    clear_database
  end
       
  it "allows editing of a valid mentee" do
    add_test_mentor
    login_mentor
    login_admin
    click_link "Mentor List"
    click_button "Block"
    click_button "Unblock"
    click_button "Unblock"
    expect(page).to have_content "Account has already been unblocked"
    clear_database
  end 

        clear_database
end