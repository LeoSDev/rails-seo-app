class PagesController < ApplicationController
  def home
     @keyword = Keyword.new
    
  end
end
