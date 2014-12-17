class AddPhotosToSettings < ActiveRecord::Migration
  def change
    add_attachment :settings, :featured1
    add_column     :settings, :featured1_caption, :string
    add_column     :settings, :featured1_link, 	  :string

    add_attachment :settings, :featured2
    add_column     :settings, :featured2_caption, :string
    add_column     :settings, :featured2_link,    :string

    add_attachment :settings, :featured3
    add_column     :settings, :featured3_caption, :string
    add_column     :settings, :featured3_link,    :string

    add_attachment :settings, :featured4
    add_column     :settings, :featured4_caption, :string
    add_column     :settings, :featured4_link,    :string

    add_attachment :settings, :featured5
    add_column     :settings, :featured5_caption, :string
    add_column     :settings, :featured5_link,    :string

    add_attachment :settings, :sidebar
    add_column     :settings,  :sidebar_caption, :string
    add_column     :settings,  :sidebar_link,    :string
  end
end
