module Examples

  using ..AlphaZero

  include("../games/tictactoe/main.jl")
  export Tictactoe

  include("../games/connect-four/main.jl")
  export ConnectFour

  include("../games/grid-world/main.jl")
  export GridWorld

  include("../games/mancala/main.jl")
  export Mancala

  include("../games/cascade1/main.jl")
  export Cascade1

  const games = Dict(
    "grid-world" => GridWorld.GameSpec(),
    "tictactoe" => Tictactoe.GameSpec(),
    "connect-four" => ConnectFour.GameSpec(),
    "mancala" => Mancala.GameSpec(),
    "cascade1" => Cascade1.GameSpec()
    )
    # "ospiel_ttt" => OSpielTictactoe.GameSpec()
  # ospiel_ttt is added from openspiel_example.jl when OpenSpiel.jl is imported


  const experiments = Dict(
    "grid-world" => GridWorld.Training.experiment,
    "tictactoe" => Tictactoe.Training.experiment,
    "connect-four" => ConnectFour.Training.experiment,
    "mancala" => Mancala.Training.experiment,
    "cascade1" => Cascade1.Training.experiment
    )
    # "ospiel_ttt" => OSpielTictactoe.Training.experiment

end