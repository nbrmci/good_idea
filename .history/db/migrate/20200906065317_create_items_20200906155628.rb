class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :place
      t.text :describe
      t.timestamps
    end
  end
end