class ContributionsController < ApplicationController
  # GET /contributions
  # GET /contributions.json
 
  def new
    session[:contribution_params] ||= {}
    @contribution = Contribution.new(session[:contribution_params])
    @contribution.current_step = session[:contribution_step]
  end
def check
end




  def create
    session[:contribution_params].deep_merge!(params[:contribution]) if params[:contribution]
    @contribution = Contribution.new(session[:contribution_params])
    @contribution.current_step = session[:contribution_step]
      if params[:back_button]
        @contribution.previous_step
      elsif @contribution.last_step?
      @contribution.save if @contribution.all_valid?
            else
        @contribution.next_step
      end
      session[:contribution_step] = @contribution.current_step
    if @contribution.new_record?
      render 'new'
    else
      session[:order_step] = session[:order_params] = nil
      flash[:notice]= "Thank You for contributing"
      redirect_to root_path
    end
  end
end
