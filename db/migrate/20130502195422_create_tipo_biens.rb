class CreateTipoBiens < ActiveRecord::Migration
  def change
    #create_table :tipo_biens do |t|
    create_table(:tipo_biens, options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8') do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
