class AddConfirmableToDevise < ActiveRecord::Migration[5.1]
  def change
  	add_column :users, :confirmation_token, :string
    add_column :users, :confirmed_at, :datetime
    add_column :users, :confirmation_sent_at, :datetime
    add_column :users, :unconfirmed_email, :string # Only if using reconfirmable
    ## Lockable
	add_column :users,  :failed_attempts, :integer, default: 0, null: false # Only if lock strategy is :failed_attempts
	add_column :users,  :unlock_token, :string # Only if unlock strategy is :email or :both
	add_column :users, :locked_at, :datetime
    add_index  :users, :confirmation_token, unique: true
    # User.reset_column_information # Need for some types of updates, but not for update_all.
    # To avoid a short time window between running the migration and updating all existing
    # users as confirmed, do the following
    User.all.update_all confirmed_at: DateTime.now
    # All existing user accounts should be able to log in after this.




  end
end
