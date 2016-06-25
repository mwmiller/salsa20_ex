defmodule Salsa20.Mixfile do
  use Mix.Project

  def project do
    [app: :salsa20,
     version: "0.3.1",
     elixir: "~> 1.3",
     name: "Salsa20",
     source_url: "https://github.com/mwmiller/salsa20_ex",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description,
     package: package,
     deps: deps]
  end

  def application do
    []
  end

  defp deps do
    [
      {:earmark, "~> 0.2", only: :dev},
      {:ex_doc, "~> 0.12", only: :dev},
    ]
  end

  defp description do
      """
      Salsa20 symmetric stream cipher
      """
  end
  defp package do
    [
     files: ["lib", "mix.exs", "README*", "LICENSE*", ],
     maintainers: ["Matt Miller"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/mwmiller/salsa20_ex",
              "Spec"   => "http://cr.yp.to/snuffle/spec.pdf",
              }
    ]
  end

end
