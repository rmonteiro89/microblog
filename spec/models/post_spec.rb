require 'spec_helper'

describe Post do
  before { @post = Post.new(title: "Example Post", message: "Example Post") }
  
  subject { @post }
  
  it { should respond_to(:title) }
  it { should respond_to(:message) }
  
  it { should be_valid }
  
  describe "when title is not present" do
    before { @post.title = " " }
	it { should_not be_valid }
  end
  
  describe "when message is not present" do
    before { @post.message = " " }
	it { should_not be_valid }
  end
  
#  it "should access the post page using the slugify format on the URL" do
#      string = "\posts\" + @post.title.parameterize
#	  visit string
#	  str_title = "Microblog"+ " | " + @post.title
#	  expect(page).to have_title(str_title)
#  end
end
