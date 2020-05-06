class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :school_year
      t.string :school_grade
      t.string :lep_indicator_code

      t.timestamps
    end
  end
end
