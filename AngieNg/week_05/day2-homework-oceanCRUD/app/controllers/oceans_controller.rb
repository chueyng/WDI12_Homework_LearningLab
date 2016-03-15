class OceansController < ApplicationController
  def index
    @oceans = Ocean.all
  end

  def new

  end

  def show
    @ocean = Ocean.find params[:id]
  end

  def edit
    @ocean = Ocean.find params[:id]
  end
  
  def create
    ocean = Ocean.create ocean_params
    redirect_to oceans_path
  end

  def update
    ocean = Ocean.find params[:id]
    ocean.update ocean_params
    redirect_to "/oceans/#{ocean.id}"
  end  

  def delete
    ocean = Ocean.find params[:id]
    ocean.destroy
    redirect_to oceans_path  
  end

  private
  def ocean_params
    params.require(:ocean).permit(:name, :location, :area, :avg_depth, :image)
  end


end
