class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :image
      t.string :nome
      t.string :resumo
      t.string :language
      t.date :release_date
      t.date :popularity
      t.numeric :api_id
      t.references :profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
