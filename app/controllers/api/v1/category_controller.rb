class Api::V1::CategoryController < Api::V1::BaseController
  respond_to :json

  def create
    category = Category.create!(category_params)
    respond_with category
  end

  def update
    category = Category.find(params[:id])
    category.update(category_params)
  end

  def destroy
    Category.find(params[:id]).destroy
  end

  private

    def category_params
      params.require(:category).permit(:name)
    end

end
