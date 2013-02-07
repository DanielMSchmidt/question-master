class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :content
      t.integer :count
      t.integer :subject_id

      t.timestamps
    end
  end
end
