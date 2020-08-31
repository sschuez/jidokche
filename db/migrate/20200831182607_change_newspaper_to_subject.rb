class ChangeNewspaperToSubject < ActiveRecord::Migration[6.0]
  def change
  	rename_column :inquiries, :newspaper, :subject
  end
end
