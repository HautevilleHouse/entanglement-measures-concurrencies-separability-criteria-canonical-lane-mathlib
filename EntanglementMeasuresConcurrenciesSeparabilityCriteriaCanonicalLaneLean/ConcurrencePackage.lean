import EntanglementMeasuresConcurrenciesSeparabilityCriteriaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EntanglementMeasuresConcurrenciesSeparabilityCriteriaCanonicalLaneLean

structure ConcurrencePackage (A : AdmissibleClass) where
  densityMatrixReduced : Prop
  concurrenceFormula : Prop
  normalization : Prop
  range : Prop

def ConcurrenceClosed {A : AdmissibleClass} (C : ConcurrencePackage A) : Prop :=
  C.densityMatrixReduced ∧ C.concurrenceFormula ∧ C.normalization ∧ C.range

structure ConcurrenceEvidence {A : AdmissibleClass} (C : ConcurrencePackage A) where
  densityMatrixReducedClosed : C.densityMatrixReduced
  concurrenceFormulaClosed : C.concurrenceFormula
  normalizationClosed : C.normalization
  rangeClosed : C.range

theorem concurrence_closed_from_evidence {A : AdmissibleClass} (C : ConcurrencePackage A) (E : ConcurrenceEvidence C) : ConcurrenceClosed C :=
  And.intro E.densityMatrixReducedClosed (And.intro E.concurrenceFormulaClosed (And.intro E.normalizationClosed E.rangeClosed))

end EntanglementMeasuresConcurrenciesSeparabilityCriteriaCanonicalLaneLean
end HautevilleHouse
