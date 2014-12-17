class CreatePriceRanges < ActiveRecord::Migration
  def change
    create_table :price_ranges do |t|
      t.string  :range
      t.integer :value_from, :value_to
      t.timestamps
    end
  end
end
