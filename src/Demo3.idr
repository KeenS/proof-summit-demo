data Vect :
  (len : Nat)
  -> (elem : Type)
  -> Type
where
  Nil  : Vect Z elem
  (::) : (x : elem)
         -> (xs : Vect len elem)
         -> Vect (S len) elem

-- ! screenkey --no-detach
append : Vect n a -> Vect m a -> Vect (n + m) a
