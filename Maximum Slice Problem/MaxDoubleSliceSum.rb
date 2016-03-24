def solution(a)
  n = a.size

  max_end = Array.new(n, 0)
  max_end_temp = 0

  for i in (1...n-1)
    max_end_temp = [0,a[i]+max_end_temp].max
    max_end[i] = max_end_temp
  end

  max_start = Array.new(n, 0)
  max_start_temp = 0

  for j in (n-2).downto(1)
    max_start_temp = [0,a[j]+max_start_temp].max
    max_start[j] = max_start_temp
  end

  max_double = 0

  for k in (0...n-2)
    max_double = [max_double , max_end[k] + max_start[k+2]].max
  end

  return max_double

end
