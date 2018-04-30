class CreateAdmins < ActiveRecord::Migration[5.1]
  def change
    create_table :admins do |t|
      t.string :vnuemail
      t.string :gmail
      t.string :hoten
      t.string :donvi
      t.string :phone
      t.string :password

      t.timestamps
    end
  end
end
