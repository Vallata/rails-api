class Api::V1::MissionsController < Api::V1::BaseController

  def index
    @missions = Mission.all
  end

  def create
    @listing = Listing.find(params[:listing_id])
    @mission = Mission.new(mission_params)
    @mission.listing_id = @listing
        if @mission.save
      render :show, status: :created
    else
      render_error
    end
  end

  private

  def mission_params
    params.require(:mission).permit(:listing_id, :start_date, :end_date)
  end

end
