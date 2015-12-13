class CreateRegistryTypes < ActiveRecord::Migration
  def change
    create_table :registry_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
