get '/users/:user_id/interests' do 

  @user = User.find(params[:user_id])

  @interests = @user.interests

  erb :'interests/index'

end

get '/users/:user_id/interests/new' do 

  @user = User.find(params[:user_id])

  erb :'interests/new'

end

post '/users/:user_id/interests' do 

  @user = User.find(params[:user_id])

  @interest = @user.interests.new(params[:interest])

  if @interest.save
    redirect "/users/#{@user.id}/interests"
  else
    erb :'interests/new' #show new interests view again(potentially displaying errors)
  end

end

delete '/users/:user_id/interests/:id' do 

  @user = User.find(params[:user_id])

  @interest = @user.interests.find(params[:id])

  @interest.destroy

  redirect "/users/#{@user.id}/interests"

end