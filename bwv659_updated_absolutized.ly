\version "2.24.0"

\include "nederlands.ly"

global = {
  \key g \minor
  \time 4/4
  #(set-accidental-style 'default)
  \override Score.MetronomeMark.transparent = ##t
}

#(set-global-staff-size 18)

sopran = {
  \new Voice {
    \global
    \voiceOne
    \set midiInstrument = #"flute"
    R1
    R1
    R1
    r4 g' g' fis'8 g'16 a'
    %% Takt  5 ==================================================
    bes'4~ bes'16 g' \appoggiatura a'16 g'32 fis' g'16 c''4~ c''16 a' \appoggiatura bes'16 a'32 g' a'16 \break
    d''4~ d''16 g'32 a' bes' c'' d''16 ees''8. d''16 c'' bes'32 a' a'16 bes'32 c''
    \appoggiatura g'16 fis'8 e'16  d' g'4~ g'32 a' g' fis' g'16 c''32 a' g'8( fis'!16.)\prall g'32
    g'2 r
    R1                                                                            \break
    %% Takt 10 ==================================================
    R1
    g'8 bes'16 a' bes'4\mordent c''~ c''16 bes' a' bes'
    c''16 d'' ees''8~ ees''16 c'' bes' c'' d'' ees'' f''8~ f''16 d'' c'' d''
    ees''16 f'' g''8~ g''16 c'' d'' ees'' \appoggiatura bes'16 a'8 g'16 f' f''4~                        \break
    f''16 g''32 f'' ees'' f'' d''16 ees''4~ ees''16 a''32 bes'' c'''16 ees'' d''4~
    %% Takt 15 ==================================================
    d''16 g' g'32\prall f' g'16 c''32 bes' a'16 bes'32 a' g'16 f'16 g'32 a' bes' c'' d'' ees'' f''4~
    f''16 g''32 f'' ees'' d'' c'' bes' d''8( c''16.)\prall bes'32 bes'2
    R1
    R1
    bes'8 c''32 bes' a' bes' c''8 d''32 c'' bes' c'' d''16 bes' a' bes' \appoggiatura bes'16 f''8. ees''32 d''
    %% Takt 20 ==================================================
    c''16 d''32 c'' b'16 c'' d'' ees''32 d'' c''16 d'' ees'' c'' b'! c'' \appoggiatura c''16 g''8. f''32 ees''
    d''16 g''32 a'' bes''!16 f'' ees''( d'') d''( c'') c'' fis''32 g'' a''16 ees'' d''( c'') c''( bes')
    bes'16 g''16. \set stemLeftBeamCount = #2 \set stemRightBeamCount = #3 f''!32 \set stemLeftBeamCount = #3 ees'' d'' c'' d'' c'' b' c''8~ c''16 ees''32 d'' c'' d'' ees''16~ ees''32 c'' aes' g' aes'8~
    aes'16 ees''32 d'' ees'' c'' b' c'' c'' aes' g' aes' aes' g' fis' g' fis'16 a'32 c'' ees''16 d'' d''4~
    d''32 g'' fis'' e'' d''16. c''32 bes'8( a'32\prall g') a'16 g'2
    %% Takt 25 ==================================================
    R1
    R1
    R1
    r4 g' \once \override TextScript.extra-offset = #'(0 . -0.8) g'^\markup { \hspace #0.3 \musicglyph #"scripts.mordent" \hspace #1 \musicglyph #"scripts.turn" } fis'8 g'16 a'
    bes'4~ bes'16 g' g'32\prall fis' g'16 c''4~ c''16 a' a'32\prall g' a'16
    %% Takt 30 ==================================================
    d''4~ d''16 g'32 a' bes' c'' d''16 ees''8. d''16 c'' bes'32 a' a'16 bes'32 c''
    \appoggiatura g'16 fis'8 e'16 d' g'4~ g'32 a' g' fis'! g' c'' a'16 g'8( fis'!16.\prall) g'32
    g'16 g'' f''!8~ f''16 ees''!32 d'' g'' f'' ees'' d'' f'' ees'' d'' c'' bes''!8~ bes''32 a'' bes'' c''' bes'' a'' g'' a''
    g''32 fis'' g'' a'' c''8~ c''32 ees'' d'' c'' d'' c'' bes' a' bes'16 g''32 ees'' cis'' d'' g'16 bes'8( a'32\prall g') a'16
    g'1\fermata
    \bar "|."
  }
}

alt = {
  \new Voice {
    \global
    \voiceThree
    \set midiInstrument = #"violin"
    \override Rest.direction = #UP
    \clef "bass"
    r2 r4 d'
    d'4 c' f'4. ees'16 d'
    ees'2 d'~
    d'4 c' d'2~
    %% Takt  5 ==================================================
    d'4 r8 bes~ bes a16 g a4
    r4 r8 g'~ g' fis' g' ees'
    d'4 r8 \clef "bass" bes ees'!4 d'8 c'~
    c'8 bes16 c' d'8 c'16 bes a4. bes16 c'
    d'8 ees' \clef "treble" f' g' c'4. d'16 ees'
    %% Takt 10 ==================================================
    f'4. g'16 f' ees'2
    d'4~ d'8 ees'16 f' g' f' ees' d' c'8 r
    r8 g' f'4~ f' r8 bes'
    bes'4 r8 g' f'4 r8 aes'
    g'4 r8 g' f'4 r8 f'
    %% Takt 15 ==================================================
    g'8 r g' r c' r r ees'
    d'8 g' f'16 d' ees'8~ ees' d'16 ees' f'8 ees'16 d'
    c'4. d'16 ees' f'2~
    f'8 ees'16 d' ees'8 c'' fis' g' a'4~
    a'8 g' f'!4~ f'8 ees' d' g'
    %% Takt 20 ==================================================
    a'8 r r bes' c'' r r a'
    bes'!4 r8 bes' a'4 r8 a'
    g'4 r16 f' g' f' g'8 r r16 d' ees' d'
    ees'8 r r ees' d' fis' g' a'
    d'8 g' r d'~ d' c'16 b c' ( d' ) d' ( ees'!)
    %% Takt 25 ==================================================
    ees'2~ ees'8 d'16 c' d'( ees') ees'( f'!)
    f'2~ f'16 ees'  g' ( f' ) f' ( ees' ) ees' ( d')
    d'16 aes' aes' ( g' ) g' ( f' ) f' ( ees' ) ees'8. f'16 d'8.\prall g'16
    ees'  f'  f' ( ees' ) ees' ( d' ) d' ( c' ) c' ( bes!) bes( a) a8 bes16 c'
    \clef "bass" fis4 r8 bes~ bes a16 g a4
    %% Takt 30 ==================================================
    r4 r8 \clef "treble" g'~ g' fis' g' ees'
    d'4 r8 \clef "bass" bes ees'!4 d'8 c'
    b8 c' d' b c'[ d'] c'[ d'16 bes]
    a8[ g] fis[ a16 ees'] d'4~ d'8. c'16~
    c'16 b f'! d' ees'4 d'2\fermata
  }
}

altzwei = {
  \new Voice {
    \global
    \voiceFour
    \set midiInstrument = #"clarinet"
    s1*33
    s16 \stemDown \tieDown \once \override Staff.NoteCollision.merge-differently-dotted = ##t b,8. \stemUp \shiftOn b16 b c8 b!2
  }
}

tenor = {
  \new Voice {
    \global
    \voiceTwo
    \set midiInstrument = #"viola"
    \override Rest.direction = #DOWN
    r4 g g f
    bes4. a16 g a4 g~
    g4 c'2 bes8 a
    g8 fis g a bes a16 g a4~
    %% Takt  5 ==================================================
    a8 g16 fis g4 r r8 c'~
    c'8 bes16 a bes8 \clef "treble" d'~ d'16 c'8 bes16 a g c'8
    a4 r8 g~ g c' a4
    g2~ g4 f!~
    f4 bes2 a4~
    %% Takt 10 ==================================================
    a8 b16 c' d'4~ d'8 c'16 b! c'4~
    c'8 bes!16 c' d'4 r8 g a r
    r8 bes c' a bes d'16 c' d'8 f'
    bes8 ees'16 d' c'4~ c'8 bes16 a bes c' d'8~
    d'8 c'16 b c'4~ c'8 bes!16 a! bes4~
    %% Takt 15 ==================================================
    bes8 r ees' r a r r a
    bes4. a8 f4 bes~
    bes4 a~ a8 b16 c' d' c' b a
    g4~ g8 a16 bes! c' d' ees'4 d'16 c'
    bes8 ees'4 d'16 c' bes4. bes8
    %% Takt 20 ==================================================
    f'8 r r f' g' f' ees'4
    r8 d' g' f' ees' d' r d'
    d'4 r16 d' ees' d' c'8 r r16 b c' b
    c'8 r r c'16 bes! a!8 c' d'16( c') c'( bes)
    bes8 g4 fis8 g2~
    %% Takt 25 ==================================================
    g8 g16 fis g( a) a( bes!) bes2~
    bes8 a16 g a( b) b( c') c'2~
    c'2~ c'8. d'16 b8._\prallprall a!32 b
    c'8 r r4 r2
    r8 d g4 r r8 c'~
    %% Takt 30 ==================================================
    c'8 bes16 a bes8 d'~ d'16 c'8 bes16 a g c' bes
    a4 r8 g~ g c' a4
    g8 a b! g~ g[ f] ees[ d16 ees]
    c8 ees d fis! g4~ g8 fis
    \once\override Tie.control-points = #'( ( 0.5 . -2.5 )
                                            ( 2.5 . -4.5 )
                                            ( 12.5 . -4.5 )
                                            ( 14.5 . -2.5 ) ) g4~ g8. fis16 g2
  }
}

right = {
  \clef "treble"
  \sopran
}

left = {
  <<
    \clef "alto"
    \alt
    \altzwei
    \tenor
  >>
}

pedal = {
  \global
  \clef "bass"
  \set midiInstrument = #"cello"

  {
    g,8 a, bes, c d ees d c
    bes, d f ees d c b, g,
    c bes,! a, g, fis, d, g, f,
    ees, d, ees,4 d,2~
    %% Takt  5 ==================================================
    d,8 d ees d e c f! e
    fis d g g, c d ees! c
    d c bes, ees! c a, d d,
    g, a, bes, c d ees d c
    bes, c d ees f g f ees
    %% Takt 10 ==================================================
    d c b, g, c d ees c
    g g, g f ees c f g
    a g a f bes bes, bes aes
    g f ees4~ ees8 ees, d, c
    b, g, c bes, a,! f, bes, d
    %% Takt 15 ==================================================
    ees  d ees d ees d ees c
    d ees f f, bes, c d ees
    f g f ees d c b, g,
    c d c bes,! a, g, fis, d,
    g, g a f! bes, c d ees
    %% Takt 20 ==================================================
    f f, ees, d, c, d, ees, c,
    g, g r g g fis r fis
    g f! ees4~ ees8 d c4~
    c8 c, c4~ c8 a, bes, fis,
    g,8 bes, c d ees f! ees d
    %% Takt 25 ==================================================
    c c, r c g, g f! ees
    d d, d g, c ees aes, c
    f, f ees aes g f g g,
    c d c bes,! a,! d, d4~
    d8 bes, ees d e c f! e
    %% Takt 30 ==================================================
    fis d g g, c d ees! c
    d c bes, ees c a, d d,
    g,1~
    g,2~ g,8 bes, d d,
    g,1_\fermata
  }
}

