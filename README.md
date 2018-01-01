# BungieNetAPI

These endpoints constitute the functionality exposed by Bungie.net, both for more traditional website functionality and for connectivity to Bungie video games and their related functionality.

> Automatically generated from [Open API 2 JSON](https://github.com/Bungie-net/api/blob/master/openapi-2.json)

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `bungie_net_api` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:bungie_net_api, "~> 0.1.0"}]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/bungie_net_api](https://hexdocs.pm/bungie_net_api).

## Usage

#### Create a client

```elixir
client = BungieNetAPI.Connection.new(token, api_key)

response = BungieNetAPI.Api.User.user_search_users(client, [:q: "some_query"])
```
