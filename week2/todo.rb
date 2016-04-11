require "rspec"
require "date"
class Task
    attr_reader :content, :id, :created_time
    @@current_id = 1
    def initialize(content)
        @content = content
        @id = @@current_id
        @@current_id += 1
        @complete = false
        @created_time = Time.now
    end
    def complete?
    	@complete
    end

    def complete!
        @complete = true
    end

end

class TodoList
    attr_reader :tasks
    
    def initialize(user)
        @user = user
        @tasks = []
    end

    def add_tasks(task)
        @tasks.push(task)
    end

    def delete_task(id)
        @tasks.delete_if {|task| task.id==id}
        
    end

    def find_task_by_id(id)
        @tasks.find {|task| task.id == id}
    end

    def sort_by_created(dir)
        if dir == "ASC"
          sorted_tasks =  @tasks.sort {|task1, task2| task1.created_time <=> task2.created_time}
        elsif dir == "DESC"
            sorted_tasks = @tasks.sort {|task1, task2| task2.created_time <=> task1.created_time}
        end
        # sorted_tasks.each do |task|
        #     puts "#{task.id}----#{task.content}----#{task.created_time}"
        # end
    end

end


task = Task.new("Buy the milk")
#puts task.id
task2 = Task.new("Wash the car")
task3 = Task.new("Pay the bills")
# puts task2.id
# task.complete!
# puts task.complete?
todo = TodoList.new("Josh")
todo.add_tasks(task)
todo.add_tasks(task2)
todo.add_tasks(task3)

#todo.delete_task(1)
#puts todo.tasks.length
mytask = todo.find_task_by_id(3)
puts mytask.content
todo.sort_by_created("DESC")  

