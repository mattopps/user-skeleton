# get '/posts' do
#   @posts = Post.all
#   erb :'/posts/index'
# end

# get '/posts/new' do
#    erb :'/posts/_new'
# end

# post '/posts' do
#  @post = Post.new(params[:post].merge(user_id: current_user.id))
#   if @post.save
#     redirect "/posts/#{@post.id}"
#   else
#     @errors = @post.errors.full_messages
#     erb :'/posts/new'
#   end
# end

# get '/posts/:id' do
#    @post = Post.find(params[:id])
#    erb :'/posts/show'
# end

# get '/posts/:id/edit' do
#    @post = Post.find(params[:id])
#    authorize_access(@post)
#     erb :'/posts/edit'
# end

# put '/posts/:id' do
#  @post = Post.find(params[:id])
#   authorize_access(@post)
#   if @post.update(params[:post])
#     redirect "/posts/#{@post.id}"
#   else
#     @errors = @post.errors.full_messages
#     erb :'/posts/edit'
#   end
# end

# delete '/posts/:id' do
#   post = Post.find(params[:id])
#   authorize_access(post)
#   redirect '/posts'
# end


