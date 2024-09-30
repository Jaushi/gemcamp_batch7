class WelcomeController < ApplicationController
  def index
    @posts = Post.all
  end

  def about_us; end

  def contact; end
end