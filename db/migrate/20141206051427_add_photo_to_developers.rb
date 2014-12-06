class AddPhotoToDevelopers < ActiveRecord::Migration
  def change
    add_attachment :developers, :image
  end
end
