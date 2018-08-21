class RemoveColumnFromReviews < ActiveRecord::Migration[5.2]
  def change
    remove_column :reviews, :company_name, :string
    remove_column :reviews, :company_size, :integer 
  end
end
