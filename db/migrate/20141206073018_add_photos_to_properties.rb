class AddPhotosToProperties < ActiveRecord::Migration
  def change
    add_attachment :properties, :photo
    add_attachment :properties, :logo
    add_attachment :properties, :location_map

    add_attachment :properties, :studio_layout
    add_attachment :properties, :one_bedroom_layout
    add_attachment :properties, :two_bedroom_layout
    add_attachment :properties, :three_bedroom_layout
    add_attachment :properties, :penthouse_layout
    add_attachment :properties, :loft_layout
  end
end
