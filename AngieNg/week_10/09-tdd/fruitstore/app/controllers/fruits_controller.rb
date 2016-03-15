class FruitsController < ApplicationController
  def index
    @fruits = Fruit.all.reverse

    respond_to do |format|
      format.html   #Fallback to the default action of rendering the index.html.erb
      format.json {render :json => @fruits}
    end
  end

  def new
    @fruit = Fruit.new
  end

  def create
    @fruit = Fruit.new(fruit_params)

    respond_to do |format|
      if @fruit.save
        format.html { redirect_to @fruit, notice: 'Fruit was successfully created.'}
      else
        format.html { render :new }
        format.json { render json: @fruit.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def fruit_params
      params.require(:fruit).permit(:name, :type, :shelf_id)
    end
end
