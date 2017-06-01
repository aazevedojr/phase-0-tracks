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
      add_location(location, task)
    end
  end

  def complete_task(task, location)
    if task_locations[location].include?(task)
      task_locations[location].delete(task)
      puts "Crossed #{task} task off!"
    else
      puts "You didn't have the task #{task} assigned to #{location} location."
    end
  end

  def to_s
    task_locations.each do |location, tasks|
      puts "At #{location}:"
      tasks.each do |task|
        puts " - #{task}"
      end
      puts ""
    end
    "Due date: #{due_date}"
  end
end

#Test Code

tasks = TaskList.new('Guto', 'Jun 03')

tasks.add_location('home', 'pay rent', 'take the trash out')
tasks.add_location('WholeFoods', 'buy napkins', 'buy shampoo', 'buy toothbrush')
tasks.add_task('vacuum the carpet', 'home')


puts tasks