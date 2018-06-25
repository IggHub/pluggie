defmodule Pluggie do
  use Router
  require EEx

	EEx.function_from_file :defp, :template_show_user, "templates/show_user.eex", [:user_id]
	def route("GET", ["users", user_id], conn) do
		page_contents = template_show_user(user_id)
		conn |> Plug.Conn.put_resp_content_type("text/html") |> Plug.Conn.send_resp(200, page_contents)
	end

  def route(_method, _path, conn) do
    conn |> Plug.Conn.send_resp(404, "Couldn't find the path_info")
  end
end
