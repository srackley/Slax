class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.text :body
      t.references :user, foreign_key: true
      t.string :channel
      t.string :references

      t.timestamps
    end
  end
end