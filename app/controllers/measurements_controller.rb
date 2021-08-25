class MeasurementsController < ApplicationController
  # api endpoints
  def index
    @measurements = Measurement.all
    render json: @measurements
  end

  def show
    @measurement = Measurement.find(params[:id])
    render json: @measurement, include: [:goal]
  end

  def create
    @measurement = Measurement.new(measurement_params)
    if @measurement.save
      render json: @measurement
    else
      render json: @measurement.errors, status: :unprocessable_entity
    end
  end

  def update
    @measurement = Measurement.find(params[:id])
    if @measurement.update(measurement_params)
      render json: @measurement
    else
      render json: @measurement.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @measurement = Measurement.find(params[:id])
    @measurement.destroy
    head :no_content
  end
  # private methods

  private

  def measurement_params
    params.permit(:unit, :user_id, :goal_id)
  end
end
