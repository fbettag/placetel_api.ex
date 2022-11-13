defmodule PlacetelAPI.Mixfile do
  use Mix.Project
  @project_url "https://github.com/fbettag/placetel_api.ex"

  def project do
    [
      app: :placetel_api,
      version: "2.0.0",
      elixir: "~> 1.12",
      source_url: @project_url,
      homepage_url: @project_url,
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      package: package(),
      description: "Elixir wrapper for the Placetel API",
      aliases: aliases(),
      deps: deps(),
      dialyzer: [
        plt_add_deps: :apps_direct
      ]
    ]
  end

  defp aliases do
    [credo: "credo -a --strict"]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.3.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:tesla, "~> 1.4"},
      {:poison, "~> 3.0"},
      {:ex_doc, "~> 0.19", only: :dev},
      {:doctor, "~> 0.17.0", only: :dev},
      {:dialyxir, "~> 1.0", only: [:dev], runtime: false},
      {:credo, github: "rrrene/credo", only: [:dev, :test]},
      {:git_hooks, "~> 0.4.0", only: [:test, :dev], runtime: false}
    ]
  end

  defp package do
    [
      name: "placetel_api",
      maintainers: ["Franz Bettag"],
      licenses: ["MIT"],
      links: %{"GitHub" => @project_url},
      files: ~w(lib LICENSE README.md mix.exs)
    ]
  end
end
