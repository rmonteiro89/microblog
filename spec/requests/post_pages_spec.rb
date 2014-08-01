require 'spec_helper'

describe "Post Pages" do
  
    subject { page }
	
	describe "Index page" do
	  before { visit root_path }
	
	  it { should have_content('All Posts') }
	  it { should have_title('Microblog | Timeline') }
	end
  
	describe "New" do
      before { visit new_path }
	  it { should have_content('New Post') }
	  it { should have_title('Microblog | New Post') }
	  
	  it "should have the link to go back" do
	    visit new_path
		click_link "Back"
		expect(page).to have_title('Microblog | Timeline')
	  end
	end
	
	it "should have the link to the New Post on the layout" do
	  visit root_path
	  click_link "New Post"
	  expect(page).to have_title('Microblog | New Post')
	end
end
