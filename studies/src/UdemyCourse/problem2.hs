

data Rationnal = Rationnal Integer Integer

rational :: Integer -> Integer -> Rationnal

rational num den = Rationnal (div num mcd) (div den mcd)
    where
        mcd = gcd num den
        
numerator :: Rationnal -> Integer
numerator (Rationnal num den) = num

denominator :: Rationnal -> Integer
denominator (Rationnal num den) = den

instance Eq Rationnal where
    Rationnal num1 den1 == Rationnal num2 den2 = num1 == num2 && den1 == den2
    
instance Show Rationnal where
    show (Rationnal num den) = show num ++ "/" ++ show den
