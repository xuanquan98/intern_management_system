class CreateFollows < ActiveRecord::Migration[5.1]
  def change
    create_table :follows do |t|
      t.references :partner, foreign_key: true
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
