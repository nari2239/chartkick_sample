class RugbyWorldCupHostCountry < ApplicationRecord
  def self.chart_date
    order(held_at: :asc).pluck('held_at', 'matches').to_h
  end
end
