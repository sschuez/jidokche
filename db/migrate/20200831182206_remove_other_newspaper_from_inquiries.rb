class RemoveOtherNewspaperFromInquiries < ActiveRecord::Migration[6.0]
  def change

    remove_column :inquiries, :other_newspaper, :string
  end
end
