class AddRolesToUsers < ActiveRecord::Migration[5.1]
  def change 
  	change_table :users do |t|
	  	t.boolean :superadmin_role, default: false
	    t.boolean :supervisor_role,  default: false
	    t.boolean :user_role,  default: true
  	end
  end
end
