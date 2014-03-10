

class OrangeTree

  def initialize
    @height = 0 # cm
    @age = 0  # years
    @alive = true
    @orange_count = 0
  end


  def height
    @height
  end

  def one_year_passes
    if @alive
      @height += 10
      @age += 1
      @orange_count = 0

      if @age > 2
        @orange_count += (@height / 10).to_i
      end
    end
    if @age > 4
      @alive = false
      @orange_count = 0;
    end
  end

  def count_oranges
    @orange_count
  end

  def pick_orange

    if @alive && @orange_count > 0
      @orange_count -= 1
      "That was a delicious, juicy, orange! Yum!"
    elsif @alive && @age == 0
      "There are no oranges to pick, this tree has to grow some first."
    elsif @alive
      "There are no oranges to pick :-("
    else
      "The orange tree is not alive anymore! :-O"
    end
  end

  def is_alive?
    @alive
  end
end


orange_tree = OrangeTree.new
puts "The beginning of time..."
puts

6.times do 
  puts "The orange tree is #{orange_tree.height} cm tall."
  puts "It has #{orange_tree.count_oranges} oranges."
  puts "A young man passes by and tries to pick an orange."
  puts "He says; '#{orange_tree.pick_orange}'" 
  if orange_tree.count_oranges > 0
    puts "The orange tree has #{orange_tree.count_oranges} oranges left."
  end
  
  if orange_tree.is_alive?
    puts
    puts "One year passes...."
    puts
    orange_tree.one_year_passes

    sleep(3)
  end
end