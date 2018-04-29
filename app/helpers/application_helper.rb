module ApplicationHelper

	def login_helper
		if current_user 
			link_to "Logout", destroy_user_session_path, method: :delete 
	 	else 
	 		(link_to "Register", new_user_registration_path) + 
	 		"<br>".html_safe + 
	 		(link_to "Login", new_user_session_path)
		end 
	end

	def source_helper(layout_name)
		if session[:source]
			greeting = "Thank you for visiting from #{session[:source]} and you are in the #{layout_name} layout"
			content_tag(:p, greeting, class: "source-greeting")
		end
	end

end
