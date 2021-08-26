class AddTitleToApplication < ActiveRecord::Migration[6.0]
  def change
    add_column :applications, :title, :string
  end
end
