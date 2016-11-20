class CreateElections < ActiveRecord::Migration[5.0]
  def change
    create_table :elections do |t|
      t.string :name
      t.string :status
      t.integer :owner_id

      t.timestamps
    end
  end
end
