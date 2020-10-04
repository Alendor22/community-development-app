class ContributorsController < ApplicationController

  def index
    contributors = Contributor.all
    render json: contributors
  end

  # GET /listings/1
  def show
    render json: @contributor
  end

  # POST /listings
  def create
    contributor = Contributor.new(contributor_params)
      if contributor.save
        render json: contributor, status: :created
      else
        render json: contributor.errors, status: :unprocessable_entity
      end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contributor
      @contributor = Contributor.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def contributor_params
      params.require(:contributor).permit(:name, :email, :zip)
    end

end
