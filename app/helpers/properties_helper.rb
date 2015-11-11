module PropertiesHelper
	
	def current_user
		if session[:user_id]
			User.find(session[:user_id])
			else 	
				nil
		end
	end

	def current_property
		Property.find_by(id: params[:id])
	end

end