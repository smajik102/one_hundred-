class User < ActiveRecord::Base
  has_secure_password
  has_and_belongs_to_many :workouts

  def add_workout(workout)
      self.workouts.push(workout)
  end

  def remove_workout(workout)
      self.workouts.push(workout)
  end

end
