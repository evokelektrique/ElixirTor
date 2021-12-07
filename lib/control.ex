defmodule ElixirTor.Control do
  @moduledoc """
  Insert module documentation
  """

  def connect!(host, port) do
    # :line mode, a packet is a line-terminated with newline,
    # lines longer than the receive buffer are truncated
    Socket.TCP.connect!(host, port, options: [:keepalive], packet: :line)
  end

  def authenticate!(socket) do
    socket |> send!("AUTHENTICATE")
  end

  def receive!(socket) do
    socket |> Socket.Stream.recv!()
  end

  def send!(socket, message) do
    socket |> Socket.Stream.send!(message <> "\r\n")
  end
end
