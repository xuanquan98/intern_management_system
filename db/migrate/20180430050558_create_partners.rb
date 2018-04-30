class CreatePartners < ActiveRecord::Migration[5.1]
  def change
    create_table :partners do |t|
      t.string :username
      t.string :password
      t.string :contact

      t.timestamps
    end
  end
end
