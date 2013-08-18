require 'spec_helper'

describe "UserPages" do
  
  subject { page }

  describe "signup page" do
  	before {visit signup_path}
  	
  	let(:submit) { "Create Account" }

  	describe "with invalid information" do
  		it "should not create a user" do
  			expect { click_button submit }.not_to change(User, :count)
  		end
  	end

  	describe "with valid information" do
  		before do
  			fill_in "Email",						with: "test@test.com"
  			fill_in "Password", 				with: "password"
  			fill_in "Confirm Password", 	with: "password"
  		end

  		it "should create a user" do
  			expect { click_button submit }.to change(User, :count).by(1)
  		end
  	end

  	it { should have_content('Sign Up') }
  	it { should have_title(full_title('Sign Up')) }
  end

  describe "profile pages" do
  let(:user) { FactoryGirl.create(:user) }
	before { visit user_path(user) }

	it { should have_content(user.email) }
	it { should have_title(user.email) }
	end
end