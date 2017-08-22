class CreateAlterUser < ActiveRecord::Migration[5.1]
  def change
    change_table :users do |t|
    	t.string :login
    	t.string :company
    	t.string :city
    	t.string :country
    	t.string :address
    	t.string :phone
    end
    
  end
end
