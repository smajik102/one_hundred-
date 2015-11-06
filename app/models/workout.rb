class Workout < ActiveRecord::Base
  has_many :movements, dependent: :destroy
  has_and_belongs_to_many :users
end
