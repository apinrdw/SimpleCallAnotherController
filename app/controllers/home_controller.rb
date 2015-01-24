class HomeController < ApplicationController
  def index
    the_params = {post: {title: 'Post Title', body: 'Post Body 2'}}
    controller = PostsController.new
    controller.params = the_params
    controller.request = ActionDispatch::Request.new(request.env)
    controller.response = ActionDispatch::Response.new
    controller.create
    redirect_to controller.response.location
  end
end
