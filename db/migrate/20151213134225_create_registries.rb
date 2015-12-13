class CreateRegistries < ActiveRecord::Migration
  def change
    create_table :registries do |t|
      t.string :codigo
      t.string :edad
      t.string :genero
      t.string :etilogia
      t.string :frac_eyeccion
      t.float :imc
      t.float :hemoglobina
      t.float :creatinina
      t.float :bnp
      t.float :pro_bnp
      t.string :eac
      t.string :diabetes
      t.string :irc
      t.string :epoc
      t.string :acv
      t.string :fa
      t.integer :pas_mmhg
      t.integer :pad_mmhg
      t.integer :fc
      t.string :clase_funcional_nyha
      t.string :betabloqueador
      t.string :anticoagulacion
      t.string :iecas
      t.string :ara_ii
      t.string :mra
      t.string :diureticos
      t.string :ivabradina
      t.string :material_educativo
      t.string :charla_informativa
      t.string :programa_seguimiento
      t.string :encargado_segiumiento
      t.string :formato_autoseguramiento_paciente
      t.string :instalo_app
      t.string :lista_verificacion_medidas
      t.references :registry_type, index: true
      t.references :user, index: true
      t.string :betabloqueador_actual
      t.string :betabloqueador_adherido
      t.string :betabloqueador_titulacion
      t.string :anticoagulacion_indicada
      t.string :anticoagulacion_adherido
      t.string :iecas_actual
      t.string :iecas_adherido
      t.string :iecas_titulacion
      t.string :araii_actual
      t.string :araii_adherido
      t.string :araii_titulacion
      t.string :mra_actual
      t.string :mra_adherido
      t.string :mra_titulacion
      t.string :diureticos_actual
      t.string :diureticos_adherido
      t.string :diureticos_titulacion
      t.string :ivabradina_actual
      t.string :ivabradina_adherido
      t.string :ivabradina_titulacion
      t.string :visita_seguimiento
      t.string :encargado_visita
      t.string :dias_despues_alta
      t.string :llenado_formato_autoseguimiento

      t.timestamps
    end
  end
end
