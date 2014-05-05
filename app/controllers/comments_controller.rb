class CommentsController < ApplicationController
   before_filter :current_user, only: [:create, :new, :edit, :update, :destroy]
   before_filter :check_comment_owner, only: [:edit, :update, :destroy]

private
  def comment_params
    params.require(:comment).permit(:description)
  end
end
