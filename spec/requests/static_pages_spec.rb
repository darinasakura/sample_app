require 'spec_helper'

# describe "StaticPages" do
#   describe "GET /static_pages" do
#     it "works! (now write some real specs)" do
#       # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#       get static_pages_index_path
#       response.status.should be(200)
#     end
#   end
# end
describe "Static pages" do
	subject {page}
	let (:base_title) {"Ruby on Rails Tutorial Sample App | "}

	describe "Home page" do
		before {visit root_path} # declare path
		
		it {should have_selector('h1', text: 'Sample App')}
		it {should have_selector('title', text: full_title(''))} #full_title is a method created in spec/support/utilities.rb
		it {should_not have_selector('title', text: full_title('Home'))}

	end
	# ------------- Help Page -------------
	describe "Help page" do
		before {visit help_path}

		it {should have_selector('h1', text: 'Help')}
		it {should have_selector('title', text: full_title('Help'))} 
		
	end
	# ------------- About Page -------------
	describe "About page" do
		before {visit about_path}
		
		it {should have_selector('h1', text: 'About Us')}
		it {should have_selector('title', text: full_title('About Us'))} 
		
	end
	# ------------- Contact Page -------------
	describe "Contact page" do
		before {visit contact_path}
		
		it {should have_selector('h1', text: 'Contact')}
		it {should have_selector('title', text: full_title('Contact'))} 
		
	end

end

