# ElixirTor

```elixir
# Open connection
iex(1)> conn = ElixirTor.connect!("localhost", 9051)
#Port<0.6>

# Authenticate
iex(2)> conn |> ElixirTor.authenticate!() |> ElixirTor.receive!
"250 OK\r\n"

# Communicate
iex(3)> conn |> ElixirTor.send!("GETINFO version") |> ElixirTor.receive!
"250-version=0.4.5.11\r\n"

```
