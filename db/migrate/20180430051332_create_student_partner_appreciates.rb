class CreateStudentPartnerAppreciates < ActiveRecord::Migration[5.1]
  def change
    create_table :student_partner_appreciates do |t|
      t.string :content
      t.references :student, foreign_key: true
      t.references :partner, foreign_key: true

      t.timestamps
    end
  end
end
