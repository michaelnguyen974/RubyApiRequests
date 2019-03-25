require 'rubygems'
require 'httparty'

class EdutechionalRestAPI

  include HTTParty
  base_uri 'http://edutechional-resty.herokuapp.com/'

  def posts
    EdutechionalRestAPI.get('/posts.json')
  end

end

instanceApi = EdutechionalRestAPI.new
puts instanceApi.posts #Uses the posts method in class
# instanceApi.posts.each do |post|
#   p "Title: #{post['title']}"
# end