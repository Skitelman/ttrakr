class HomeController < ApplicationController
  skip_before_action :authenticate!

  def index
    session[:message] = "You visited Home"
  end
end
