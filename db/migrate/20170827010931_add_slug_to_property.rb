class AddSlugToProperty < ActiveRecord::Migration[5.1]
  def change
  	change_table :properties do |t|
  		t.string :slug, unique: true
  	end
  end
end
