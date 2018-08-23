class CreateDjVista < ActiveRecord::Migration
  def change
    #create_table :dj_vista do |t|
    create_table(:dj_vista, options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8') do |t|
      t.integer :ddjj_id
      t.decimal :visitas
      t.date :fecha

      t.timestamps
    end
  end
end
