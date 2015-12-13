class RegistriesController < ApplicationController

  #->Prelang (scaffolding:rails/scope_to_user)
  before_filter :require_user_signed_in, only: [:new, :edit, :create, :update, :destroy]

  before_action :set_registry, only: [:show, :edit, :update, :destroy]

  # GET /registries
  # GET /registries.json
  def index
    @registries = Registry.all
  end

  # GET /registries/1
  # GET /registries/1.json
  def show
  end

  # GET /registries/new
  def new
    @registry = Registry.new
  end

  # GET /registries/1/edit
  def edit
  end

  # POST /registries
  # POST /registries.json
  def create
    @registry = Registry.new(registry_params)
    @registry.user = current_user

    respond_to do |format|
      if @registry.save
        format.html { redirect_to @registry, notice: 'Registry was successfully created.' }
        format.json { render :show, status: :created, location: @registry }
      else
        format.html { render :new }
        format.json { render json: @registry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registries/1
  # PATCH/PUT /registries/1.json
  def update
    respond_to do |format|
      if @registry.update(registry_params)
        format.html { redirect_to @registry, notice: 'Registry was successfully updated.' }
        format.json { render :show, status: :ok, location: @registry }
      else
        format.html { render :edit }
        format.json { render json: @registry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registries/1
  # DELETE /registries/1.json
  def destroy
    @registry.destroy
    respond_to do |format|
      format.html { redirect_to registries_url, notice: 'Registry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registry
      @registry = Registry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registry_params
      params.require(:registry).permit(:codigo, :edad, :genero, :etilogia, :frac_eyeccion, :imc, :hemoglobina, :creatinina, :bnp, :pro_bnp, :eac, :diabetes, :irc, :epoc, :acv, :fa, :pas_mmhg, :pad_mmhg, :fc, :clase_funcional_nyha, :betabloqueador, :anticoagulacion, :iecas, :ara_ii, :mra, :diureticos, :ivabradina, :material_educativo, :charla_informativa, :programa_seguimiento, :encargado_segiumiento, :formato_autoseguramiento_paciente, :instalo_app, :lista_verificacion_medidas, :registry_type_id, :user_id, :betabloqueador_actual, :betabloqueador_adherido, :betabloqueador_titulacion, :anticoagulacion_indicada, :anticoagulacion_adherido, :iecas_actual, :iecas_adherido, :iecas_titulacion, :araii_actual, :araii_adherido, :araii_titulacion, :mra_actual, :mra_adherido, :mra_titulacion, :diureticos_actual, :diureticos_adherido, :diureticos_titulacion, :ivabradina_actual, :ivabradina_adherido, :ivabradina_titulacion, :visita_seguimiento, :encargado_visita, :dias_despues_alta, :llenado_formato_autoseguimiento)
    end
end
