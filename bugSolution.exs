```elixir
list = [1, 2, 3, 4, 5]

try do
  Enum.each(list, fn x ->
    if x == 3 do
      throw(:error)
    end
    IO.puts(x)
  end)
catch
  :error -> IO.puts("Error encountered!")
end

#Better Approach: Using Enum.reduce or a more functional approach
list = [1,2,3,4,5]
result = Enum.reduce(list, [], fn x, acc ->
  if x == 3 do
    acc
  else
    [x | acc]
  end
  end)
IO.puts(Enum.reverse(result))
```