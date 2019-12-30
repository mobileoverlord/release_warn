defmodule ReleaseWarn.MixProject do
  use Mix.Project

  @app :release_warn

  def project do
    [
      app: @app,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      releases: [{@app, release()}],
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:dep, path: "dep"}
    ]
  end

  def release do
    [
      steps: [&Dep.init/1, :assemble]
    ]
  end
end
