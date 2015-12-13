ActiveAdmin.register Registry do
  permit_params :codigo, :edad, :genero, :etilogia, :frac_eyeccion, :imc, :hemoglobina, :creatinina, :bnp, :pro_bnp, :eac, :diabetes, :irc, :epoc, :acv, :fa, :pas_mmhg, :pad_mmhg, :fc, :clase_funcional_nyha, :betabloqueador, :anticoagulacion, :iecas, :ara_ii, :mra, :diureticos, :ivabradina, :material_educativo, :charla_informativa, :programa_seguimiento, :encargado_segiumiento, :formato_autoseguramiento_paciente, :instalo_app, :lista_verificacion_medidas, :betabloqueador_actual, :betabloqueador_adherido, :betabloqueador_titulacion, :anticoagulacion_indicada, :anticoagulacion_adherido, :iecas_actual, :iecas_adherido, :iecas_titulacion, :araii_actual, :araii_adherido, :araii_titulacion, :mra_actual, :mra_adherido, :mra_titulacion, :diureticos_actual, :diureticos_adherido, :diureticos_titulacion, :ivabradina_actual, :ivabradina_adherido, :ivabradina_titulacion, :visita_seguimiento, :encargado_visita, :dias_despues_alta, :llenado_formato_autoseguimiento

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


end
