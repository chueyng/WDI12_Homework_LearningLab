class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.text :title
      t.text :description
      t.text :poster

      t.timestamps null: false
    end
  end
end
