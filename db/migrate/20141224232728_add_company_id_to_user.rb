class AddCompanyIdToUser < ActiveRecord::Migration
  def change
    remove_column :companies, :user_id
    add_column :users, :company_id, :integer
  end
end
