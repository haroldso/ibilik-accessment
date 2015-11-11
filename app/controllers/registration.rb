get "/signup" do 
	erb :"registration/signup"
end

post "/signup" do
	@user = User.new(params[:user])
	if @user.save
		@message = "account created, pls login"
		redirect to '/login'
	else 
		@message = "account not created, pls retry"
		erb :"registration/signup"
	end
end
