class CreateStudentBaocaos < ActiveRecord::Migration[5.1]
  def change
    create_table :student_baocaos do |t|
      t.string :content
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
