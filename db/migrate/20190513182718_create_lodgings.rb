class CreateLodgings < ActiveRecord::Migration[5.2]
  def change
    create_table :lodgings do |t|
      t.string :province
      t.string :city
      t.string :address
      t.string :type
      t.string :category

      t.timestamps
    end
  end
end
