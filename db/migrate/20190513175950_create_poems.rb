class CreatePoems < ActiveRecord::Migration[5.2]
  def change
    create_table :poems do |t|
      t.string :title
      t.string :poet
      t.text :description
      t.integer :date

      t.timestamps
    end
  end
end
