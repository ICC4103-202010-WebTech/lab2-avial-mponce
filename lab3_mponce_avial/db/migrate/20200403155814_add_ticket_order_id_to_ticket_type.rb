class AddTicketOrderIdToTicketType < ActiveRecord::Migration[6.0]
  def change
    add_reference :ticket_types, :ticket_order, null: true, foreign_key: true
  end
end
