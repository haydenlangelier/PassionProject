get '/users/:user_id/friendships' do 

  @user = User.find(params[:user_id])

  @friendships = @user.friendships

  erb :'friendships/index'

end

get '/users/:user_id/friendships/new' do 

  @user = User.find(params[:user_id])

  erb :'friendships/new'

end

post '/users/:user_id/friendships' do 

  @user = User.find(params[:user_id])

  @friend=User.find_by(name:params[:name])

 

  if @friend
      @friendship = @user.friends<<@friend if !@user.friends.include?(@friend)
    redirect "/users/#{@user.id}/friendships"
  else
    erb :'friendships/new' #show new friendships view again(potentially displaying errors)
  end

end

get '/users/:user_id/friendships/:id' do 

  @user = User.find(params[:user_id])

  @friendship = @user.friendships.find(params[:id])

  erb :'friendships/show'

end

delete '/users/:user_id/friendships/:id' do 

  @user = User.find(params[:user_id])

  @friendship = @user.friends.find(params[:id])

  @user.friends.destroy(@friendship)

  redirect "/users/#{@user.id}/friendships"

end