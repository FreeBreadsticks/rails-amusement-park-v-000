class AttractionsController < ApplicationController
  def new
    @attraction = Attraction.new
  end

  def create
    # binding.pry
    @attraction = Attraction.new(attraction_params)
    if @attraction.save
      redirect_to attractions_path
    else
      render :new
    end

  end

  def update
    @attraction = Attraction.find(params[:id])
  end

  def destroy
  end

  def index
    @attractions = Attraction.all
  end

  def show
    @attraction = Attraction.find(params[:id])
  end

  private

  def attraction_params

  end
end
