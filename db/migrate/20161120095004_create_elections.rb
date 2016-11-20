class CreateElections < ActiveRecord::Migration[5.0]
  def change
    create_table :elections do |t|
      t.string :name
      t.string :status
      t.integer :user_id

      t.timestamps
    end
  end
end
