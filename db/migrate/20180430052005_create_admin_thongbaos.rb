class CreateAdminThongbaos < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_thongbaos do |t|
      t.string :content
      t.integer :doituong
      t.references :admin, foreign_key: true

      t.timestamps
    end
  end
end
