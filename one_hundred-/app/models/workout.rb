class Workout < ActiveRecord::Base
  has_many :movements, dependent: :destroy
  has_many :users
end
