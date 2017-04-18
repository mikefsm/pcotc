class CreateOfficers < ActiveRecord::Migration
  def change
    create_table :officers do |t|
      t.string :first_name
      t.string :last_name
      t.integer :office_name
      t.string :email
      t.string :phone

      t.timestamps null: false
    end
  end
end
