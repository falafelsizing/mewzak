class CreateMixtapes < ActiveRecord::Migration
  def change
    create_table :mixtapes do |t|
      t.string :name
      t.integer :downloads
      t.string :link
      t.date :dateAdded

      t.timestamps
    end
  end
end
