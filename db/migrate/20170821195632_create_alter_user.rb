class CreateAlterUser < ActiveRecord::Migration[5.1]
  def change
    change_table :users do |t|
    	t.string       :login
    	t.string       :company
    	t.string       :city
    	t.string       :country
    	t.string       :address
    	t.string       :phone
        t.attachment   :avatar
        t.string       :slug, unique: true
        t.integer      :role_id, default: 2
    end
    
  end
end
