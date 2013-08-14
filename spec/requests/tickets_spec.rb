require 'spec_helper'

	describe "Tickets" do
		subject { page }

  	describe "Home page" do
    	before { visit tickets_path }

    	it { should have_content('Tickets') }
    	it { should have_title(full_title('')) }
    	it { should_not have_title('| Home') }
    end

  	describe "New ticket" do
  		before { visit tickets_new_path }

  		it { should have_content('New Ticket') }
  		it { should have_title(full_title('New Ticket')) }
  	end
	end
