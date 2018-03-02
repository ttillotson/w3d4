class CreateResponse < ActiveRecord::Migration[5.1]
  def change
    create_table :responses do |t|
      t.integer :author_id
      t.integer :question_id
      t.integer :answer_id
    end
  end
end
