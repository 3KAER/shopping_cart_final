module ApplicationHelper
   
    def current_order
        if !session[:user_id].nil?
            Order.find(session[:user_id])
        else
            Order.new
        end
    end 
end
