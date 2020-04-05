class TicketOrder < ApplicationRecord
  belongs_to :customer
  has_many :ticket_types
end
