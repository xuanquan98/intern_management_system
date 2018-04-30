class CreateStudentLecturerAppreciates < ActiveRecord::Migration[5.1]
  def change
    create_table :student_lecturer_appreciates do |t|
      t.string :content
      t.references :student, foreign_key: true
      t.references :lecturer, foreign_key: true

      t.timestamps
    end
  end
end
