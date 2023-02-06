\version "2.24.0"

\include "../definitions.ly"
\include "score_settings/coro.ly"

\book {
  \bookpart {
    \section "Per labra nectar bibitur"
    \addTocEntry
    \paper {
      system-system-spacing.basic-distance = #20
      system-system-spacing.minimum-distance = #20
      systems-per-page = #6
      indent = 2\cm
    }
    \score {
      <<
        \new ChoirStaff <<
          \new Staff {
            \set Staff.instrumentName = "Alto"
            \new Voice = "Alto" { \dynamicUp \PerLabraAlto }
          }
          \new Lyrics \lyricsto Alto \PerLabraAltoLyrics
        >>
        \new Staff {
          \set Staff.instrumentName = "Organo"
          \PerLabraOrgano
        }
        \new FiguredBass { \PerLabraBassFigures }
      >>
      \layout { \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/16) }
    }
  }
}
