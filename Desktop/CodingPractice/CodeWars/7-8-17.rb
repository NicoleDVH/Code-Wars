#Your task is to split the chocolate bar of given dimension n x m into small squares. Each square is of size 1x1 and unbreakable. Implement a function that will return minimum number of breaks needed.

#For example if you are given a chocolate bar of size 2 x 1 you can split it to single squares in just one break, but for size 3 x 1 you must do two breaks.

#If input data is invalid you should return 0 (as in no breaks are needed if we do not have any chocolate to split). Input will always be a non-negative integer.

def break_chocolate(n, m)
  breaks = n * m - 1
  if n * m == 0
    return 0
  else
    return breaks
  end
end

#A digital root is the recursive sum of all the digits in a number. Given n, take the sum of the digits of n. If that value has two digits, continue reducing in this way until a single-digit number is produced. This is only applicable to the natural numbers.

def digital_root(n)
  while n > 10
    x = n.to_s.split(//).map {|i| i.to_i}
    n = x.reduce(:+)
  end
  return n
end