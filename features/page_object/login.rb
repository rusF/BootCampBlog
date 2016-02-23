require 'page-object'
require 'watir-webdriver'

class LogIn
  include PageObject

  page_url "localhost:8080\Bootcampblog"
  text_field(:name, :id =>'user_name')
  text_field(:password, :id =>'password')
  button(:submit, :name =>'submit')
  
  def fill_in_and_submit
  	self.name ='Test'
    self.language ='Test'
    self.submit
  end


end