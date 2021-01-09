class HomeController < ApplicationController
  def index
    @now = Time.current.utc
  end
end
