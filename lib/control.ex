defmodule ElixirTor.Control do
  @moduledoc """
  Insert module documentation
  """

  def connect!(host, port) do
    # :line mode, a packet is a line-terminated with newline,
    # lines longer than the receive buffer are truncated
    Socket.TCP.connect!(host, port, packet: :line)
  end

  def authenticate!(socket) do
    socket |> send!("AUTHENTICATE")
    socket
  end

  def authenticate!(socket, cookie) do
    socket |> send!("AUTHENTICATE #{cookie}")
    socket
  end

  def receive!(socket) do
    socket |> Socket.Stream.recv!()
  end

  def send!(socket, message) do
    socket |> Socket.Stream.send!(message <> "\r\n")
    socket
  end
end
