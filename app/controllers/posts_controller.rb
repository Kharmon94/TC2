class PostsController < InheritedResources::Base

	# def index
	# 	@posts = Post.with_attached_images.find(params[:id])
	# end

	# def index
	# 	@posts = Post.with_attached_images.find(params[:id])
	# end



  private

    def post_params
      params.require(:post).permit(:title, :description, :subtitle, :headline_picture, images: [])
    end
end

