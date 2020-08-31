class AddNameToInquiries < ActiveRecord::Migration[6.0]
  def change
    add_column :inquiries, :name, :string
  end
end
