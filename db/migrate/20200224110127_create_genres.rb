class CreateGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :genres do |t|
      t.string :language
      t.timestamps
      t.references :user, foreign_key: true
    end
  end
end
