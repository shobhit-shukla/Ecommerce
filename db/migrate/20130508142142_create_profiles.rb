class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :category_id
      t.string :name
      t.string :location
      t.string :email
      t.integer :phone_no
      t.string :opening_hours
      t.string :closing_hours

      t.timestamps
    end
  end
end
