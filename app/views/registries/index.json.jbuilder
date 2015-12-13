json.array!(@registries) do |registry|
  json.extract! registry, :id, :codigo, :edad, :genero, :etilogia, :frac_eyeccion, :imc, :hemoglobina, :creatinina, :bnp, :pro_bnp, :eac, :diabetes, :irc, :epoc, :acv, :fa, :pas_mmhg, :pad_mmhg, :fc, :clase_funcional_nyha, :betabloqueador, :anticoagulacion, :iecas, :ara_ii, :mra, :diureticos, :ivabradina, :material_educativo, :charla_informativa, :programa_seguimiento, :encargado_segiumiento, :formato_autoseguramiento_paciente, :instalo_app, :lista_verificacion_medidas, :registry_type_id, :user_id, :betabloqueador_actual, :betabloqueador_adherido, :betabloqueador_titulacion, :anticoagulacion_indicada, :anticoagulacion_adherido, :iecas_actual, :iecas_adherido, :iecas_titulacion, :araii_actual, :araii_adherido, :araii_titulacion, :mra_actual, :mra_adherido, :mra_titulacion, :diureticos_actual, :diureticos_adherido, :diureticos_titulacion, :ivabradina_actual, :ivabradina_adherido, :ivabradina_titulacion, :visita_seguimiento, :encargado_visita, :dias_despues_alta, :llenado_formato_autoseguimiento
  json.url registry_url(registry, format: :json)
end