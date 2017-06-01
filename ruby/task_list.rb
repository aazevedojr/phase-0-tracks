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
      puts "Add '#{location}' location to list."
    else
      puts "'#{location}' location has already been assigned."
    end
  end

  def add_task(task, location)
    if task_locations.include?(location)
      if !task_locations[location].include?(task)
        task_locations[location] << task
        puts "Add '#{task}' to list."
      else
        puts "'#{task}' task has already been assigned."
      end
    else
      add_location(location, task)
    end
  end

  def complete_task(task, location)
    if task_locations[location].include?(task)
      task_locations[location].delete(task)
      puts "Crossed '#{task}' task off!"
    else
      puts "You didn't have the task '#{task}' assigned to #{location} location."
    end
  end

  def to_s
    puts "#{owner}'s TaskList:"
    task_locations.each do |location, tasks|
      puts "At #{location}:"
      tasks.each do |task|
        puts " - #{task}"
      end
      puts ""
    end
    "Due date: #{due_date}"
  end

  def is_past_due?(today)
    if task_locations.values.join('') != ""
      weekdays = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday']
      if weekdays.index(today) > weekdays.index(due_date)
        puts "Your tasks are past due, #{owner}!"
      elsif weekdays.index(today) < weekdays.index(due_date)
        puts "You have #{weekdays.index(due_date) - weekdays.index(today)} days to finish your tasks, #{owner}."
      else
        puts "Your tasks are due today, #{owner}!"
      end
    else
      puts "#{owner}, you've finished all your tasks!"
    end
  end
end

#Test Code

tasks = TaskList.new('Guto', 'Friday')

tasks.add_location('home', 'pay rent', 'take the trash out')
tasks.add_location('WholeFoods', 'buy napkins', 'buy shampoo', 'buy toothbrush')
tasks.add_task('vacuum the carpet', 'home')


tasks.is_past_due?('Thursday')
tasks.is_past_due?('Friday')
tasks.is_past_due?('Saturday')

notasks = TaskList.new('Ali', 'Friday')
notasks.add_location('home', 'sleep')
notasks.complete_task('sleep', 'home')

notasks.is_past_due?('Thursday')
notasks.is_past_due?('Friday')
notasks.is_past_due?('Saturday')