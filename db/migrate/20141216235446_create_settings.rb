class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.string :production_email
      t.text   :about_us

      t.string :introduction
      t.string :intro_price
      t.string :link
      t.string :email
      t.string :bcc
      
      t.timestamps
    end
  end
end
