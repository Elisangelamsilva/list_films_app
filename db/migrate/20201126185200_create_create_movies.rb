class CreateCreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :create_movies do |t|
      t.string :image
      t.string :nome
      t.string :resumo
      t.string :language
      t.date :release_date
      t.date :popularity
      t.number :api_id

      t.timestamps
    end
  end
end
