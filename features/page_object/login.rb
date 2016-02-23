require 'page-object'
require 'watir-webdriver'

class LogIn
  include PageObject

  page_url "http://localhost:8080/BootcampBlog/login/auth"
  text_field(:name, :id =>'username')
  text_field(:password, :id =>'password')
  button(:submit, :id =>'submit')
  
  def fill_in_and_submit
  	self.name ='test'
    self.password ='test'
    self.submit
  end


end