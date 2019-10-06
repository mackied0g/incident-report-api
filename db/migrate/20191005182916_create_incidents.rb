class CreateIncidents < ActiveRecord::Migration[5.2]
  def change
    create_table :incidents do |t|
      t.integer :complaintant_id
      t.integer :aggressor_id
      t.integer :severity
      t.string :description
      t.datetime :datetime
      t.string :location
      t.string :witnesses
      t.boolean :to_upper_namagement

      t.timestamps
    end
  end
end
