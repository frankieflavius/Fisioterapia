class CartellaClinicasController < ApplicationController
  before_action :set_cartella_clinica, only: [:show, :edit, :update, :destroy]

  # GET /cartella_clinicas
  # GET /cartella_clinicas.json
  def index
    @cartella_clinicas = CartellaClinica.all
  end

  # GET /cartella_clinicas/1
  # GET /cartella_clinicas/1.json
  def show
  end

  # GET /cartella_clinicas/new
  def new
    @cartella_clinica = CartellaClinica.new
  end

  # GET /cartella_clinicas/1/edit
  def edit
  end

  # POST /cartella_clinicas
  # POST /cartella_clinicas.json
  def create
    @cartella_clinica = CartellaClinica.new(cartella_clinica_params)

    respond_to do |format|
      if @cartella_clinica.save
        format.html { redirect_to @cartella_clinica, notice: 'La Cartella clinica è stata creata correttamente.' }
        format.json { render :show, status: :created, location: @cartella_clinica }
      else
        format.html { render :new }
        format.json { render json: @cartella_clinica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cartella_clinicas/1
  # PATCH/PUT /cartella_clinicas/1.json
  def update
    respond_to do |format|
      if @cartella_clinica.update(cartella_clinica_params)
        format.html { redirect_to @cartella_clinica, notice: 'La Cartella clinica è stata modificata correttamente.' }
        format.json { render :show, status: :ok, location: @cartella_clinica }
      else
        format.html { render :edit }
        format.json { render json: @cartella_clinica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cartella_clinicas/1
  # DELETE /cartella_clinicas/1.json
  def destroy
    @cartella_clinica.destroy
    respond_to do |format|
      format.html { redirect_to cartella_clinicas_url, notice: 'La Cartella clinica è stata eliminata correttamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cartella_clinica
      @cartella_clinica = CartellaClinica.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cartella_clinica_params
      params.require(:cartella_clinica).permit(:generalità, :anamnesi, :obiettivo, :diagnosi, :terapia, :esiti)
    end
end
