get '/users/new' do
  erb :'/users/new'
end

post '/users' do
  @user = User.new(params[:user])
  if @user.save
    session[:user_id] = @user.id
    redirect '/'
  else
    @errors = @user.errors.full_messages
    erb :'/users/new'
  end
end

get '/users/:id' do
   @user = User.find(params[:id])
    erb :'/users/show'
end

get '/users/:id/edit' do
  @user = User.find(params[:id])
  prevent_tampering
  erb :'/users/edit'
end

put '/users/:id' do
   @user = User.find(params[:id])
   prevent_tampering
   if @user.update(params[:user])
     redirect '/'
   else
      @errors = @user.errors.full_messages
    erb :'/users/edit'
  end
end

delete '/users/:id' do
  @user = User.find(params[:id])
  prevent_tampering
  @user.destroy
  redirect '/'
end
