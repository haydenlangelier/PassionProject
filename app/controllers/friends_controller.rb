get '/users/:user_id/friends' do 

  @user = User.find(params[:user_id])

  @friends = @user.friends

  erb :'friends/index'

end

get '/users/:user_id/friends/new' do 

  @user = User.find(params[:user_id])

  erb :'friends/new'

end

post '/users/:user_id/friends' do 

  @user = User.find(params[:user_id])


  @friend = @user.friends.new(params[:user_id])

  if @friend=User.find(name: params[:name])
    redirect "/users/#{@user.id}/friends"
  else
    erb :'friends/new' #show new friends view again(potentially displaying errors)
  end

end

get '/users/:user_id/friends/:id' do 

  @user = User.find(params[:id])


  erb :'users/show'

end

delete '/users/:user_id/friends/:id' do 

  @user = User.find(params[:user_id])

  @friend = @user.friends.find(params[:id])

  @friend.destroy

  redirect "/users/#{@user.id}/friends"

end