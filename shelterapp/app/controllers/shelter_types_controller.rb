class ShelterTypesController < ApplicationController
  before_action :set_shelter_type, only: [:show, :edit, :update, :destroy]

  # GET /shelter_types
  # GET /shelter_types.json
  def index
    @shelter_types = ShelterType.all
  end

  # GET /shelter_types/1
  # GET /shelter_types/1.json
  def show
  end

  # GET /shelter_types/new
  def new
    @shelter_type = ShelterType.new
  end

  # GET /shelter_types/1/edit
  def edit
  end

  # POST /shelter_types
  # POST /shelter_types.json
  def create
    @shelter_type = ShelterType.new(shelter_type_params)

    respond_to do |format|
      if @shelter_type.save
        format.html { redirect_to @shelter_type, notice: 'Shelter type was successfully created.' }
        format.json { render :show, status: :created, location: @shelter_type }
      else
        format.html { render :new }
        format.json { render json: @shelter_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shelter_types/1
  # PATCH/PUT /shelter_types/1.json
  def update
    respond_to do |format|
      if @shelter_type.update(shelter_type_params)
        format.html { redirect_to @shelter_type, notice: 'Shelter type was successfully updated.' }
        format.json { render :show, status: :ok, location: @shelter_type }
      else
        format.html { render :edit }
        format.json { render json: @shelter_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shelter_types/1
  # DELETE /shelter_types/1.json
  def destroy
    @shelter_type.destroy
    respond_to do |format|
      format.html { redirect_to shelter_types_url, notice: 'Shelter type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shelter_type
      @shelter_type = ShelterType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shelter_type_params
      params.require(:shelter_type).permit(:name, :description)
    end
end
