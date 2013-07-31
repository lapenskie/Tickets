class AddOpenToTickets < ActiveRecord::Migration
  def change
  	add_column :tickets, :open, :boolean, :default => true
  end
end
