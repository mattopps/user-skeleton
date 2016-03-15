helpers do
  def logged_in?
    !!current_user
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def owned?(object)
    logged_in? && current_user.id == object.user_id
  end

   def authorize_access(object)
    halt 403, "you are not authorized to perform this operation" unless owned?(object)
  end

  def proved_self
    logged_in? && session[:user_id] == @user.id
  end

  def prevent_tampering
    halt 403, "you are not authorized to perform this operation" unless proved_self
  end
end
