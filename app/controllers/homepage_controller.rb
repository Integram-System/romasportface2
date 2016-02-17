class HomepageController < ApplicationController
  def index
    @post1 = Blog.find(1)
    @post2 = Blog.find(2)
  end
end
