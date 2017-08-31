class CreateProperty < ActiveRecord::Migration[5.1]
  def change
    create_table :properties do |t|
    	t.string	:name
    	t.text 		:description
    	t.references  	:property_type
    	t.references    :contract_type
        t.float     :price
    	t.references	:status
    	t.string	:city
    	t.string    :neighborhood
    	t.attachment    :thumbnail
        t.boolean       :published, default: true
        t.boolean       :featured, default: false
        t.references    :unity
    	t.references :user
    	t.timestamps :null => false

    end
  end
end
