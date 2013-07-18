class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :name
      t.string :owner
      t.string :body

      t.timestamps
    end
  end
end
