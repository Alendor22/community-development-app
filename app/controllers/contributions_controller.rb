class ContributionsController < ApplicationController
  before_action :set_contribution, only: [:show]

  def Index
    contributions = Contribution.all
    render json: contributions
  end

  def show
    render json: @contribution
  end

  def Create
    contribution = Contribution.new(contribution_params)
      if contribution.save
        render json: contribution, status: :created
      else
        render json: contribution.errors, status: :unprocessable_entity
      end
  end

private
  def set_contribution
    @contribution = Contribution.find(params[:id])  
  end

  def contribution_params
    params.require(:contribution).permit(:contributor, :project, :amount)
  end

end
