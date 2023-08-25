class CreateCatches < ActiveRecord::Migration[7.0]
  def change
    create_table :catches do |t|
      t.string :title, null: false
      t.string :content, null: false
      t.string :fishing, null: false
      t.references :user, null: false
      t.references :fish, null: false
      t.references :tool, null: false
      t.timestamps
    end
  end
end
