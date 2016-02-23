require 'watir-webdriver'
require 'page-object'

include PageObject::PageFactory

def goto_blog
  visit_page LogIn
end

def log_in
	on_page(LogIn).fill_in_and_submit
end

def fill_blog_post(entry)
	fill_in_blog_box(entry)
end

def submit_blog_post
	submit_blog
end

def read_sumbit_response
	get_response_field
end

def get_newest_post
	navigate_to_own_blog
	get_newest_post
end