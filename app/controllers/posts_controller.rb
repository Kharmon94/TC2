class PostsController < InheritedResources::Base

	# def index
	# 	@posts = Post.with_attached_images.find(params[:id])
	# end

	# def index
	# 	@posts = Post.with_attached_images.find(params[:id])
	# end

  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to post_url, notice: 'Business was successfully deleted.' }
      format.json { head :no_content }
    end
  end


  private

    def post_params
      params.require(:post).permit(:title, :description, :subtitle, :headline_picture, images: [])
    end
end

