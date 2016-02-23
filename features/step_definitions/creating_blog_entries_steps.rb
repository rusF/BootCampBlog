
Given(/^I am logged in as a blogger$/) do
  goto_blog
  log_in
end


When(/^I publish a new blog post$/) do
  fill_blog_post('Default Blog Text')
  submit_blog_post
end


Then(/^I am notified that the blog post was successfully added$/) do
  response = read_submit_response
  expect(response).to include 'Blog Posted!'
end

Then(/^the newly added blog post is at the top of the recent posts list$/) do
	new_post = get_newest_post
	expect(new_post).to include 'Default Blog Text'
end

