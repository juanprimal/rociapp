require 'test_helper'

class RegistriesControllerTest < ActionController::TestCase
  setup do
    @registry = registries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:registries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create registry" do
    assert_difference('Registry.count') do
      post :create, registry: { acv: @registry.acv, anticoagulacion: @registry.anticoagulacion, anticoagulacion_adherido: @registry.anticoagulacion_adherido, anticoagulacion_indicada: @registry.anticoagulacion_indicada, ara_ii: @registry.ara_ii, araii_actual: @registry.araii_actual, araii_adherido: @registry.araii_adherido, araii_titulacion: @registry.araii_titulacion, betabloqueador: @registry.betabloqueador, betabloqueador_actual: @registry.betabloqueador_actual, betabloqueador_adherido: @registry.betabloqueador_adherido, betabloqueador_titulacion: @registry.betabloqueador_titulacion, bnp: @registry.bnp, charla_informativa: @registry.charla_informativa, clase_funcional_nyha: @registry.clase_funcional_nyha, codigo: @registry.codigo, creatinina: @registry.creatinina, diabetes: @registry.diabetes, dias_despues_alta: @registry.dias_despues_alta, diureticos: @registry.diureticos, diureticos_actual: @registry.diureticos_actual, diureticos_adherido: @registry.diureticos_adherido, diureticos_titulacion: @registry.diureticos_titulacion, eac: @registry.eac, edad: @registry.edad, encargado_segiumiento: @registry.encargado_segiumiento, encargado_visita: @registry.encargado_visita, epoc: @registry.epoc, etilogia: @registry.etilogia, fa: @registry.fa, fc: @registry.fc, formato_autoseguramiento_paciente: @registry.formato_autoseguramiento_paciente, frac_eyeccion: @registry.frac_eyeccion, genero: @registry.genero, hemoglobina: @registry.hemoglobina, iecas: @registry.iecas, iecas_actual: @registry.iecas_actual, iecas_adherido: @registry.iecas_adherido, iecas_titulacion: @registry.iecas_titulacion, imc: @registry.imc, instalo_app: @registry.instalo_app, irc: @registry.irc, ivabradina: @registry.ivabradina, ivabradina_actual: @registry.ivabradina_actual, ivabradina_adherido: @registry.ivabradina_adherido, ivabradina_titulacion: @registry.ivabradina_titulacion, lista_verificacion_medidas: @registry.lista_verificacion_medidas, llenado_formato_autoseguimiento: @registry.llenado_formato_autoseguimiento, material_educativo: @registry.material_educativo, mra: @registry.mra, mra_actual: @registry.mra_actual, mra_adherido: @registry.mra_adherido, mra_titulacion: @registry.mra_titulacion, pad_mmhg: @registry.pad_mmhg, pas_mmhg: @registry.pas_mmhg, pro_bnp: @registry.pro_bnp, programa_seguimiento: @registry.programa_seguimiento, registry_type_id: @registry.registry_type_id, user_id: @registry.user_id, visita_seguimiento: @registry.visita_seguimiento }
    end

    assert_redirected_to registry_path(assigns(:registry))
  end

  test "should show registry" do
    get :show, id: @registry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @registry
    assert_response :success
  end

  test "should update registry" do
    patch :update, id: @registry, registry: { acv: @registry.acv, anticoagulacion: @registry.anticoagulacion, anticoagulacion_adherido: @registry.anticoagulacion_adherido, anticoagulacion_indicada: @registry.anticoagulacion_indicada, ara_ii: @registry.ara_ii, araii_actual: @registry.araii_actual, araii_adherido: @registry.araii_adherido, araii_titulacion: @registry.araii_titulacion, betabloqueador: @registry.betabloqueador, betabloqueador_actual: @registry.betabloqueador_actual, betabloqueador_adherido: @registry.betabloqueador_adherido, betabloqueador_titulacion: @registry.betabloqueador_titulacion, bnp: @registry.bnp, charla_informativa: @registry.charla_informativa, clase_funcional_nyha: @registry.clase_funcional_nyha, codigo: @registry.codigo, creatinina: @registry.creatinina, diabetes: @registry.diabetes, dias_despues_alta: @registry.dias_despues_alta, diureticos: @registry.diureticos, diureticos_actual: @registry.diureticos_actual, diureticos_adherido: @registry.diureticos_adherido, diureticos_titulacion: @registry.diureticos_titulacion, eac: @registry.eac, edad: @registry.edad, encargado_segiumiento: @registry.encargado_segiumiento, encargado_visita: @registry.encargado_visita, epoc: @registry.epoc, etilogia: @registry.etilogia, fa: @registry.fa, fc: @registry.fc, formato_autoseguramiento_paciente: @registry.formato_autoseguramiento_paciente, frac_eyeccion: @registry.frac_eyeccion, genero: @registry.genero, hemoglobina: @registry.hemoglobina, iecas: @registry.iecas, iecas_actual: @registry.iecas_actual, iecas_adherido: @registry.iecas_adherido, iecas_titulacion: @registry.iecas_titulacion, imc: @registry.imc, instalo_app: @registry.instalo_app, irc: @registry.irc, ivabradina: @registry.ivabradina, ivabradina_actual: @registry.ivabradina_actual, ivabradina_adherido: @registry.ivabradina_adherido, ivabradina_titulacion: @registry.ivabradina_titulacion, lista_verificacion_medidas: @registry.lista_verificacion_medidas, llenado_formato_autoseguimiento: @registry.llenado_formato_autoseguimiento, material_educativo: @registry.material_educativo, mra: @registry.mra, mra_actual: @registry.mra_actual, mra_adherido: @registry.mra_adherido, mra_titulacion: @registry.mra_titulacion, pad_mmhg: @registry.pad_mmhg, pas_mmhg: @registry.pas_mmhg, pro_bnp: @registry.pro_bnp, programa_seguimiento: @registry.programa_seguimiento, registry_type_id: @registry.registry_type_id, user_id: @registry.user_id, visita_seguimiento: @registry.visita_seguimiento }
    assert_redirected_to registry_path(assigns(:registry))
  end

  test "should destroy registry" do
    assert_difference('Registry.count', -1) do
      delete :destroy, id: @registry
    end

    assert_redirected_to registries_path
  end
end
