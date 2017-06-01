class TaskList
  attr_reader :owner
  attr_accessor :due_date

  def initialize(owner, due_date)
    @owner = owner
    @due_date = due_date
  end
end