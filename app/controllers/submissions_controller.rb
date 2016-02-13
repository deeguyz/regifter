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
      render 'new'
    end
  end
  
  private
    def submission_params
      params.require(:submission).permit(:link, :description, :price, :avatar)
    end
    
end
