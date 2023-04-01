def bouncingBall(height, bounce, window)
  if height <= 0 || bounce <= 0 || bounce >= 1 || window >= height
    return -1
  end

  count = 0 
  loop do 
    if bounce.to_f * height.to_f > window.to_f
      count += 2
      height = bounce.to_f * height.to_f
    else
      count += 1
      break
    end
    end

    count
end

p bouncingBall(3, 0.66, 1.5) == 3
p bouncingBall(30, 0.66, 1.5) == 15
p bouncingBall(30, 0.75, 1.5) == 21
p bouncingBall(30, 0.4, 10) == 3
p bouncingBall(40, 1, 10) == -1
p bouncingBall(-5, 0.66, 1.5) == -1
p bouncingBall(1, 0.66, 0.66) == 1
p bouncingBall(1, 0.66, 1) == -1
