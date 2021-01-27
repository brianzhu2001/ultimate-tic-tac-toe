# Ultimate Tic-Tac-Toe
This is an ultimate tic-tac-toe application written in OCaml that runs in the command line. Included are 3 AI players, Random, Minimax, and Monte Carlo. You may play against another human player or against an AI player, or you may set any two of the AIs against each other and watch. See [the documentation](./doc.private/index.html) for details.

## Random
This agent chooses its moves randomly from the legal moves with equal probability for any one move. The difficulty setting for this agent is unused, and random players of any difficulty level play similarly. This is primarily meant as a fast agent for the Monte Carlo AI to use in simulations, and not as an actual opponent, but you may play it if you want.

## Minimax
This uses the minimax decision rule to choose the best move. It simulates all future gamestates to a lookahead depth equal to the difficulty, and any unresolved games at that depth are evaluated with a heuristic. The time complexity is exponential with respect to the lookahead depth, so the default difficulty used in computer vs computer games is only 4. 
 
### Heuristic evaluation of board states
The heuristic used is linear and zero-sum (If the gamestate for player 1 is evaluated to +12, it will be evaluated to -12 for player 2.). The weight of a given square is equal to the number of winning triples that include it.

## Monte Carlo Tree Search 
This agent uses the Monte Carlo Tree Search algorithm to decide the best move. For every legal move, it simulates a number of random games equal to the difficulty setting, and chooses the move with the greatest bootstrapped probability of victory. This runs in linear time with respect to the difficulty, so the default difficuly is 1000. This estimates the probability of victory within 3% with 95% confidence.

## Dependencies
This requires OCaml with the OUnit and ANSITerminal packages. 

## Usage
Run `make play` in the command line from this folder. The [main method](./main.ml) (scroll to the bottom) may be altered to change the difficulties of the agents when running computer vs computer games.

## Credits
This application was written in collaboration with Aahil Awatramani and Hyunjae Lee. 