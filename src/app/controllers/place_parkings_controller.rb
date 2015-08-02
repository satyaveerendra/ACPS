class PlaceParkingsController < ApplicationController
  before_action :set_place_parking, only: [:show, :edit, :update, :destroy]

  # GET /place_parkings
  # GET /place_parkings.json
  def index
    @place_parkings = PlaceParking.all
  end

  # GET /place_parkings/1
  # GET /place_parkings/1.json
  def show
  end

  # GET /place_parkings/new
  def new
    @place_parking = PlaceParking.new
  end

  # GET /place_parkings/1/edit
  def edit
  end

  # POST /place_parkings
  # POST /place_parkings.json
  def create
    @place_parking = PlaceParking.new(place_parking_params)

    respond_to do |format|
      if @place_parking.save
        format.html { redirect_to @place_parking, notice: 'Place parking was successfully created.' }
        format.json { render :show, status: :created, location: @place_parking }
      else
        format.html { render :new }
        format.json { render json: @place_parking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /place_parkings/1
  # PATCH/PUT /place_parkings/1.json
  def update
    respond_to do |format|
      if @place_parking.update(place_parking_params)
        format.html { redirect_to @place_parking, notice: 'Place parking was successfully updated.' }
        format.json { render :show, status: :ok, location: @place_parking }
      else
        format.html { render :edit }
        format.json { render json: @place_parking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /place_parkings/1
  # DELETE /place_parkings/1.json
  def destroy
    @place_parking.destroy
    respond_to do |format|
      format.html { redirect_to place_parkings_url, notice: 'Place parking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_place_parking
      @place_parking = PlaceParking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def place_parking_params
      params.require(:place_parking).permit(:slot_number, :registration_number, :color)
    end
end
