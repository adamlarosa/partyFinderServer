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
        render json: comment.save ?  comment  : { message: "Invalid Comment" }
    end

    def update
        comment = Comment.find(params[:id])
        comment.update(comment_params)
        render json: comment
    end


    def destroy
        comment = Comment.find(params[:id])
        comment.destroy
        render json: {message: "COMMENT DESTROYED!!!!!!!!!!!!!!!!!!"}
    end


    private

    def comment_params
        params.require(:comment).permit(:body, :likes, :party_id)
    end
end
