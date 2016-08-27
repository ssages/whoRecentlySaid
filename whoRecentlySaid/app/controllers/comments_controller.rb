class CommentsController < ApplicationController
  def create
    @conversation = Conversation.find(params[:conversation_id])
    @comment = @conversation.comments.create(comment_params)
    redirect_to conversation_path(@conversation)
  end

  def destroy
    @conversation = Conversation.find(params[:conversation_id])
    @comment = @conversation.comments.find(params[:id])
    @comment.destroy

    redirect_to conversation_path(@conversation)
  end
  
  private
  def comment_params
    params.require(:comment).permit(:profile, :body)
  end
end
