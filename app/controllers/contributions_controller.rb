class ContributionsController < ApplicationController
  # GET /contributions
  # GET /contributions.json
 
  def new
    @contribution = Contribution.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @contribution }
    end
  end

  def create
    @contribution = Contribution.new(params[:contribution])

    respond_to do |format|
      if @contribution.save
        format.html { redirect_to @contribution, notice: 'Contribution was successfully created.' }
        format.json { render json: @contribution, status: :created, location: @contribution }
      else
        format.html { render action: "new" }
        format.json { render json: @contribution.errors, status: :unprocessable_entity }
      end
    end
  end

end
