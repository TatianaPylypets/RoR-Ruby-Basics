class Pet

  attr_accessor :name, :species

  def initialize name; species
    @name = name
    @species = 'dog'
    @watch_cases = [' is pulling onto the scarf.', ' is eating a water-melon, which is unbelievable.', ' always used to be near you, but then got out of you sight. Bye,']
    @stuff_in_belly = 10
    @photo_gallery = 0
    @mood = true
    @lives = 3
    @weary = 0
    @tidy = 10

  line_width = 70
  puts  ("Here is your new puppy, #{@name}. It needs attention.".center(line_width))
  puts ("So, you have to take care of it: bathe, brush teeth,".center(line_width))
  puts ("cut nails, remove various undesirable insects, feed, play,".center(line_width))
  puts ("walk and provide medical assistance if needed.".center(line_width))
  end

  def feed
    puts "You give #{@name} dog food."
    @stuff_in_belly = 10
    time_emulate
  end

  def walk
    puts "You are walking with #{@name}."
    time_emulate
    @tidy -= 1
  end

  def play
    if @mood == true && @weary < 5
      if 0 == rand(2)
        puts "You roll the ball down the floor."
        puts "#{@name} is chasing it with greater joy."
      else
        bark
      end
      time_emulate
    else
      puts "#{@name} doesn't feel like playing right now."
      puts "Any ideas to bring up his mood?"
    end
  end

  def sleep
    puts "#{@name} fell asleep."
    time_emulate
    if @weary > 0
      @weary -= rand(2)
    end
  end

  def bathe
    if @mood == true && @weary < 5
      puts "#{@name} jumps into the pool like crazy."
      puts "#{@name} can dive too."
      time_emulate
      @tidy = 10
    else
      puts "#{@name} is not willing to bathe today."
      @tidy -= 2
    end
  end

  def follows_me
    puts "Whenever told so #{@name} would follow me everywhere."
    time_emulate
  end

  def pet_stylist
    puts "#{@name} is having his fur trimmed and brushed by the pet_stylist."
    @mood = true
    @tidy += 2
    @photo_gallery += 2
    time_emulate
  end

  def visiting_vet
    puts "Today #{@name} got vaccinated."
    puts "So he is immune for the next couple of years."
    time_emulate
  end

  def watch_your_pet
    if @watch_cases.index(@watch_cases.sample) == 2
      most_evil = @watch_cases[2]
      puts @name + most_evil + ' ' + @name + '!'
      exit
    else
      the_case = @watch_cases[0..1].sample
    puts @name + the_case
    end
  end

  private
  def time_emulate
    @stuff_in_belly -= 1
    if @stuff_in_belly <= 5
      @mood = false
    end
    if @stuff_in_belly <= 0 || @weary >= 10
    puts "#{@name} died."
    @lives -= 1
    @stuff_in_belly = 10
    end
    if @lives == 0
      puts "You have wasted all lives."
      puts "#{@name} may not be reborn again."
      exit
    end
  end

  def bark
    puts "#{@name} is barking happily."
  end

end

fluffy = Pet.new "Jackie"; "dog"
require 'tty/prompt'
prompt = TTY::Prompt.new
help = "Present game logics implies decision making based on user input.\n This means the heroe's future may follow from 2-3 different scenarios.\n
Your goal is to make sure the hero is safe and sound. Interaction\n is accomplished by means of a 10-item menu which you can navigate in order\n to choose desired behavior. The result is thrown back to the user \nto the standard output."
question = "What do you do with #{fluffy.name}?"
choices = ["Quit", "Help", "Play", "Feed", "Walk", "Sleep", "Watch Your Pet", "Bark", "Bathe", "Visiting Vet", "Pet Stylist", "Follows Me"]

while true
  item = prompt.select(question, choices)
  if item == "Walk"
    fluffy.walk
  elsif item == "Play"
    fluffy.play
  elsif item == "Feed"
    fluffy.feed
  elsif item == "Sleep"
    fluffy.sleep
  elsif item == "Watch Your Pet"
    fluffy.watch_your_pet
  elsif item == "Bark"
    fluffy.bark
  elsif item == "Bathe"
    fluffy.bathe
  elsif item == "Visiting Vet"
    fluffy.visiting_vet
  elsif item == "Pet Stylist"
    fluffy.pet_stylist
  elsif item == "Help"
    puts help
  elsif item == "Follows Me"
    fluffy.follows_me
  else
    item == "Quit"
    puts "Bye!"
    exit
  end
end
