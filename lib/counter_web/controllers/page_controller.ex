defmodule CounterWeb.PageController do
  use CounterWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def fizzbuzz(conn, _params) do
    fizzbuzz = Enum.filter(1..100, fn(x) -> rem(x, 3) == 0 and rem(x, 5) == 0 end)
    render(conn, "index.html", result: fizzbuzz)
  end

  def fizz(conn, _params) do
    fizz = Enum.filter(1..100, fn(x) -> rem(x, 3) == 0 end)
    render(conn, "index.html", result: fizz)
  end

  def buzz(conn, _params) do
    buzz = Enum.filter(1..100, fn(x) -> rem(x, 5) == 0 end)
    render(conn, "index.html", result: buzz)
  end

  def other(conn, _params) do
    other = Enum.filter(1..100, fn(x) -> rem(x, 3) !== 0 and rem(x, 5) !== 0 end)
    render(conn, "index.html", result: other)
  end
end
