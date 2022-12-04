class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.string :Name
      t.text :Email
      t.text :Content
    end
  end
end
