class CreateRestaurants < ActiveRecord::Migration[7.2]
  def change
    create_table :restaurants do |t|
      t.string :title
      t.string :address
      t.string :picture
      t.jsonb :hours
      t.string :criteria, array: true

      t.timestamps
    end
  end
end
