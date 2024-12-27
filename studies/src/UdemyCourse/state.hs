import Control.Monad.State

-- Define a stateful computation to increment the counter
incrementCounter :: State Int ()
incrementCounter = do
    counter <- get
    put (counter + 1)

-- Define a stateful computation to decrement the counter
decrementCounter :: State Int ()
decrementCounter = do
    counter <- get
    put (counter - 1)

-- Main function to demonstrate stateful computations
main :: IO ()
main = do
    -- Initialize the state with an initial value of 0
    let initialState = 0

    -- Run the stateful computations using execState
    let finalState = execState (do { incrementCounter;
                        incrementCounter; decrementCounter; incrementCounter}) initialState

    -- Print the final state
    putStrLn $ "Final State: " ++ show finalState








