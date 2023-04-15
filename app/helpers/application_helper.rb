module ApplicationHelper
  def login_helper style
    if current_user.is_a?(GuestUser)
      (link_to 'Register', new_user_registration_path, class: style) + " ".html_safe +
      (link_to 'Login', new_user_session_path, class: style)
    else
      button_to 'Logout', destroy_user_session_path, method: :delete, class: style
     end
  end

  def source_helper
     if session[:source]
      greeting = "Thanks for visiting me from  #{session[:source]}"
      content_tag(:p, greeting, class: "source_greeting")
     end
  end

  def copyright_generator
     CakesViewTool::Renderer.copyright "Mohamed Cake", "All rights reserved"
  end
end
