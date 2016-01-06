class RandomShirtController < ApplicationController
  def random
    sites = ["http://shirt.woot.com/", "http://www.riptapparel.com/", "http://www.teefury.com/"]
    redirect_to sites.sample
  end
end
