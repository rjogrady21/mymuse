class CreateArts < ActiveRecord::Migration[5.2]
  def change
    create_table :arts do |t|
      t.string :title
      t.string :artist
      t.text :description
      t.integer :date

      t.timestamps
    end
  end
end
