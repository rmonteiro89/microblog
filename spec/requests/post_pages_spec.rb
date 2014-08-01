require 'spec_helper'

describe "Post Pages" do
  
  describe "Index" do
	
	it "should have the content 'All Posts'" do
	  visit '/posts/'
	  expect(page).to have_content('All Posts')
	end
	
	it "should have the title 'Timeline'" do
	  visit '/posts/'
	  expect(page).to have_title('Microblog | Timeline')
	end
  end
  
  describe "New" do
	it "should have the content 'New Post'" do
	  visit '/new/'
	  expect(page).to have_content('New Post')
	end
	
	it "should have the title 'New Post'" do
	  visit '/new/'
	  expect(page).to have_title('Microblog | New Post')
	end
  end
end
