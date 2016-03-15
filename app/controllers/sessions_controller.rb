get '/login' do
  erb :'/login'
end

post '/login' do
  @user = User.find_by(username: params[:username])
  if @user && @user.authenticate(params[:password])
    session[:user_id] = @user.id
    redirect '/'
  else
    @error = "whooops. try again"
    erb :'login'
  end
end

delete '/logout' do
  session.clear
  redirect '/login'
end
