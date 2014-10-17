module Forem
  class PostAssetsController < Forem::ApplicationController


    def add_image
      @post = Post.find(params[:post_id])
      @asset = @post.post_assets.build(post_assets_params)
      if @asset.save
        redirect_to :back
      else
        redirect_to :back
      end
    end


    def create
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private
    def post_assets_params
      params.permit(:asset)
    end


  end
end
