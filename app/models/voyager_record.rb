class VoyagerRecord < ApplicationRecord
  self.abstract_class = true

  connects_to database: { writing: :voyager }
end
