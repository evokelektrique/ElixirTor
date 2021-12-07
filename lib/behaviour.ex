defmodule ElixirTor.Behaviour do
  @moduledoc """
  A definition of the intended behavior of the core functions.
  """

  @callback connect!(String.t(), integer()) :: term | {:error, String.t()}
  @callback send!(Socket.t(), String.t()) :: term
  @callback authenticate!(Socket.t()) :: term
  @callback authenticate!(Socket.t(), String.t()) :: term
  @callback receive!(Socket.t()) :: String.t() | {:error, String.t()}
end
