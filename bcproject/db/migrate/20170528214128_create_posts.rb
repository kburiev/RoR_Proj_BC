class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.text :biographie
      t.text :comment
      t.decimal :price

      t.timestamps
    end
  end
end
