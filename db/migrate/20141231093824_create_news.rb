class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string  :title
      t.string  :permalink
      t.string  :teaser
      t.text    :body
      t.boolean :featured
      t.integer :created_by
      t.date    :published_date
      t.string  :published_at

      t.string   :photo_caption
      t.string   :photo_file_name
      t.string   :photo_content_type
      t.integer  :photo_file_size
      t.datetime :photo_updated_at
      t.timestamps
    end
  end
end
