class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
    	t.boolean :organization, default: 1
    	t.string :inputsCertificate
    	t.string :surname_1_fam
    	t.string :inputEmail
    	t.datetime :childDateInput
    	t.boolean :gender, default: false
    	t.string :inputsSchool
    	t.string :inputsClass
    	t.string :inputsKvantum
    	t.string :teacherName
    	t.string :groupTime
    	t.string :inputsNameLegalRepresentative
    	t.string :NameLegalRepresentativeTelephone
    	t.string :inputsComments
    	t.string :student_rang
    	t.string :student_exp
    	t.string :student_coin
    	t.string :student_checked
    	t.string :student_deleted

      t.timestamps
    end
  end
end
