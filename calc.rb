def calc(expr)
  expr.gsub!(/[()' ']/, '')
  arr = expr.split(/\+/)
  return arr.inject(0){|x,y| calc(x) + calc(y) } if arr.size > 1
  arr = expr.split(/\-/ )
  return arr.inject(0){|x,y| calc(x) - calc(y) } if arr.size > 1
  arr = expr.split(/\*/)
  return arr.inject(1){|x,y| calc(x) * calc(y) } if arr.size > 1
  arr = expr.split(/\//)
  return arr.inject   {|x,y| calc(x) / calc(y) } if arr.size > 1
end
