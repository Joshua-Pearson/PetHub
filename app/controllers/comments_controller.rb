class CommentsController < ApplicationController
  load_and_authorize_resource
   # before_filter :current_user, only: [:create, :new, :edit, :update, :destroy]
   # before_filter :check_comment_owner, only: [:edit, :update, :destroy]

   def new
    @comment = Comment.new
   end

   def show
    
   end

   def create
    @comment = current_user.comments.build(params[:comment])
    # comment.user = current_user
      if comment.save
        flash[:notice] = "Successfully made comment."
        redirect_to message_url(comment.message.id)
      else
        render :action => 'new'
      end
   end

   def edit
    @comment = Comment.find(params[:id])
   end

   def update
    comment = Comment.find(params[:id])
      if comment.update_attributes comment_params
        flash[:notice] = "Successfully updated comment."
        redirect_to message_url(comment.message.id)
      else
        render :action => 'edit'
      end
   end

   def destroy
    comment = Comment.find(params[:id])
    comment.delete
    flash[:notice] = "Successfully deleted comment."
    redirect_to message_url(comment.message.id)
   end



private
  def comment_params
    params.require(:comment).permit(:description)
  end
end
