get '/login' do 
	erb :'session/login'
end

post '/login' do
	@user = User.authenticate(params[:email], params[:password])
	if @user
		session[:user_id] = @user.id
		redirect to "/home"
		
	else
		@message = "Email or password is invalid"
		erb :"session/login"
		
	end
end

get "/home" do
	@user = current_user
	@property2 = Property.all
		erb :"session/home"
end

post '/logout' do
	session[:user_id] = nil
	redirect '/'
end