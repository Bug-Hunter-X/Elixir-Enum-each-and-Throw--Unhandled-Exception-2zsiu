# Elixir Enum.each and Throw: Unhandled Exception

This example demonstrates an uncommon error in Elixir related to using `throw` inside `Enum.each`.  `Enum.each` doesn't inherently handle exceptions thrown within its callback function.  This can lead to unexpected behavior, specifically if the intention was to stop iteration upon a certain condition. 

The `bug.exs` file shows the problematic code. The `bugSolution.exs` file offers a better approach.

## How to reproduce the bug

1. Save the code in `bug.exs`.
2. Run the file from your Elixir terminal: `elixir bug.exs`
3. Observe that the program does not stop at '3', and the "Finished" message is printed even though the `throw` was intended to halt execution early.

## Solution

The provided solution (`bugSolution.exs`) uses `Enum.find` for a more controlled and idiomatic way of achieving the desired behavior. This approach gracefully stops the search when the condition is met.