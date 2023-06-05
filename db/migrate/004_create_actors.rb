class CreateActors < ActiveRecord::Migration[6.1]
  def change
    # Your code here
    #An actor should have a first_name and a last_name as strings.
    create_table :actors do |t|
      t.string :first_name
      t.string :last_name
      t.timestamps
    end
  end
end
