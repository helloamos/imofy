class CreateProperty < ActiveRecord::Migration[5.1]
  def change
    create_table :properties do |t|
    	t.string	:name
    	t.text 		:description
    	t.string   	:type
    	t.integer 	:operation_id
    	t.string	:status
    	t.string	:city
    	t.string    :neighborhood
    	t.string    :thumbnail
    	t.references :user
    	t.timestamps :null => false

    end
  end
end
