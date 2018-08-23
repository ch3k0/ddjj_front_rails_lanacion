class CreateVinculos < ActiveRecord::Migration
  def change
    #create_table :vinculos do |t|
    create_table(:vinculos, options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8') do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
