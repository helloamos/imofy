class CreateInquiryMails < ActiveRecord::Migration[5.1]
  def change
    create_table :inquiry_mails do |t|
      t.string   :sender_name
      t.string   :sender_phone
      t.string   :sender_email
      t.text     :content
      t.boolean  :is_read
      t.integer  :property_id, index: true
      t.string   :property_url
      t.integer  :user_id

      t.timestamps
    end
    add_index :inquiry_mails, :user_id
  end
end
