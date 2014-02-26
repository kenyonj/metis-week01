def status(num_lockers, num_students)
  lockers = [false] * num_lockers
  num_students.times do |student|
    lockers.each_with_index do |locker, locker_number|
      if (locker_number + 1) % (student + 1) == 0
         lockers[locker_number] = !locker
      end
    end
  end
  lockers.each_with_index do |locker, locker_number|
    if locker
      puts "Locker ##{locker_number+1}: Open"
    else
      puts "Locker ##{locker_number+1}: Closed"
    end
  end
end

status(100,100)
