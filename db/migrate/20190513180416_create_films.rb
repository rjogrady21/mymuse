class CreateFilms < ActiveRecord::Migration[5.2]
  def change
    create_table :films do |t|
      t.string :title
      t.string :creator
      t.text :description
      t.integer :date

      t.timestamps
    end
  end
end
