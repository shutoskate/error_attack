class CreateProblems < ActiveRecord::Migration[5.2]
  def change
    create_table :problems do |t|
      t.string :title
      t.text :code
      t.text :cause
      t.text :solution
      t.timestamps
    end
  end
end
