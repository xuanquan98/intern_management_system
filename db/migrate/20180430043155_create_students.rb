class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.integer :mssv
      t.string :lop
      t.string :khoa
      t.string :nganh
      t.string :diachi
      t.string :hoten
      t.datetime :ngaysinh
      t.string :vnuemail
      t.float :diemtb
      t.integer :namtotnghiep
      t.string :avatar
      t.string :emailcanhan
      t.string :skypeid
      t.string :facebook_url
      t.string :vitricanbodoan
      t.string :tienganh
      t.string :kinhnghiem
      t.string :sothich
      t.string :mongmuon
      t.string :ghichu
      t.string :password_digest

      t.timestamps
    end
  end
end
