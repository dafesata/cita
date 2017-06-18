class EvolucionsController < ApplicationController
  before_filter :authenticate_user!
 load_and_authorize_resource

  # GET /evolucions
  # GET /evolucions.json
  def index
    
  end

  def list
     @evolucion = Evolucion.all
    if (params[:s_tipo] && params[:s_identificacion] && params[:s_pnombre] && params[:s_snombre] && params[:s_papellido] && params[:s_sapellido] && params[:s_especialidad]&& params[:s_fecha])
      @evolucion = Evolucion.search(params)
      if Evolucion.search(params).blank?
        flash[:notice] = "No se obtuvo ningun resultado."         
      end
    else
      @evolucion = Evolucion.all
    end        
  end

  # GET /evolucions/1
  # GET /evolucions/1.json
  def show
  end

  # GET /evolucions/new
  def new
    
  end

  # GET /evolucions/1/edit
  def edit
  end

  # POST /evolucions
  # POST /evolucions.json
  def create
    

    respond_to do |format|
      if @evolucion.save
        format.html { redirect_to @evolucion, notice: 'Evolucion was successfully created.' }
        format.json { render :show, status: :created, location: @evolucion }
      else
        format.html { render :new }
        format.json { render json: @evolucion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /evolucions/1
  # PATCH/PUT /evolucions/1.json
  def update
    respond_to do |format|
      if @evolucion.update(evolucion_params)
        format.html { redirect_to @evolucion, notice: 'Evolucion was successfully updated.' }
        format.json { render :show, status: :ok, location: @evolucion }
      else
        format.html { render :edit }
        format.json { render json: @evolucion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evolucions/1
  # DELETE /evolucions/1.json
  def destroy
    @evolucion.destroy
    respond_to do |format|
      format.html { redirect_to evolucions_url, notice: 'Evolucion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    

    # Never trust parameters from the scary internet, only allow the white list through.
    def evolucion_params
      params.require(:evolucion).permit(:paciente_id, :especialidad_id, :profesional_id, :peso, :talla, :tensionarterial, :fecha, :descripcion, :idiagnostica1, :idiagnostica2, :idiagnostica3, :idiagnostica4, :idiagnostica5, :idiagnostica6, :adiagnosticas1, :adiagnosticas2, :adiagnosticas3, :adiagnosticas4, :adiagnosticas5, :adiagnosticas6, :tratamiento1, :dosis1, :tratamiento2, :dosis2, :tratamiento3, :dosis3, :tratamiento4, :dosis4, :tratamiento5, :dosis5, :tratamiento6, :dosis6, :interconsulta1)
    end
end
