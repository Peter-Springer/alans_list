class Api::V1::ListingController < Api::V1::BaseController
  respond_to :json

  def create
    listing = Listing.create!(listing_params)
    respond_with(listing, status: 201, location: api_v1_listing_path(listing))
  end

  def update
    listing = Listing.find(params[:id])
    listing.update(listing_params)
  end

  def destroy
    Listing.find(params[:id]).destroy
  end

  def index
    respond_with Listing.all
  end
# index is needed to use url/route
  def show
     listing = Listing.find(params[:id])
     respond_with(listing, status: 201, location: api_v1_listing_path(listing))
  end

  private

    def listing_params
      params.require(:listing).permit(:title,
                                      :price,
                                      :description,
                                      :category_id,
                                      :image_url,
                                      :token
                                      )
    end

end
