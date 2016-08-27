class ConversationsController < ApplicationController

  def index
    @conversations = Conversation.all
  end

  def show
    @conversation = Conversation.find(params[:id])
  end

  def new
    @conversation = Conversation.new
  end

  def edit
    @conversation = Conversation.find(params[:id])
  end

  def create
    @conversation = Conversation.new(conversation_params)

    if @conversation.save
      redirect_to @conversation
    else
      render 'new'
    end
  end

  def update
    @conversation = Conversation.find(params[:id])

    if @conversation.update(conversation_params)
      redirect_to @conversation
    else
      render 'edit'
    end
  end

  def destroy
    @conversation = Article.find(params[:id])
    @conversation.destroy

    redirect_to conversations_path
  end

  private
  def conversation_params
    params.require(:conversation).permit(:title, :description)
  end
end
