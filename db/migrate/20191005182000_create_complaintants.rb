class CreateComplaintants < ActiveRecord::Migration[5.2]
  def change
    create_table :complaintants do |t|
      t.string :name
      t.string :title
      t.integer :manager_id
      t.string :gender
      t.integer :age
      t.string :race
      t.string :email
      t.boolean :check_in

      t.timestamps
    end
  end
end
