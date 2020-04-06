class TicketType < ApplicationRecord
  belongs_to :event
  has_many :ticket_order
end
