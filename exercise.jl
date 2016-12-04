function inner_product(x_vals, y_vals)
  ret = 0
  for (x, y) in zip(x_vals, y_vals)
    ret += x * y
  end
  return ret
end

function inner_product2(x_vals, y_vals)
  sum([x * y for (x, y) in zip(x_vals, y_vals)])
end

inner_product([1,2,3],[4,5,6])
foldl((v0, v) -> v0 + v[0] * v[1], 0, zip([1,2,3],[4,5,6]))
