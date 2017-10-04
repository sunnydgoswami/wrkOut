class Workout < ActiveRecord::Base
    has_many :exercises
    has_many :foods
    # attr_accessor :date, :workout, :mood, :length
    # validates :workout, :presence => { :message => "enter something" }
end
