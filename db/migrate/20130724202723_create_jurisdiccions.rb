class CreateJurisdiccions < ActiveRecord::Migration
  def change
    #create_table :jurisdiccions do |t|
    create_table(:jurisdiccions, options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8') do |t|
      t.string :nombre
      t.integer :poder_id

      t.timestamps
    end
  end
end
