class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :subject
      t.text :email
      t.datetime :send_at
      t.timestamps
    end
  end
end
