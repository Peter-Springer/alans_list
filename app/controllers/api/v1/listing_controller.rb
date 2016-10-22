class Api::V1::ListingController < Api::V1::BaseController
  respond_to :json

  def create
    listing = Listing.create!(listing_params)
    respond_with listing
  end

  def update
    listing = Listing.find(params[:user_id])
    listing.update(listing_params)
  end

  def destroy
    Listing.find(params[:user_id]).destroy
  end

  def index
    respond_with Listing.all
  end

  private

    def listing_params
      params.require(:listing).permit(:title,
                                   :price,
                                   :description,
                                   :user_id,
                                   :category_id
                                   )
    end

end
