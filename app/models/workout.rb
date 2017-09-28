class Workout < ActiveRecord::Base
    has_many :exercises
    # attr_accessor :date, :workout, :mood, :length
    # validates :workout, :presence => { :message => "enter something" }
end
