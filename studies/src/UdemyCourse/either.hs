secDiv :: Float -> Float -> Either String Float
secDiv _ 0 = Left "Division by Zero"
secDiv x y = Right (x / y)
