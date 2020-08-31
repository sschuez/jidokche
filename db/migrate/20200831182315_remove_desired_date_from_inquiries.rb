class RemoveDesiredDateFromInquiries < ActiveRecord::Migration[6.0]
  def change

    remove_column :inquiries, :desired_date, :date
  end
end
