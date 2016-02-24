defmodule Salsa20.Mixfile do
  use Mix.Project

  def project do
    [app: :salsa20,
     version: "0.0.1",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  def application do
    []
  end

  defp deps do
    [
    {:power_assert, "~> 0.0.8", only: :test},
    ]
  end
end
