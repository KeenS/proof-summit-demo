module Main

main : IO ()
main = putStrLn "Hello"

data Vect :
  (len : Nat)
  -> (elem : Type)
  -> Type
where
  Nil  : Vect Z elem
  (::) : (x : elem)
         -> (xs : Vect len elem)
         -> Vect (S len) elem

v : Vect 3 Int
v = [1, 2, 3]

append: Vect n a
        -> Vect m a
        -> Vect (n+m) a
append [] y = y
append (x :: xs) y = x :: append xs y

-- the : (a : Type) -> a -> a

specialTheorem : {A, B: Type} -> A -> B
specialTheorem x = specialTheorem x
