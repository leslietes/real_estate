class CreatePerspectives < ActiveRecord::Migration
  def change
    create_table :perspectives do |t|
      t.string   :perspective_file_name
      t.string   :perspective_content_type
      t.integer  :perspective_file_size
      t.datetime :perspective_updated_at
      t.string   :caption
      t.string   :link
      t.timestamps
    end
  end
end
