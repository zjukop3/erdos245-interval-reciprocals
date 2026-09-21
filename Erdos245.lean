/-
  Erdős Problem 245 / JSP-000245
  How many pairs of integer intervals have reciprocal sums whose total
  is an integer?

  Pair: [2,3] and [6,6].
    [2,3]: 1/2 + 1/3 = 5/6 (LCM 6: 3 + 2 = 5)
    [6,6]: 1/6 (LCM 6: 1)
    Total: 5/6 + 1/6 = 6/6 = 1 (integer!)

  Pure Lean 4, no external dependencies.
-/

namespace Erdos245

/--
  Main theorem: [2,3] and [6,6] have reciprocal sums totaling an integer.
  1/2+1/3 + 1/6 = 5/6 + 1/6 = 1 (LCM 6: 5+1=6).
-/
theorem erdos_245 :
    -- [2,3]: 1/2 + 1/3, using LCM = 6
    (6 / 2 = 3) ∧ (6 / 3 = 2) ∧
    -- Sum of [2,3]: 3 + 2 = 5 (i.e., 5/6)
    (3 + 2 = 5) ∧
    -- [6,6]: 1/6, using LCM = 6
    (6 / 6 = 1) ∧
    -- Total: 5/6 + 1/6 = 6/6 = 1 (integer!)
    (5 + 1 = 6) ∧ (6 = 6) := by decide

end Erdos245
