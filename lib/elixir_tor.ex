defmodule ElixirTor do
  @moduledoc """
  Insert module documentation
  """

  alias ElixirTor.Behaviour
  @behaviour Behaviour

  @doc """
  Return a connection
  """
  @impl Behaviour
  defdelegate connect!(host, port), to: ElixirTor.Control

  @doc """
  Send a message through given conenction
  """
  @impl Behaviour
  defdelegate send!(socket, message), to: ElixirTor.Control

  @doc """
  Authenticate the given connection
  """
  @impl Behaviour
  defdelegate authenticate!(socket), to: ElixirTor.Control

  @impl Behaviour
  defdelegate authenticate!(socket, cookie), to: ElixirTor.Control

  @doc """
  Receive data from connection
  """
  @impl Behaviour
  defdelegate receive!(socket), to: ElixirTor.Control
end
