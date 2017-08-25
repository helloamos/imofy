class CreateSuscribers < ActiveRecord::Migration[5.1]
  def change
    create_table :suscribers do |t|
      t.string :email, unique: true

      t.timestamps
    end
  end
end
