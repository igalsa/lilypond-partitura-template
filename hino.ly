% Igor Alves
% Email: igor.a.snts@gmail.com

\version "2.18.2"
\language "portugues"

resCurta = \override BreathingSign.font-size = #-0.5
resNormal = \override BreathingSign.font-size = #1.2
introducao = ^\markup { \hspace #2 \musicglyph #"pedal.*" }
%enfatizar = { \override Lyrics.LyricText.font-shape = #'italic \override Lyrics.LyricText.font-series = #'bold }
%normal = { \revert Lyrics.LyricText.font-shape \revert Lyrics.LyricText.font-series }

\header
{
	title = \markup { { \fill-line { "1" "Cristo, meu Mestre..." " " } } }
	composer = "Leila Naylor Morris"
	tagline = \markup { \column { "" "" } }
}

\paper {
	indent = 0
	ragged-last-bottom = ##f
	system-count = #4
}

\score {
<<
	\new Staff
	<<
		\clef "treble"
		\new Voice = "Soprano"
		{
			\voiceOne
			\tempo "" 4=56-66
			\key mib \major
			\time 4/4
			sol'4 sol'8 sol'8 sib'4 sib'4 | mib'4 lab'8 lab'8 sol'2 \resCurta \breathe | do''4 do''8 do''8 sib'4 sol'8 sol'8 | sol'4 fa'8 fa'8 fa'2 \introducao \resNormal \breathe | sol'4 sol'8 sol'8 sib'4 sib'4 | do''4 re''8 mib''8 re''2 \resCurta \breathe | mib''4 re''8 do''8 sib'4 sol'8 sib'8 | sib'4 sib'8. lab'16 sol'2 \resNormal \breathe | do''4 re''8 mib''8 mib''4 mib'8\fermata \resNormal \breathe fa'8 | sol'4 sol'8. fa'16 mib'2 \bar "|." 
		}
		\new Voice = "Contralto"
		{
			\voiceTwo
			mib'4 mib'8 mib'8 fa'4 sib4 | do'4 mib'8 mib'8 mib'2 | mib'4 mib'8 mib'8 mib'4 sib8 sib8 | mib'4 mib'8 mib'8 re'2 | mib'4 mib'8 mib'8 fa'4 sol'4 | lab'4 lab'8 sol'8 fa'2 | mib'4 lab'8 lab'8 sol'4 mib'8 sol'8 | fa'4 fa'8. fa'16 mib'2 | mib'4 lab'8 lab'8 sol'4 mib'8\fermata mib'8 | mib'4 re'8. re'16 sib2 \bar "|."
		}	
		\new Lyrics \lyricsto "Soprano"
		{
			\set Lyrics.stanza = "1."
			Cris -- to, meu Mes -- tre e meu Se -- nhor, Eu Te a -- do -- ro, por fé, com fer -- vor; Ro -- go que guar -- des meu co -- ra -- ção; Vem pro -- te -- gê -- lo com Tu -- a un -- ção E de -- fen -- dê -- lo, ó meu Guar -- di -- ão.
		}
		\new Lyrics \lyricsto "Soprano"
		{
			\set Lyrics.stanza = "2."
			Mes -- tre di -- vi -- no, sem -- pre sen -- ti Meu co -- ra -- ção de -- pen -- den -- te de Ti; Bom fun -- da -- men -- to dá -- lhe, Se -- nhor, Dá -- lhe fir -- me -- za, vir -- tu -- de, va -- lor E for -- ta -- le -- za, ó meu Pro -- te -- tor.
		}
		\new Lyrics \lyricsto "Soprano"
		{
			\set Lyrics.stanza = "3."
			Va -- le pro -- fun -- do, chei -- o de mal, É es -- te mun -- do, ó Rei di -- vi -- nal. Só Tu -- a for -- ça po -- de man -- ter San -- to e pu -- ro, na gra -- ça, meu ser, Sem -- pre se -- gu -- ro, com fé e po -- der. }
		\new Lyrics \lyricsto "Soprano"
		{
			\set Lyrics.stanza = "4."
			Mes -- tre pie -- do -- so, com Tu -- a mão, Fa -- ze per -- fei -- to o meu co -- ra -- ção, San -- to,~ar -- do -- ro -- so em Te ser -- vir, Sem -- pre vol -- ta -- do aos bens do por -- vir; Mes -- tre a -- ma -- do, de -- se -- jo Te~ou -- vir.
		}
	>>
	\new Staff
	<<
		\clef "bass"
		\new Voice = "Tenor"
		{
			\voiceThree
			\key mib \major
			sib4 sib8 sib8 sib4 fa4 | sol4 do'8 lab8 sib2 \resCurta \breathe | lab4 lab8 lab8 sol4 mib8 mib8 | sol4 la8 la8 sib2 \resNormal \breathe | sib4 sib8 sib8 sib4 mib'4 | mib'4 sib8 sib8 sib2 \resCurta \breathe | sib4 mib'8 mib'8 mib'4 sib8 mib'8 | re'4 re'8. sib16 sib2 \resNormal \breathe | lab4 fa8 lab8 sib4 la8 \resNormal \breathe la8 | sib4 sib8. lab16 sol2 \bar "|."
		}
		\new Voice = "Baixo"
		{
			\voiceFour
			mib4 mib8 mib8 re4 re4 | do4 lab,8 do8 mib2 | lab4 lab8 lab8 mib4 mib8 mib8 | do4 fa8 fa8 sib,8 lab,8 sol,8 fa,8 | mib,4 mib8 mib8 re4 mib4 | lab4 sib8 sib8 sib4( lab4 | sol4) lab8 lab8 mib4 mib8 mib8 | sib,4 sib,8. re16 mib2 | lab,4 sib,8 do8 sib,4 dob8\fermata dob8 | sib,4 sib,4 mib,2 \bar "|."
		}
	>>
>>
}

\layout {
	%\context { \Staff }
	\context { \Voice \autoBeamOff }
	\context
	{
		\Score
		\override MetronomeMark.padding = #2
		\override MetronomeMark.extra-offset = #'(-8.3 . 0)
		\override MetronomeMark.font-size = #0
		\hide BarNumber
	}
	\context
	{
		\Lyrics
		\override LyricText.font-size = #0
		%\override LyricText.font-family = #'roman
		%\override LyricText.font-shape = #'italic
		%\override LyricText.font-name = #"Ubuntu"
		%\override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2
		%\override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #2 
	}
}
