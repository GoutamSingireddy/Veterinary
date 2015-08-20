class CInformationsController < ApplicationController
  before_action :set_c_information, only: [:show, :edit, :update, :destroy]

  # GET /c_informations
  # GET /c_informations.json
  def index
    @c_informations = CInformation.all
  end

  # GET /c_informations/1
  # GET /c_informations/1.json
  def show
  end

  # GET /c_informations/new
  def new
    @c_information = CInformation.new
  end

  # GET /c_informations/1/edit
  def edit
  end

  # POST /c_informations
  # POST /c_informations.json
  def create
    @c_information = CInformation.new(c_information_params)

    respond_to do |format|
      if @c_information.save
        format.html { redirect_to @c_information, notice: 'C information was successfully created.' }
        format.json { render :show, status: :created, location: @c_information }
      else
        format.html { render :new }
        format.json { render json: @c_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /c_informations/1
  # PATCH/PUT /c_informations/1.json
  def update
    respond_to do |format|
      if @c_information.update(c_information_params)
        format.html { redirect_to @c_information, notice: 'C information was successfully updated.' }
        format.json { render :show, status: :ok, location: @c_information }
      else
        format.html { render :edit }
        format.json { render json: @c_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /c_informations/1
  # DELETE /c_informations/1.json
  def destroy
    @c_information.destroy
    respond_to do |format|
      format.html { redirect_to c_informations_url, notice: 'C information was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_c_information
      @c_information = CInformation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def c_information_params
      params.require(:c_information).permit(:name_of_pet, :type_of_pet, :breed, :Pet_age, :pet_weight, :appointment_id)
    end
end
