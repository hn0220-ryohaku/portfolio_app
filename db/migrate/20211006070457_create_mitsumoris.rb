class CreateMitsumoris < ActiveRecord::Migration[5.2]
  def change
    create_table :mitsumoris do |t|
      t.string :car_maker
      t.text :v_type
      t.integer :oil
      t.integer :airfilter
      t.integer :wiper
      t.integer :price
      t.integer :user_id

      t.timestamps
    end
  end
end
