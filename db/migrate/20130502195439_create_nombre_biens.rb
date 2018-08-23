class CreateNombreBiens < ActiveRecord::Migration
  def change
    #create_table :nombre_biens do |t|
    create_table(:nombre_biens, options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8') do |t|
      t.string :nombre
      t.integer :tipo_bien_id

      t.timestamps
    end
  end
end
