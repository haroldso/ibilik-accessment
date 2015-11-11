helpers PropertiesHelper

get "/new" do
	erb :"properties/new"
end

post "/new" do
	@property = current_user.properties.new(params[:property])
	if @property.save
		Property.find(@property.id).update(contact: current_user.contact)
		redirect to "/properties/#{@property.id}"
	else
		@message = "property not created"
		erb :"properties/new"
	end
end

get "/properties/:id" do
	@property = current_property
	erb :"properties/show"
end

get "/properties/:id/edit" do
	@property = current_property
	erb :"properties/edit"
end

put "/properties/:id" do
	@property = current_property
	@user = current_user
	if @property.update(params[:property])
		redirect to "/properties/#{@property.id}"
	else
		@message = "property not updated"
		erb :"session/home"
	end
end

delete "/properties/:id" do
	@property = current_property
	if current_property.destroy
		redirect to "/home"
	else
		@message = "property cannot be delete"
		erb :"properties/edit"
	end
end