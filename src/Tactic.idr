import Pruviloj.Core

%language ElabReflection

modusPonens' : p -> (p -> q) -> q

-- modusPonens' : p -> (p -> q) -> q
-- modusPonens' = %runElab (do
--   intro `{{Hp}}
--   intro `{{Hpq}}
--   apply (Var `{{Hpq}}) [False]
--   solve
--   hypothesis
-- )

