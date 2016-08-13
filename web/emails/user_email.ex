defmodule EmailSwoosh.UserEmail do
  import Swoosh.Email

  def welcome do
    new
    |> to({"Axel", "axelclark2@yahoo.com"})
    |> from({"Dr B Banner", "hulk@smash.com"})
    |> subject("Hello, Avengers!")
    |> html_body("<h1>Hello Axel</h1>")
    |> text_body("Hello Axel")
  end
end
