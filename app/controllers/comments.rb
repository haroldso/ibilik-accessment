helpers PropertiesHelper

post "/properties/:id/comment" do
	@property = current_property
	@comment = current_user.comments.new(params[:comments])
	if @comment.save
			Comment.find(@comment.id).update(property_id: @property.id)
		redirect to "/properties/#{@property.id}"
	else 
		@message = "comment failed"
		erb :"session/home"
	end
end