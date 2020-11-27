class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.boolean :adult
      t.string :poster_path
      t.string :title
      t.string :overview
      t.string :original_language
      t.date :release_at
      t.float :popularity
      t.integer :api_id
      t.references :profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
