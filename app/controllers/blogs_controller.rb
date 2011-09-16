class BlogsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @blogs = current_user.blogs
  end
end