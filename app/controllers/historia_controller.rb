class HistoriaController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource

  # GET /historia
  # GET /historia.json
  def index
  
  end

  # GET /historia/1
  # GET /historia/1.json
  def show
    
  end

  def download
    respond_to do |format| 
       format.xlsx {render xlsx: 'download',filename: "payments.xlsx"}
    end
  end

  # GET /historia/new
  def new
  
  end

  # GET /historia/1/edit
  def edit
  end

  def list 
    @historia = Historium.all
    if (params[:s_tipo] && params[:s_identificacion] && params[:s_pnombre] && params[:s_snombre] && params[:s_papellido] && params[:s_sapellido] && params[:s_especialidad]&& params[:s_fecha])
      @historia = Historium.search(params)
      if Historium.search(params).blank?
        flash[:notice] = "No se obtuvo ningun resultado."         
      end
    else
      @historia = Historium.all
    end         
    
  end

  # POST /historia
  # POST /historia.json
  def create    

    respond_to do |format|
      if @historium.save
        format.html { redirect_to @historium, notice: 'Historia fue creada satisfactoriamente.' }
        format.json { render :show, status: :created, location: @historium }
      else
        format.html { render :new }
        format.json { render json: @historium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /historia/1
  # PATCH/PUT /historia/1.json
  def update
    respond_to do |format|
      if @historium.update(historium_params)
        format.html { redirect_to @historium, notice: 'Historia fue actualizada satisfactoriamente.' }
        format.json { render :show, status: :ok, location: @historium }
      else
        format.html { render :edit }
        format.json { render json: @historium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /historia/1
  # DELETE /historia/1.json
  def destroy
    @historium.destroy
    respond_to do |format|
      format.html { redirect_to historia_url, notice: 'Historia eliminada satisfactoriamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def historium_params
      params.require(:historium).permit(:paciente_id, :profesional_id, :especialidad_id, :acompañante, :parentesco, :motivo, :eactual, :afamiliar, :aginecologicos, :aobstetricos, :apatologicos, :aquirurgicos, :apsicosociales, :peso, :talla, :tensionarterial, :temp, :ageneral, :craneocabeza, :cuello, :osentidos, :torax, :seno, :cardiaco, :respiratorio, :abdomen, :ginecologico, :urinario, :osteoauricular, :neurologico, :idiagnostica1, :idiagnostica2, :idiagnostica3, :idiagnostica4, :idiagnostica5, :idiagnostica6, :adiagnosticas1, :adiagnosticas2, :adiagnosticas3, :adiagnosticas4, :adiagnosticas5, :adiagnosticas6, :tratamiento1, :dosis1, :tratamiento2, :dosis2, :tratamiento3, :dosis3, :tratamiento4, :dosis4, :tratamiento5, :dosis5, :tratamiento6, :dosis6, :interconsulta1)
    end
end
