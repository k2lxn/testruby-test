def measure(reps = 1)
  total = 0.0
  reps.times do
    start = Time.now
    yield 
    elapsed = Time.now - start
    total += elapsed
  end 
  average = total / reps
end