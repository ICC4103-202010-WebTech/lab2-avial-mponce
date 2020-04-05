class CreateTicketTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :ticket_types do |t|
      t.numeric :ticket_price
      t.string :t_type

      t.timestamps
    end
  end
end
