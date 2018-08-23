class CreateBuscadors < ActiveRecord::Migration
  def change
    #create_table :buscadors do |t|
    create_table(:buscadors, options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8') do |t|
      t.integer :poder
      t.text :nombre_bienes
      t.text :personas
      t.text :cargos
      t.timestamps
    end
  end
end
