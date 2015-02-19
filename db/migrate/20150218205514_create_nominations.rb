class CreateNominations < ActiveRecord::Migration
  def change
    create_table :nominations do |t|
      t.integer :year
      t.string :category
      t.string :nominee
      t.string :additional_info
      t.string :won?

      t.timestamps null: false
    end
  end
end
