module Either where

data MyEither a b = left a | right b (deriving Show)

instance Monad (MyEither e) where
  return = Right
  Right m >>= k = k m
  Left e >>= _ = Left e


