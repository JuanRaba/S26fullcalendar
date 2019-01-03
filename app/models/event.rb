class Event < ApplicationRecord
  validates :start, presence: true
  def editable?
    Date.today < start
  end

  def start2
    start    
  end

  def to_json(options = {})
    options[:except] = [:start2, :created_at]
    options[:methods] = :start
    super
  end
end
