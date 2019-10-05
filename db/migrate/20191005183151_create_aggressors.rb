class CreateAggressors < ActiveRecord::Migration[5.2]
  def change
    create_table :aggressors do |t|
      t.integer :employeenum
      t.integer :manager_id
      t.integer :issuecount
      t.string :name
      t.string :title
      t.string :gender
      t.integer :age
      t.string :race
      t.string :email

      t.timestamps
    end
  end
end
