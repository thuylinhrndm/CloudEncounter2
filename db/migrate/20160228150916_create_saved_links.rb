class CreateSavedLinks < ActiveRecord::Migration
  def change
    create_table :saved_links do |t|
      t.string :title
      t.string :link_url
      t.integer :click_count

      t.timestamps
    end
  end
end
