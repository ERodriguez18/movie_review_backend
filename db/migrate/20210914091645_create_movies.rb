class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :name
      t.text :decription
      t.string :movie_lenth
      t.string :director
      t.string :rating
      t.integer :user_id

      t.timestamps
    end
  end
end
