class Addgenre < ActiveRecord::Migration[5.2]
  def change
    add_reference  :genres,  :user, foreign_key: true
    add_reference  :problems,  :user, foreign_key: true
    add_reference  :problems,  :genre, foreign_key: true
  end
end
