class ItemsController < ApplicationController
  before_action :set_item, except: [:index, :new, :create]

  def index
  end

  def new
    @item = Item.new
    @item.images.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def update
    if @item.update(item_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def edit
  end

  def destroy
    @item.destroy
    redirect_to root_path
  end

  def purchase_confirmation
    
  end

  private
  def item_params
    params.require(:item).permit(:name, :price, :description, :category, :condition, :shopping_charges, :shopping_area, :shopping_date, images_attributes:  [:src, :_destroy, :id])
  end

  def set_item
    @item = Item.find(params[:id])
  end
  
end
