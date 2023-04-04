module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    super ||
  end

  def guest_user
    OpenStruct.new(name: "Guest User",
                   first_name: "Guest",
                   last_name: "User",
                   email: "guest@example.com")
  end

end
