class CreateTiempoControls < ActiveRecord::Migration
  def change
    #create_table :tiempo_controls do |t|
    create_table(:tiempo_controls, options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8') do |t|
      t.string :dias

      t.timestamps
    end
  end
end
