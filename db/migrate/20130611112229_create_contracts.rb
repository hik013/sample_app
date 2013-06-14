class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.string :name
      t.string :company
      t.date :start_date
      t.date :end_date
      t.string :articles
      t.text :text
      t.string :users
      t.integer :user_id

      t.timestamps
    end
  end
end
