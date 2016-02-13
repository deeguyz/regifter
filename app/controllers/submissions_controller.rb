class SubmissionsController < ApplicationController
 
  def index
    @submissions = Submission.all 
  end
 
  def new
    @submission = Submission.new
  end
  
  def create
    @submission = Submission.new(submission_params)
    if @submission.save
      redirect_to '/submissions'
    else
      render '/submissions/new'
    end
  end
  
  def edit
    @submission = Submission.find(params[:id])
  end
  
  def show
    @submission = Submission.find(params[:id])
  end
  
  # Updates the database with the edits
  def update
    @submission = Submission.find(params[:id])
    
    if @submission.update(submission_param)
      redirect_to action: 'show', id: @submission.id
    else
      render '/submissions/edit'
    end
  end
  
  # Deletes a Submission object
  def delete
    Submission.find(params[:id]).destroy
    redirect_to '/submissions'
  end
  
  private
    def submission_params
      params.require(:submission).permit(:title, :link, :description, :price)
    end
    
    def submission_param
      params.require(:submission).permit(:title, :link, :description, :price)
    end
    
end
