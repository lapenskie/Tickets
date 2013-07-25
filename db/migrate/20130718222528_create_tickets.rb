class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :name
      t.string :owner
      t.text :body

      t.timestamps
    end
  end
end
