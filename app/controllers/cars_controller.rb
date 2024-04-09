class CarsController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :new]

  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end

  def new
    @car = Car.new
  end

  def create
    @car = current_user.cars.build(car_params)
    if @car.save
      redirect_to car_path(@car)
    else
      render :new
    end
  end


  def edit
    @car = current_user.cars.find(params[:id])
    redirect_to root_path, notice: "Access denied" if @car.nil?
  end





  private

  def car_params
    params.require(:car).permit(:model, :brand, :adress, :photo, :year_of_production, :price_per_day)
  end


end
