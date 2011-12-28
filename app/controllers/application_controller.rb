class ApplicationController < ActionController::Base
  protect_from_forgery
  
#  helper_method
  
  def render(*args)
    options = args.extract_options!
    options[:layout] = 'avec'
    options[:template] = "/themes/avec/#{params[:controller]}/#{params[:action]}"
    raise("hi") if options.keys.include?(:partial)
 		@restaurant = Restaurant.first
		@events = @restaurant.events.page nil
		@announcements = @restaurant.announcements
		@top_navs = @restaurant.top_navs.order("'order'")
		@categories = Category.where(:parent_category_id => nil)	
    super(*(args << options))
  end
  
  def current_restaurant
   	
  end
  
  def logged_in?
    session[:user_id].present?
  end
  
  def current_user
    if logged_in? 
      User.find(session[:user_id])
    else
      nil
    end
  end
  
  def edit_mode?
     
  end
  
end
