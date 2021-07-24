class PropertyCharacteristicsController < ApplicationController
  before_action :set_property_characteristic, only: %i[ show edit update destroy ]

  # GET /property_characteristics or /property_characteristics.json
  def index
    @property_characteristics = PropertyCharacteristic.all
  end

  # GET /property_characteristics/1 or /property_characteristics/1.json
  def show
  end

  # GET /property_characteristics/new
  def new
    @property_characteristic = PropertyCharacteristic.new
  end

  # GET /property_characteristics/1/edit
  def edit
  end

  # POST /property_characteristics or /property_characteristics.json
  def create
    @property_characteristic = PropertyCharacteristic.new(property_characteristic_params)

    respond_to do |format|
      if @property_characteristic.save
        format.html { redirect_to @property_characteristic, notice: "Property characteristic was successfully created." }
        format.json { render :show, status: :created, location: @property_characteristic }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @property_characteristic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /property_characteristics/1 or /property_characteristics/1.json
  def update
    respond_to do |format|
      if @property_characteristic.update(property_characteristic_params)
        format.html { redirect_to @property_characteristic, notice: "Property characteristic was successfully updated." }
        format.json { render :show, status: :ok, location: @property_characteristic }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @property_characteristic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /property_characteristics/1 or /property_characteristics/1.json
  def destroy
    @property_characteristic.destroy
    respond_to do |format|
      format.html { redirect_to property_characteristics_url, notice: "Property characteristic was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_characteristic
      @property_characteristic = PropertyCharacteristic.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def property_characteristic_params
      params.require(:property_characteristic).permit(:property_id, :rooms, :bathrooms)
    end
end
