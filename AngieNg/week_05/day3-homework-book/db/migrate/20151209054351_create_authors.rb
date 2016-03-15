class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.text :name
      t.text :pen_name
      t.text :nationality
      t.text :genre
      t.text :period
      t.date :dob
      t.text :image
      t.timestamps
    end
  end
end
