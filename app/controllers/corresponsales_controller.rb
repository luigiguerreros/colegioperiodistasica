class CorresponsalesController < ApplicationController
  before_action :set_corresponsal, only: [:show, :edit, :update, :destroy]

  # GET /corresponsales
  # GET /corresponsales.json
  def index
    @corresponsales = Corresponsal.all
  end

  # GET /corresponsales/1
  # GET /corresponsales/1.json
  def show
  end

  # GET /corresponsales/new
  def new
    @corresponsal = Corresponsal.new
  end

  # GET /corresponsales/1/edit
  def edit
  end

  # POST /corresponsales
  # POST /corresponsales.json
  def create
    @corresponsal = Corresponsal.new(corresponsal_params)

    respond_to do |format|
      if @corresponsal.save
        format.html { redirect_to @corresponsal, notice: 'Corresponsal was successfully created.' }
        format.json { render action: 'show', status: :created, location: @corresponsal }
      else
        format.html { render action: 'new' }
        format.json { render json: @corresponsal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /corresponsales/1
  # PATCH/PUT /corresponsales/1.json
  def update
    respond_to do |format|
      if @corresponsal.update(corresponsal_params)
        format.html { redirect_to @corresponsal, notice: 'Corresponsal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @corresponsal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /corresponsales/1
  # DELETE /corresponsales/1.json
  def destroy
    @corresponsal.destroy
    respond_to do |format|
      format.html { redirect_to corresponsales_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_corresponsal
      @corresponsal = Corresponsal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def corresponsal_params
      params.require(:corresponsal).permit(:usuario, :nombres, :apellidos, :correo, :telefono_fijo, :telefono_movil, :ciudad, :provincia)
    end
end
