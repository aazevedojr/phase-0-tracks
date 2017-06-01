class TaskList
  attr_reader :owner, :task_locations
  attr_accessor :due_date

  def initialize(owner, due_date)
    @owner = owner
    @due_date = due_date
    @task_locations = {}
  end

  def add_location(location, *task)
    if !task_locations.include?(location)
      task_locations[location] = task
    else
      puts "#{location} location has already been assigned."
    end
  end

  def add_task(task, location)
    if task_locations.include?(location)
      if !task_locations[location].include?(task)
        task_locations[location] << task
      else
        puts "#{task} task has already been assigned."
      end
    else
      puts "#{location} location has not yet been assigned."
    end
  end
end

#Test Code

tasks = TaskList.new('Guto', 'Jun 03')

tasks.add_location('home', 'pay rent', 'take the trash out')

tasks.add_task('vacuum the carpet', 'home')

p tasks