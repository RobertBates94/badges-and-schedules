require 'pry'

def badge_maker(name)
    "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
    badge_maker = []
    attendees.each do |name|
        badge_maker << "Hello, my name is #{name}."
    end
    return badge_maker
end

def assign_rooms(attendees)
    assign_rooms = []
    counter = 0
    attendees.each.with_index do |room_assignments|
        counter += 1
        assign_rooms << "Hello, #{room_assignments}! You'll be assigned to room #{counter}!"
    end
    return assign_rooms
end

def printer(attendees)
    batch_badge_creator(attendees).collect do |name|
        puts name
    end
    assign_rooms(attendees).collect do |room_number|
        puts room_number
    end
end
