class CreatePartnerThongbaos < ActiveRecord::Migration[5.1]
  def change
    create_table :partner_thongbaos do |t|
      t.string :content
      t.references :partner, foreign_key: true

      t.timestamps
    end
  end
end
