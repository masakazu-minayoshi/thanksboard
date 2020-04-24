class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.references :user, foreign_key: true, null: false
      t.string :title, null: false
      t.text :text, null: false
      t.timestamps
    end
  end
end
