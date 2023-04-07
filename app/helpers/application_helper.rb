module ApplicationHelper
  def login_helper
    if current_user.is_a?(User)
        button_to 'Logout', destroy_user_session_path, method: :delete
    else
        (link_to 'Register', new_user_registration_path) + "<br>".html_safe +
        (link_to 'Login', new_user_session_path)
     end
  end

  def source_helper
     if session[:source]
      greeting = "Thanks for visiting me from  #{session[:source]}"
      content_tag(:p, greeting, class: "source_greeting")
     end
  end
end
