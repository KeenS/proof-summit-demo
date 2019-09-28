data Vect :
  (len : Nat)
  -> (elem : Type)
  -> Type
where
  Nil  : Vect Z elem
  (::) : (x : elem)
         -> (xs : Vect len elem)
         -> Vect (S len) elem

filter: (a -> Bool)
        -> Vect n a
        -> (p ** Vect p a)
filter p [] = (_ ** [])
filter p (x :: xs) with (p x, filter p xs)
   filter p (x :: xs) | (True, (_ ** xs')) = (_ ** x :: xs')
   filter p (x :: xs) | (False, (_ ** xs')) = (_ ** xs')
