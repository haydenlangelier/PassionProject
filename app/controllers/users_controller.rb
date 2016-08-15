# not sure if i should have a index page for users... probably not 

get '/users/new' do
  erb :'/users/new'
end

post '/users/new' do
  @user = User.new(params)
  if @user.save
    login(@user)

    redirect "/users/#{@user.id}"
  else
    @error = "Sorry, you entered in some wrong information - please try again."

    erb :'/users/new'
  end
end

get '/users/:id' do
  if session[:user_id]
    @user = User.find(session[:user_id])
  end

  erb :'/users/show'
end

get '/users/:id/edit' do

  #im thinking about including a href in the show page that links to this
  @user = User.find(params[:id]) 

  erb :'users/edit' #show edit user view

end

put '/users/:id' do

  
  @user = User.find(params[:id]) 

  @user.assign_attributes(params[:user]) #assign new attributes

  if @user.save 
    redirect "/users/#{@user.id}" 
  else
    @error = "Sorry, you entered in some wrong information - please try again."

    erb :'users/edit' #show edit user view again(potentially displaying errors)
  end

end

# this is an interesting way of deleting a user... may need to change/split up into a delete request
get '/users/delete' do
  User.find(session[:user_id]).destroy
  session[:user_id] = nil

  redirect '/'
end
