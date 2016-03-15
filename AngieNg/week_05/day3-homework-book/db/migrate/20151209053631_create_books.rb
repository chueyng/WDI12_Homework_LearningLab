class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.text :title
      t.text :desc
      t.integer :pages
      t.date :publ_date
      t.text :publisher
      t.text :image      
      t.timestamps
    end
  end
end
