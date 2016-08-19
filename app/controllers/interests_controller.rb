get '/interests' do
  @user = current_user
  @interests = Interest.all #define instance variable for view

  erb :'interests/index' #show all interests view (index)

end

get '/interests/new' do
  @user = current_user
  erb :'interests/new' #show new interests view

end

post '/interests' do
  @user = current_user

  #below works with properly formatted params in HTML form
  @interest = Interest.new(params) #create new interest

  if @interest.save #saves new interest or returns false if unsuccessful
    @user.interests<<@interest if !@user.interests.include?(@interest)
    redirect "/users/#{@user.id}" #redirect back to interests index page
  else
    erb :'interests/new' # show new interests view again(potentially displaying errors)
  end

end


delete '/interests/:id' do
  @user = current_user
  #get params from url
  @interest = Interest.find(params)
  @interest.destroy

  # @user.interests.destroy(@interest)

  redirect '/users/#{@user.id}' #redirect back to interests index page

end



