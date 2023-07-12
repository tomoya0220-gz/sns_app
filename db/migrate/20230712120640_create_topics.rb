class CreateTopics < ActiveRecord::Migration[7.0]
  validates :title, 
  length:{maximum: 100}

end

