class CreatePersonaCargos < ActiveRecord::Migration
  def change
    #create_table :persona_cargos do |t|
    create_table(:persona_cargos, options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8') do |t|
      t.integer :persona_id
      t.integer :cargo_id
      t.integer :jurisdiccion_id
      t.integer :flag_ingreso
      t.date :ingreso
      t.date :egreso

      t.timestamps
    end
  end
end
