class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with :name => ENV["ADMIN_KEY"], :password => ENV["ADMINPW_KEY"]
  
  def show
  end

  
end
