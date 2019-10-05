class CreateManagers < ActiveRecord::Migration[5.2]
  def change
    create_table :managers do |t|
      t.string :name
      t.string :title
      t.integer :employeenum
      t.string :gender
      t.integer :age
      t.string :race
      t.string :email
      t.boolean :check_in
      t.integer :company_id

      t.timestamps
    end
  end
end
