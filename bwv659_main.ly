\version "2.25.26"

\include "bwv659_updated_absolutized.ly"

\header {
  tagline = ##f  % Removes LilyPond version info
}

bwv = <<
  \new PianoStaff {
    <<
      \context Staff = right {
        \context Voice = right \right
      }
      \context Staff = left {
        \context Voice = left \left
      }
    >>
  }
  \context Staff = pedal {
    \context Voice = pedal \pedal
  }
>>
