class TodoThing < ActiveRecord::Base
  validates :title, presence: true
end
