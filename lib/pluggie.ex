defmodule Pluggie do
  def init(default_opts) do
    IO.puts "starting up Helloplug..."
    default_opts
  end

  def call(conn, _opts) do
    IO.puts "sayin hello!"
#    Plug.Conn.send_resp(conn, 200, "Hello world!")
    conn = Plug.Conn.put_resp_header(conn, "Server", "Pluggie")
    Plug.Conn.send_resp(conn, 200, "Hello WOrld")
  end
end
