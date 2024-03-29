class PropertiesController < ApplicationController
def index
    if params[:search].present?
      @properties = Property.near(params[:search], 50, :order => :distance)
    else
      @properties = Property.all
    end
  end

  def show
    @property = Property.find(params[:id])
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.new(params[:property])
    if @property.save
      redirect_to @property, :notice => "Successfully created property."
    else
      render :action => 'new'
    end
  end

  def edit
    @property = Property.find(params[:id])
  end

  def update
    @property = Property.find(params[:id])
    if @property.update_attributes(params[:property])
      redirect_to @property, :notice  => "Successfully updated property."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @property = Property.find(params[:id])
    @property.destroy
    redirect_to properties_url, :notice => "Successfully destroyed property."
  end


private
  def property_params
    params.require(:property).permit(:title, :address, :city, :state, :country, :postal_code, :min_stay, :num_beds, :max_guests, :price, :user_id)
  end

end

