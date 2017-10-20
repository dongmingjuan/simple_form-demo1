class AddReleasedOnToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :released_on, :date
  end
end
