class CommentsController < ApplicationController
   before_filter :current_user, only: [:create, :new, :edit, :update, :destroy]
   before_filter :check_comment_owner, only: [:edit, :update, :destroy]

   def new
   end

   def create
   end

   def show
   end

   def edit
   end

   def update
   end

   def destroy
   end



private
  def comment_params
    params.require(:comment).permit(:description)
  end
end
