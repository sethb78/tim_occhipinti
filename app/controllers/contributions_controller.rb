class ContributionsController < ApplicationController
  # GET /contributions
  # GET /contributions.json

  def new
    session[:contribution_params] ||= {}
    @contribution = Contribution.new(session[:contribution_params])
    @contribution.current_step = session[:contribution_step]
  end



 def create
    session[:contribution_params].deep_merge!(params[:contribution]) if params[:contribution]
    @contribution = Contribution.new(session[:contribution_params])
    @contribution.current_step = session[:contribution_step]
    if @contribution.valid?
      if params[:back_button]
        @contribution.previous_step
      elsif @contribution.last_step?
      @contribution.save if @contribution.all_valid?
            else
        @contribution.next_step
      end
      session[:contribution_step] = @contribution.current_step
    end
    if @contribution.new_record?
      render 'new'
    else
      session[:contribution_step] = session[:contribution_params] = nil
      redirect_to 'https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=M7WJB2AGSQZSE'
        Contributor.contributor_information(@contribution).deliver
    end
  end


end