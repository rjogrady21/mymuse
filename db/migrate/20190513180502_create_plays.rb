class CreatePlays < ActiveRecord::Migration[5.2]
  def change
    create_table :plays do |t|
      t.string :title
      t.string :playwright
      t.text :description
      t.integer :date

      t.timestamps
    end
  end
end
