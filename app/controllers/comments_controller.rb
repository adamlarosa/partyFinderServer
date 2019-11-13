class CommentsController < ApplicationController


    def index
        comments = Comment.all
        render json: comments
    end

    def show
        comment = Comment.find(params[:id])
        render json: comment
    end

    def create
        comment = Comment.new(comment_params)
        comment.save ? (render json: comment) : ({message: "Invalid Comment"})
    end

    def destroy
        comment = Comment.find(params[:id])
        comment.destroy
        render json: {message: "COMMENT DESTROYED!!!!!!!!!!!!!!!!!!"}
    end


    private

    def comment_params
        params.require(:comment).permit(:body, :likes)
    end
end
