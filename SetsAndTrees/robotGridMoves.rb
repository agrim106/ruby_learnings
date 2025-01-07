#Given a grid of size m*n and robot is paced at n-1 and m-1 
#also given a string str only the character of U D L R representing the moves of a robot 
#The robot is going to perform task is to find the robot will be safe at the end of the last move. 
def robotSafe(m,n,string)
robot_x = m-1 
robot_y = n-1 
string.each_char do |char| 
  if char == 'L'
    robot_y -= 1 
    if isOutOfBounds(m,n,robot_x,robot_y)
      return nil 
    end 

  elsif char == 'R'
    robot_y += 1
    if isOutOfBounds(m,n,robot_x,robot_y)
      return nil 
    end 
  elsif char == 'U'
    robot_x -= 1
    if isOutOfBounds(m,n,robot_x,robot_y)
      return nil 
    end 
  elsif char == 'D'
    robot_x += 1 
    if isOutOfBounds(m,n,robot_x,robot_y)
      return nil 
    end 
  end
end 
return [robot_x,robot_y]
end 

def isOutOfBounds(m,n,robot_x,robot_y)
  if robot_x < 0 || robot_y < 0 || robot_x > m || robot_y > n
    return false
  end
  return true
end 
m = gets.chomp.to_i 
n = gets.chomp.to_i 
string = gets.chomp
coordinates = robotSafe(m,n,string)

if coordinates == nil
  puts "Robot is not safe"
else
  puts "Robot is safe and is at : #{coordinates}"
end
