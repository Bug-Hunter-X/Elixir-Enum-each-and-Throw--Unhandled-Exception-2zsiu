```elixir
list = [1, 2, 3, 4, 5]

if Enum.find(list, fn x -> x == 3 end) do
  IO.puts("Three found!")
else
  Enum.each(list, fn x -> IO.puts(x) end)
  IO.puts("Finished")
end
```