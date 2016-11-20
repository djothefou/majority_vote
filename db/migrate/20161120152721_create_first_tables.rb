class CreateFirstTables < ActiveRecord::Migration[5.0]
  def change

    create_table :votes do |t|
      t.integer :user_id
      t.integer :election_id
      t.string  :status
      t.string  :token

      t.timestamps
    end


    create_table :choices do |t|
      t.integer    :election_id
      t.string     :title
      t.string     :link
      t.text       :description

      t.timestamps
    end


    create_table :grades do |t|
      t.integer    :vote_id
      t.integer    :choice_id
      t.integer    :value

      t.timestamps
    end


    add_column :users, :registered, :boolean, default: false

  end
end
