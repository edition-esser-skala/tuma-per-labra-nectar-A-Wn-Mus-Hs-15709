\version "2.24.0"

\include "../definitions.ly"
#(define option-instrument-name "vla")
\include "score_settings/one-staff.ly"

\book {
  \bookpart {
    \section "Per labra nectar bibitur"
    \addTocEntry
    \paper { indent = 1.5\cm }
    \score {
      <<
        \new Staff {
          \set Staff.instrumentName = "Viola"
          \PerLabraViola
        }
      >>
      \layout { \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/16) }
    }
  }
}
