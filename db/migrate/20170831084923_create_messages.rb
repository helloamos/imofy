class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.string :sender_name
      t.string :sender_phone
      t.string :sender_email
      t.text :content
      t.references :recipient, :index => true, :null => false

      t.timestamps
    end
  end
end
