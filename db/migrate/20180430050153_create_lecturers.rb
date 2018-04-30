class CreateLecturers < ActiveRecord::Migration[5.1]
  def change
    create_table :lecturers do |t|
      t.string :vnuemail
      t.string :gmail
      t.string :password_digest
      t.string :phone
      t.text :ghichu

      t.timestamps
    end
  end
end
