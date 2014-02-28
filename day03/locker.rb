def status(num_lockers, num_students)
  lockers = [false] * num_lockers

  1.upto(100) do |student_number|
    lockers.each_with_index do |locker, locker_number|
      if (locker_number + 1) % student_number == 0
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

status(10,5)
