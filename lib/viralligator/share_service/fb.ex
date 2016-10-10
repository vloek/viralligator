defmodule Fb do
  use HTTPotion.Base

  def process_url(url) do
    "https://graph.facebook.com/?id=" 
      <> url 
      <> "&access_token=515263178664963|c3e8f07112daff2945b3abd70e023a20"
  end

  def process_response_body(body) do
    case body_fetcher(body) do
      {:ok, share} -> share["share_count"]
      _ -> 0
    end
  end

  def body_fetcher(body) do
    body
    |> Poison.decode!
    |> Map.fetch("share")
  end
end
