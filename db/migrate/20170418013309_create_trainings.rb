class CreateTrainings < ActiveRecord::Migration
  def change
    create_table :trainings do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
