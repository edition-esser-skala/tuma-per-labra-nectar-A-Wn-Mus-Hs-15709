\version "2.24.0"

\include "../definitions.ly"
\include "score_settings/full-score.ly"

\paper {
  system-system-spacing.basic-distance = #22
  system-system-spacing.minimum-distance = #22
  systems-per-page = #3
}

\book {
  \bookpart {
    \section "Per labra nectar bibitur"
    \addTocEntry
    \paper { indent = 3\cm }
    \score {
      <<
        \new StaffGroup <<
          \new Staff {
            \set Staff.instrumentName = "Violino"
            \PerLabraViolino
          }
          \new Staff {
            \set Staff.instrumentName = "Viola"
            \PerLabraViola
          }
        >>
        \new ChoirStaff <<
          \new Staff {
            \incipitAlto
            \new Voice = "Alto" { \dynamicUp \PerLabraAlto }
          }
          \new Lyrics \lyricsto Alto \PerLabraAltoLyrics
        >>
        \new StaffGroup <<
          \new Staff {
            \set Staff.instrumentName = \markup \center-column { "Organo" "e Bassi" }
            % \transpose c c,
            \PerLabraOrgano
          }
        >>
        \new FiguredBass { \PerLabraBassFigures }
      >>
      \layout { \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/16) }
      \midi { \tempo 4 = 60 } % 120
    }
  }
}
