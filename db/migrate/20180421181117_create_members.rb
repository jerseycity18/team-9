class CreateMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.string :zipcode
      t.string :interest
      t.string :availability
      t.string :communication

      t.timestamps
    end
  end
end
