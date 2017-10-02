class CreateTestBlocks < ActiveRecord::Migration[5.1]
  def change
    create_table :test_blocks do |t|
      t.text :content

      t.timestamps
    end
  end
end
