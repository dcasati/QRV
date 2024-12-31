<FLDIGI_DEFS>

<!-- type: bool; default: true
Ensure user wants to leave flgidi -->
<CONFIRMEXIT>0</CONFIRMEXIT>

<!-- type: bool; default: true
Show tx timer on menu bar -->
<SHOW_TX_TIMER>1</SHOW_TX_TIMER>

<!-- type: int; default: 5
TX deadman timeout in minutes -->
<TX_TIMEOUT>5</TX_TIMEOUT>

<!-- type: bool; default: true
Save current configuration on exit -->
<SAVECONFIG>1</SAVECONFIG>

<!-- type: bool; default: false
Noise test on/off -->
<NOISETEST>0</NOISETEST>

<!-- type: double; default: +20.0
Signal to Noise ratio for test -->
<SIGNAL2NOISE>20</SIGNAL2NOISE>

<!-- type: bool; default: false
RSID detector searches the entire passband -->
<RSIDWIDESEARCH>0</RSIDWIDESEARCH>

<!-- type: int; default: 5
RSID detection opens squelch for nn seconds -->
<RSIDSQUELCH>5</RSIDSQUELCH>

<!-- type: bool; default: false
Enable Reed Soloman ID decoding -->
<RECEIVERSID>1</RECEIVERSID>

<!-- type: bool; default: false
Send RSID at beginning and end of transmission -->
<TRANSMITRSID>0</TRANSMITRSID>

<!-- type: bool; default: true
Append marker (for the previous modem and frequency) to the RX text
widget before changing to the new modem and/or frequency -->
<RSIDMARK>1</RSIDMARK>

<!-- type: bool; default: false
Trigger RSID notifications but do not change modem and frequency -->
<RSIDNOTIFYONLY>0</RSIDNOTIFYONLY>

<!-- type: bool; default: false
Disable RSID detection when RsID signal is detected -->
<RSIDAUTODISABLE>0</RSIDAUTODISABLE>

<!-- type: bool; default: false
Transmit an RSID signal when modem data is concluded -->
<RSIDPOST>0</RSIDPOST>

<!-- type: mode_set_t; default: mode_set_t()
Mode names for which RSID reception is disabled -->
<RSIDRXMODESEXCLUDE>,</RSIDRXMODESEXCLUDE>

<!-- type: mode_set_t; default: mode_set_t()
Mode names for which RSID transmission is disabled -->
<RSIDTXMODESEXCLUDE>CW,BPSK-31,RTTY,,</RSIDTXMODESEXCLUDE>

<!-- type: int; default: 1
values (low, medium, high)  0, 1, 2 -->
<RSID_ERRORS>1</RSID_ERRORS>

<!-- type: bool; default: false
disable displaying the rsid warning dialog box -->
<DISABLE_RSID_WARNING_DIALOG_BOX>0</DISABLE_RSID_WARNING_DIALOG_BOX>

<!-- type: bool; default: true
Disable expensive processing in some decoders -->
<SLOWCPU>0</SLOWCPU>

<!-- type: bool; default: false
disable changing frequency on rsid modem change/reset -->
<DISABLERSIDFREQCHANGE>0</DISABLERSIDFREQCHANGE>

<!-- type: bool; default: true
retain frequency lock on rsid modem change/reset -->
<RETAINFREQLOCK>1</RETAINFREQLOCK>

<!-- type: double; default: -60.0
Input signal level transition (dB); -90 to 0 -->
<normal_signal_level>-60</normal_signal_level>

<!-- type: double; default: -6.0
Input signal level transition (dB); -90 to 0 -->
<high_signal_level>-6</high_signal_level>

<!-- type: double; default: -3.0
Input signal level transition (dB); -90 to 0 -->
<over_signal_level>-3</over_signal_level>

<!-- type: double; default: 0.0
Waterfall reference level (dB) -->
<WFREFLEVEL>0</WFREFLEVEL>

<!-- type: double; default: 60.0
Waterfall amplitude span (dB) -->
<WFAMPSPAN>60</WFAMPSPAN>

<!-- type: bool; default: true
WF_UI - enable reverse button -->
<WF_UIREV>1</WF_UIREV>

<!-- type: bool; default: true
WF_UI - enable scale multiplication button -->
<WF_UIX1>1</WF_UIX1>

<!-- type: int; default: 8
DROP_SPEED - slow rate waterfall drop speed -->
<DROP_SPEED>8</DROP_SPEED>

<!-- type: bool; default: true
WF_UI - enable wf carrier button -->
<WF_UIWFCARRIER>1</WF_UIWFCARRIER>

<!-- type: bool; default: true
WF_UI - enable wf shift buttons -->
<WF_UIWFSHIFT>1</WF_UIWFSHIFT>

<!-- type: bool; default: true
WF_UI - enable rf level and range controls -->
<WF_UIWFREFLEVEL>1</WF_UIWFREFLEVEL>

<!-- type: bool; default: true
WF_UI - enable wf drop rate control -->
<WF_UIWFDROP>1</WF_UIWFDROP>

<!-- type: bool; default: true
WF_UI - enable wf amp span control -->
<WF_UIWFAMPSPAN>1</WF_UIWFAMPSPAN>

<!-- type: bool; default: true
WF_UI - enable wf memory store button -->
<WF_UIWFSTORE>1</WF_UIWFSTORE>

<!-- type: bool; default: true
WF_UI - enable wf mode control -->
<WF_UIWFMODE>1</WF_UIWFMODE>

<!-- type: bool; default: true
WF_UI - enable wf qsy button -->
<WF_UIQSY>1</WF_UIQSY>

<!-- type: bool; default: true
WF_UI - enable wf transmit lock button -->
<WF_UIXMTLOCK>1</WF_UIXMTLOCK>

<!-- type: int; default: 0
Lowest frequency shown on waterfall (Hz) -->
<LOWFREQCUTOFF>0</LOWFREQCUTOFF>

<!-- type: int; default: 3000
Highest frequency shown on waterfall (Hz) -->
<HIGHFREQCUTOFF>3000</HIGHFREQCUTOFF>

<!-- type: double; default: 1500
Default CW tracking point (Hz) -->
<CWSWEETSPOT>1500</CWSWEETSPOT>

<!-- type: double; default: 1500
Default RTTY tracking point (Hz) -->
<RTTYSWEETSPOT>1500</RTTYSWEETSPOT>

<!-- type: double; default: 1500
Default tracking point for all other modems (Hz) -->
<PSKSWEETSPOT>900</PSKSWEETSPOT>

<!-- type: bool; default: true
Always start new modems at sweet spot frequencies -->
<STARTATSWEETSPOT>1</STARTATSWEETSPOT>

<!-- type: bool; default: false
Select if waterfall should compensate for BFO offset in CW -->
<CWOFFSET>0</CWOFFSET>

<!-- type: bool; default: false
Select if BFO is injected as LSB instead of USB -->
<CWISLSB>0</CWISLSB>

<!-- type: bool; default: true
encode/decode backslash character -->
<CW_blackslash>1</CW_blackslash>

<!-- type: bool; default: true
encode/decode single_quote character -->
<CW_single_quote>1</CW_single_quote>

<!-- type: bool; default: true
encode/decode dollar_sign character -->
<CW_dollar_sign>1</CW_dollar_sign>

<!-- type: bool; default: true
encode/decode open_paren character -->
<CW_open_paren>1</CW_open_paren>

<!-- type: bool; default: true
encode/decode close_paren character -->
<CW_close_paren>1</CW_close_paren>

<!-- type: bool; default: true
encode/decode colon character -->
<CW_colon>1</CW_colon>

<!-- type: bool; default: true
encode/decode semi_colon character -->
<CW_semi_colon>1</CW_semi_colon>

<!-- type: bool; default: true
encode/decode underscore character -->
<CW_underscore>1</CW_underscore>

<!-- type: bool; default: true
encode/decode at_symbol character -->
<CW_at_symbol>1</CW_at_symbol>

<!-- type: bool; default: true
encode/decode exclamation character -->
<CW_exclamation>1</CW_exclamation>

<!-- type: int; default: '*'
use CW_noise character to display invalid CW decodes -->
<CW_noise>42</CW_noise>

<!-- type: std::string; default: &quot;&quot;
Independent serial port used for keying DTR or RTS as keyline -->
<CW_KEYLINE_SERIAL_PORT_NAME></CW_KEYLINE_SERIAL_PORT_NAME>

<!-- type: int; default: 0
0 - none, 1 - RTS, 2 - DTR -->
<CWKEYLINE>0</CWKEYLINE>

<!-- type: bool; default: 0
0 - false, 1 - true; Kenwood xcvrs -->
<USE_KYWDKEYING>0</USE_KYWDKEYING>

<!-- type: bool; default: 0
0 - false, 1 - true; Elecraft xcvrs -->
<USE_ELCTKEYING>0</USE_ELCTKEYING>

<!-- type: bool; default: 0
0 - false, 1 - true -->
<USE_ICOMKEYING>0</USE_ICOMKEYING>

<!-- type: std::string; default: &quot;&quot;
Icom transceiver CIV address -->
<ICOMcivaddr></ICOMcivaddr>

<!-- type: bool; default: 0
0 - false, 1 - true -->
<USE_YAESUKEYING>0</USE_YAESUKEYING>

<!-- type: int; default: 0
compensate delays in CW CAT keying (msecs) -->
<CATKEYINGCOMP>0</CATKEYINGCOMP>

<!-- type: bool; default: 0
disable CAT ptt for text string CW -->
<CATKEYING_disable_ptt>0</CATKEYING_disable_ptt>

<!-- type: int; default: 0
compensate delays in set/clr DTR/RTS serial line
most likely required for Windows operating system
compensation value in msec -->
<cwio_comp>0</cwio_comp>

<!-- type: int; default: 0
flrig DTR/RTS keying -->
<use_FLRIGkeying>0</use_FLRIGkeying>

<!-- type: int; default: 0
0 - none, 1 - RTS, 2 - DTR -->
<PTTKEYLINE>0</PTTKEYLINE>

<!-- type: bool; default: 0
serial keyline parameter changed -->
<CW_KEYLINE_CHANGED>0</CW_KEYLINE_CHANGED>

<!-- type: bool; default: false
DTR/RTS keying shares RigCat serial port -->
<CW_KEYLINE_on_cat_port>0</CW_KEYLINE_on_cat_port>

<!-- type: bool; default: false
DTR/RTS keying shares ptt serial port
Note: ptt on DTR, keying on RTS or
      ptt on RTS, keying on DTR -->
<CW_KEYLINE_on_ptt_port>0</CW_KEYLINE_on_ptt_port>

<!-- type: bool; default: false
Replay audio history when changing frequency by clicking on
the waterfall -->
<WATERFALLHISTORYDEFAULT>0</WATERFALLHISTORYDEFAULT>

<!-- type: bool; default: false
Change rig frequency by dragging the mouse cursor on the waterfall
frequency scale area -->
<WATERFALLQSY>0</WATERFALLQSY>

<!-- type: bool; default: false
Insert text to the RX text widget when changing frequency by left
clicking on the waterfall -->
<WATERFALLCLICKINSERT>0</WATERFALLCLICKINSERT>

<!-- type: std::string; default: &quot;\n&lt;FREQ&gt;\n&quot;
Waterfall left click text for WATERFALLCLICKINSERT -->
<WATERFALLCLICKTEXT>
&lt;FREQ&gt;
</WATERFALLCLICKTEXT>

<!-- type: int; default: waterfall::WF_CARRIER
Describes how waterfall mouse wheel events are handled
  0: do nothing; 1: change AFC width or decoder bandwidth;
  2: signal search; 3: change squelch level; 4: change modem carrier;
  5: change modem; 6: scroll visible area.  The default is 4. -->
<WATERFALLWHEELACTION>4</WATERFALLWHEELACTION>

<!-- type: bool; default: false
Print Rx in lowercase for CW, RTTY, CONTESTIA and THROB -->
<RX_LOWERCASE>0</RX_LOWERCASE>

<!-- type: bool; default: false
Transmit all text in lowercase -->
<TX_LOWERCASE>0</TX_LOWERCASE>

<!-- type: int; default: 0
0 - PskCore filter
1 - Raised cosine / sinc filter
2 - G3PLX (gmfsk) filter -->
<PSKFILTER>0</PSKFILTER>

<!-- type: bool; default: true
Enable psk multi-channel detector - disable for very slow cpus -->
<PSKBROWSER_ON>1</PSKBROWSER_ON>

<!-- type: int; default: 50
PSK signal acquisition search range (Hz) -->
<PSKSEARCHRANGE>50</PSKSEARCHRANGE>

<!-- type: bool; default: false
Vestigial pilot tone on = 1, off = 0 -->
<PSKPILOT>0</PSKPILOT>

<!-- type: double; default: -30.0
Pilot tone relative power level -->
<PILOT_POWER>-30</PILOT_POWER>

<!-- type: double; default: 9.0
PSK signal acquisition S/N (dB) -->
<ACQSN>9</ACQSN>

<!-- type: bool; default: false
Send s2n report to pskmail client/server -->
<PSKMAILS2NREPORT>0</PSKMAILS2NREPORT>

<!-- type: bool; default: true
Behaviour of status (S/N and IMD) fields:
  0: Clear after timeout
  1: Dim after timeout
 -->
<STATUSDIM>1</STATUSDIM>

<!-- type: double; default: 15.0
Dim or Clear timeout (seconds) -->
<STATUSTIMEOUT>15</STATUSTIMEOUT>

<!-- type: bool; default: false
Reset to carrier when no signal is present -->
<PSKMAILSWEETSPOT>0</PSKMAILSWEETSPOT>

<!-- type: int; default: 50
Listen for signals within this range (Hz) -->
<PSKSERVEROFFSET>50</PSKSERVEROFFSET>

<!-- type: int; default: 1500
Default PSKMail listen / transmit frequency -->
<PSKSERVERCARRIER>1500</PSKSERVERCARRIER>

<!-- type: int; default: 25
Limit AFC movement to this range (Hz) -->
<PSKSERVERAFCRANGE>25</PSKSERVERAFCRANGE>

<!-- type: double; default: 9.0
Acquisition S/N (dB) -->
<PSKSERVERACGSN>9</PSKSERVERACGSN>

<!-- type: int; default: 1
1 - use Kahn power demodulator
0 - use ATC (Kok Chen) demodulator -->
<KAHNDEMOD>1</KAHNDEMOD>

<!-- type: bool; default: true
Enabled  - XY scope displays Mark/Space channel signals
Disabled - XY scope displays pseudo M/S signals -->
<TRUESCOPE>1</TRUESCOPE>

<!-- type: int; default: 3
Carrier shift (Hz). Values are as follows:
  0: 23; 1: 85; 2: 160; 3: 170; 4: 182; 5: 200; 6: 240; 7: 350;
  8: 425; 9: 850; -1: custom -->
<RTTYSHIFT>3</RTTYSHIFT>

<!-- type: int; default: 450
Custom shift (Hz) -->
<RTTYCUSTOMSHIFT>450</RTTYCUSTOMSHIFT>

<!-- type: double; default: 68.0
Receive filter bandwidth (Hz) -->
<RTTYBW>90.9</RTTYBW>

<!-- type: int; default: 0
Selective decoding of mark/space tones
0 - both
1 - mark only
2 - space only -->
<RTTYCWI>0</RTTYCWI>

<!-- type: double; default: 1.25
Rtty Rx Filter shape factor, K * (t/T)
You may alter this value using a text editor
change will be effective when restarting fldigi
K = 1.25; best for W1HKJ (default)
K = 1.5 - best for DO2SMF -->
<RTTYFILTER>1.25</RTTYFILTER>

<!-- type: int; default: 0
Carrier baud rate. Values are as follows:
  1: 45; 1: 45.45; 2: 50; 3: 56; 4: 75; 5: 100; 6: 110; 7: 150; 
  8: 200; 9: 300 -->
<RTTYBAUD>1</RTTYBAUD>

<!-- type: int; default: 0
Bits per character. Values are as follows:
  0: 5 (baudot); 1: 7 (ascii); 2: 8 (ascii) -->
<RTTYBITS>0</RTTYBITS>

<!-- type: int; default: rtty::RTTY_PARITY_NONE
Parity. Values are as folows:
  0: none; 1: even; 2: odd: 3: zero; 4: one -->
<RTTYPARITY>0</RTTYPARITY>

<!-- type: int; default: 1
Stop bits. Values are as folows:
  0: 1; 1: 1.5; 2: 2 -->
<RTTYSTOP>1</RTTYSTOP>

<!-- type: bool; default: false
This setting is currently unused -->
<RTTYREVERSE>0</RTTYREVERSE>

<!-- type: bool; default: false
This setting is currently unused -->
<RTTYMSBFIRST>0</RTTYMSBFIRST>

<!-- type: bool; default: false
Use "CR CR LF" for "CR LF" -->
<RTTYCRCLF>0</RTTYCRCLF>

<!-- type: bool; default: true
Automatically add CRLF after `page width' characters -->
<RTTYAUTOCRLF>1</RTTYAUTOCRLF>

<!-- type: int; default: 72
Page width for RTTYAUTOCRLF -->
<RTTYAUTOCOUNT>72</RTTYAUTOCOUNT>

<!-- type: int; default: 1
AFC tracking speed. Values are as follows:
  0: slow; 1: normal; 2: fast -->
<RTTYAFCSPEED>1</RTTYAFCSPEED>

<!-- type: bool; default: false
TRUE if DTR/RTS keying for RTTY EXPERIMENTAL - NOT USED -->
<USEFSK>0</USEFSK>

<!-- type: std::string; default: &quot;&quot;
Independent serial port EXPERIMENTAL - NOT USED -->
<RTTY_SERIAL_PORT_NAME></RTTY_SERIAL_PORT_NAME>

<!-- type: bool; default: false
Default to crosshair digiscope -->
<PREFERXHAIRSCOPE>0</PREFERXHAIRSCOPE>

<!-- type: bool; default: false
Generate Pseudo-FSK signal on right audio channel -->
<PSEUDOFSK>0</PSEUDOFSK>

<!-- type: bool; default: true
Enable kml server threads -->
<KMLSERVER_ENABLED>1</KMLSERVER_ENABLED>

<!-- type: bool; default: false
Decoding of Synop weather information on RTTY to ADIF log -->
<SYNOPADIFDECODING>0</SYNOPADIFDECODING>

<!-- type: bool; default: false
Decoding of Synop weather information on RTTY to KML file -->
<SYNOPKMLDECODING>0</SYNOPKMLDECODING>

<!-- type: bool; default: false
Decoding of Synop interleaved with coded text, or replaces it -->
<SYNOPINTERLEAVED>0</SYNOPINTERLEAVED>

<!-- type: bool; default: true
Revert to unshifted chars on a space (RX) -->
<UOSRX>1</UOSRX>

<!-- type: bool; default: true
Revert to unshifted chars on a space (TX) -->
<UOSTX>1</UOSTX>

<!-- type: bool; default: true
Use MARK frequency for logging -->
<USEMARKFREQ>1</USEMARKFREQ>

<!-- type: bool; default: true
Show <BEL> in Rx panel when  decoded -->
<visibleBELL>1</visibleBELL>

<!-- type: bool; default: true
Ring TTY bell tone when  decoded -->
<audibleBELL>1</audibleBELL>

<!-- type: double; default: 18
Transmit speed (WPM) -->
<CWSPEED>20</CWSPEED>

<!-- type: double; default: 18
Speed for Farnsworth timing (WPM) -->
<CWFARNSWORTH>18</CWFARNSWORTH>

<!-- type: bool; default: false
Use Farnsworth timing -->
<CWUSEFARNSWORTH>0</CWUSEFARNSWORTH>

<!-- type: double; default: 24
Default speed (WPM) -->
<CWDEFSPEED>24</CWDEFSPEED>

<!-- type: int; default: 150
Filter bandwidth (Hz) -->
<CWBANDWIDTH>150</CWBANDWIDTH>

<!-- type: double; default: 0.4
Detector hysterisis, lower threshold -->
<CWLOWER>0.4</CWLOWER>

<!-- type: double; default: 0.6
Detector hysterisis, upper threshold -->
<CWUPPER>0.6</CWUPPER>

<!-- type: int; default: 100
Matched Filter length -->
<CWMFILTLEN>100</CWMFILTLEN>

<!-- type: bool; default: true
Automatic receive speed tracking -->
<CWTRACK>1</CWTRACK>

<!-- type: bool; default: false
Matched Filter in use -->
<CWMFILT>0</CWMFILT>

<!-- type: bool; default: false
Self Organizing Map decoding -->
<CWUSESOMDECODING>0</CWUSESOMDECODING>

<!-- type: int; default: 10
Tracking range for CWTRACK (WPM) -->
<CWRANGE>10</CWRANGE>

<!-- type: int; default: 5
Lower RX limit (WPM) -->
<CWLOWERLIMIT>5</CWLOWERLIMIT>

<!-- type: int; default: 50
Upper TX limit (WPM) -->
<CWUPPERLIMIT>50</CWUPPERLIMIT>

<!-- type: int; default: 1
rx squelch attack timing
SLOW = 0 (100)
MEDIUM = 1 (50)
FAST = 2 (25) -->
<CWRX_ATTACK>1</CWRX_ATTACK>

<!-- type: int; default: 1
rx squelch decay timing
SLOW = 0 (1000)
MEDIUM = 1 (500)
FAST = 2 (250) -->
<CWRX_DECAY>1</CWRX_DECAY>

<!-- type: double; default: 3.0
Dash to dot ratio -->
<CWDASH2DOT>3</CWDASH2DOT>

<!-- type: bool; default: false
Generate QSK signal on right audio channel -->
<QSK>0</QSK>

<!-- type: double; default: 2000
QSK square wave fundamental frequency -->
<QSKfrequency>2000</QSKfrequency>

<!-- type: double; default: 4.0
Pre-keydown timing (milliseconds) -->
<CWPRE>4</CWPRE>

<!-- type: double; default: 0.8
Right channel QSK signal amplitude -->
<QSKAMP>0.8</QSKAMP>

<!-- type: double; default: 4.0
Post-keydown timing (milliseconds) -->
<CWPOST>4</CWPOST>

<!-- type: bool; default: false
Send callsign in CW at the end of every transmission -->
<CWID>0</CWID>

<!-- type: int; default: 18
CW ID speed (WPM) -->
<IDWPM>18</IDWPM>

<!-- type: mode_set_t; default: mode_set_t()
Mode names for which CWID transmission is disabled -->
<CWIDMODESEXCLUDE>CW,,</CWIDMODESEXCLUDE>

<!-- type: bool; default: false
Send a continuous stream of test characters as the QSK signal -->
<QSKADJUST>0</QSKADJUST>

<!-- type: int; default: 0
Test character for QSKADJUST (ASCII value) -->
<TESTCHAR>0</TESTCHAR>

<!-- type: int; default: 0
QSK edge shape. Values are as follows:
  0: Hanning; 1: Blackman;Raised cosine = Hanning. -->
<QSKSHAPE>0</QSKSHAPE>

<!-- type: double; default: 4.0
Leading and trailing edge rise times (milliseconds) -->
<QSKrisetime>4</QSKrisetime>

<!-- type: double; default: 4.0
Leading and trailing edge rise times (milliseconds) -->
<CWRISETIME>4</CWRISETIME>

<!-- type: bool; default: false
Enable filtering of transmit audio -->
<CW_BPF_ON>0</CW_BPF_ON>

<!-- type: double; default: 100.0
Transmit filter hi cutoff frequency
f0 +/- CW_bpf/2 -->
<CW_BPF>100</CW_BPF>

<!-- type: bool; default: false
Weight decreases with increasing edge timing -->
<CWNARROW>0</CWNARROW>

<!-- type: bool; default: false
Use open paren character; typically used in MARS ops -->
<CWUSEPAREN>0</CWUSEPAREN>

<!-- type: std::string; default: &quot;=~&lt;&gt;%+&amp;{}&quot;
CW prosigns BT AA AS AR SK KN INT HM VE -->
<CWPROSIGNS>=~&lt;&gt;%+&amp;{}</CWPROSIGNS>

<!-- type: bool; default: false
Display decoded prosign as assigned short cut key -->
<CW_prosign_display>0</CW_prosign_display>

<!-- type: bool; default: true
Use Ä extended CW character -->
<A_umlaut>1</A_umlaut>

<!-- type: bool; default: false
Use Æ extended CW character -->
<A_aelig>0</A_aelig>

<!-- type: bool; default: true
Use Ä extended CW character -->
<A_ring>1</A_ring>

<!-- type: bool; default: true
Use Ç extended CW character -->
<C_cedilla>1</C_cedilla>

<!-- type: bool; default: true
Use È extended CW character -->
<E_grave>1</E_grave>

<!-- type: bool; default: true
Use É extended CW character -->
<E_acute>1</E_acute>

<!-- type: bool; default: false
Use Ó extended CW character -->
<O_acute>0</O_acute>

<!-- type: bool; default: true
Use Ö extended CW character -->
<O_umlaut>1</O_umlaut>

<!-- type: bool; default: false
Use Ø extended CW character -->
<O_slash>0</O_slash>

<!-- type: bool; default: true
Use Ñ extended CW character -->
<N_tilde>1</N_tilde>

<!-- type: bool; default: true
Use Ü extended CW character -->
<U_umlaut>1</U_umlaut>

<!-- type: bool; default: false
Use Û extended CW character -->
<U_circ>0</U_circ>

<!-- type: bool; default: false
Mortty loaded with K3NG WinKeyer emulator sketch -->
<WK_K3NGsketch>0</WK_K3NGsketch>

<!-- type: double; default: 245.0
Feld Hell working bandwidth -->
<HELL_BW0>245</HELL_BW0>

<!-- type: double; default: 245.0
FH bandwidth -->
<HELL_BW1>245</HELL_BW1>

<!-- type: double; default: 30.0
Slow Hell bandwidth -->
<HELL_BW2>30</HELL_BW2>

<!-- type: double; default: 1225.
X5 Hell bandwidth -->
<HELL_BW3>1225</HELL_BW3>

<!-- type: double; default: 2205.0
X9 Hell bandwidth -->
<HELL_BW4>2205</HELL_BW4>

<!-- type: double; default: 250.0
FSKH-245 bandwidth -->
<HELL_BW5>250</HELL_BW5>

<!-- type: double; default: 120.0
FSKH-105 Hell bandwidth -->
<HELL_BW6>120</HELL_BW6>

<!-- type: double; default: 450.0
HELL-80 bandwidth -->
<HELL_BW7>450</HELL_BW7>

<!-- type: int; default: 2
Horizontal size multiplier for each hell character, 1, 2, or 3 -->
<HELLRCVWIDTH>2</HELLRCVWIDTH>

<!-- type: int; default: 20
Vertical char size in pixels -->
<HELLRCVHEIGHT>20</HELLRCVHEIGHT>

<!-- type: bool; default: false
Display RX in reverse video -->
<HELLBLACKBOARD>0</HELLBLACKBOARD>

<!-- type: bool; default: false
Display RX as scrolling marquee -->
<HELLMARQUEE>0</HELLMARQUEE>

<!-- type: int; default: 1
Transmit width (number of multiple scans per character line) -->
<HELLXMTWIDTH>1</HELLXMTWIDTH>

<!-- type: bool; default: false
Transmit periods (.) when idle -->
<HELLXMTIDLE>0</HELLXMTIDLE>

<!-- type: int; default: 1
Raised cosine pulse shape factor. Values are as follows:
  0: slow (4 ms)
  1: med (2 ms)
  2: fast (1 ms)
  3: Hard (off) -->
<HELLPULSEFAST>1</HELLPULSEFAST>

<!-- type: int; default: 2
1 - slow, 2 - medium, 3 - fast -->
<HELLAGC>2</HELLAGC>

<!-- type: int; default: 2
Number of tones. Values are as follows:
  0: 2; 1: 4; 2: 8; 3: 16; 4: 32; 5: 64; 6: 128; 7: 256 -->
<OLIVIATONES>2</OLIVIATONES>

<!-- type: int; default: 2
Bandwidth (Hz). Values are as follows:
  0: 125; 1: 250; 2: 500; 3: 1000; 4: 2000. -->
<OLIVIABW>2</OLIVIABW>

<!-- type: int; default: 8
Tune margin (tone frequency spacing) -->
<OLIVIASMARGIN>8</OLIVIASMARGIN>

<!-- type: int; default: 4
Integration period (FEC blocks) -->
<OLIVIASINTEG>4</OLIVIASINTEG>

<!-- type: bool; default: false
Force Integration (FEC) depth to be reset when new BW/Tones selected -->
<OLIVIARESETFEC>0</OLIVIARESETFEC>

<!-- type: bool; default: true
8-bit extended characters -->
<OLIVIA8BIT>1</OLIVIA8BIT>

<!-- type: bool; default: true
Send start/stop tones -->
<OLIVIASTARTTONES>1</OLIVIASTARTTONES>

<!-- type: int; default: 2
Number of tones. Values are as follows:
  0: 2; 1: 4; 2: 8; 3: 16; 4: 32; 5: 64; 6: 128; 7: 256 -->
<CONTESTIATONES>1</CONTESTIATONES>

<!-- type: int; default: 2
Bandwidth (Hz). Values are as follows:
  0: 125; 1: 250; 2: 500; 3: 1000; 4: 2000. -->
<CONTESTIABW>1</CONTESTIABW>

<!-- type: int; default: 8
Tune margin (tone frequency spacing) -->
<CONTESTIASMARGIN>8</CONTESTIASMARGIN>

<!-- type: int; default: 4
Integration period (FEC blocks) -->
<CONTESTIASINTEG>4</CONTESTIASINTEG>

<!-- type: bool; default: true
8-bit extended characters -->
<CONTESTIA8BIT>1</CONTESTIA8BIT>

<!-- type: bool; default: false
Force Integration (FEC) depth to be reset when new BW/Tones selected -->
<CONTESTIARESETFEC>0</CONTESTIARESETFEC>

<!-- type: bool; default: true
Send start/stop tones -->
<CONTESTIASTARTTONES>1</CONTESTIASTARTTONES>

<!-- type: double; default: 2.0
Filter bandwidth factor (bandwidth relative to signal width) -->
<THORBW>2</THORBW>

<!-- type: bool; default: true
Enable filtering before decoding -->
<THORFILTER>1</THORFILTER>

<!-- type: std::string; default: &quot;&quot;
Secondary text (sent during keyboard idle times) -->
<THORSECTEXT>K </THORSECTEXT>

<!-- type: int; default: 5
This setting is currently unused -->
<THORPATHS>5</THORPATHS>

<!-- type: double; default: 0.0
CWI threshold (CWI detection and suppression) -->
<THORCWI>0</THORCWI>

<!-- type: bool; default: true
Detect THOR preamble (and flush Rx pipeline) -->
<THORPREAMBLE>1</THORPREAMBLE>

<!-- type: bool; default: true
Enable Soft-symbol decoding -->
<THORSOFTSYMBOLS>1</THORSOFTSYMBOLS>

<!-- type: bool; default: true
Enable Soft-bit decoding -->
<THORSOFTBITS>1</THORSOFTBITS>

<!-- type: bool; default: false
No timestamps on RX packets by default -->
<PKTRXTIMESTAMP>0</PKTRXTIMESTAMP>

<!-- type: bool; default: false
decode received Mic-E data -->
<PKTEXPANDMICE>0</PKTEXPANDMICE>

<!-- type: bool; default: false
decode received PHG data -->
<PKTEXPANDPHG>0</PKTEXPANDPHG>

<!-- type: bool; default: false
decode received Compressed Position data -->
<PKTEXPANDCMP>0</PKTEXPANDCMP>

<!-- type: bool; default: false
display decoded data in SI units -->
<PKTUNITSSI>0</PKTUNITSSI>

<!-- type: bool; default: false
display decoded data in English units -->
<PKTUNITSENGLISH>0</PKTUNITSENGLISH>

<!-- type: double; default: 2.0
Filter bandwidth factor (bandwidth relative to signal width) -->
<DOMINOEXBW>2</DOMINOEXBW>

<!-- type: std::string; default: &quot;&quot;
Secondary text (sent during keyboard idle times) -->
<SECONDARYTEXT>K </SECONDARYTEXT>

<!-- type: bool; default: true
Enable filtering before decoding -->
<DOMINOEXFILTER>1</DOMINOEXFILTER>

<!-- type: bool; default: false
Enable MultiPSK-compatible FEC -->
<DOMINOEXFEC>0</DOMINOEXFEC>

<!-- type: int; default: 5
This setting is currently unused -->
<DOMINOEXPATHS>5</DOMINOEXPATHS>

<!-- type: double; default: 0.0
CWI threshold (CWI detection and suppression) -->
<DOMCWI>0</DOMCWI>

<!-- type: bool; default: true
8-bit extended characters -->
<MT638BIT>1</MT638BIT>

<!-- type: bool; default: false
Long receive integration -->
<MT63INTEGRATION>1</MT63INTEGRATION>

<!-- type: bool; default: true
Also transmit upper start tone (only if MT63USETONES is enabled) -->
<MT63TWOTONES>1</MT63TWOTONES>

<!-- type: bool; default: true
Transmit lower start tone -->
<MT63USETONES>1</MT63USETONES>

<!-- type: int; default: 4
Tone duration (seconds) -->
<MT63TONEDURATION>4</MT63TONEDURATION>

<!-- type: bool; default: false
Always transmit lowest tone at 500 Hz -->
<MT63AT500>0</MT63AT500>

<!-- type: bool; default: false
Always transmit centered at 1500 Hz (SHARES requirement) -->
<MT63CENTERED>1</MT63CENTERED>

<!-- type: int; default: 1
0 - 1150 Hz, 1 - 1500 Hz, 2 - Variable -->
<FSQFREQUENCY>1</FSQFREQUENCY>

<!-- type: int; default: 4
size of moving average filter for bin filtering
value 2 to 8 -->
<FSQMOVAVG>4</FSQMOVAVG>

<!-- type: double; default: 2
0 - 300 Hz, 1 - 400 Hz, 2 - 500 Hz (default) -->
<FSQIMGFILTER>2</FSQIMGFILTER>

<!-- type: double; default: 4.5
6, 4.5, 3 or 2 baud -->
<FSQBAUD>4.5</FSQBAUD>

<!-- type: int; default: 3
3 / 6 -->
<FSQHITS>3</FSQHITS>

<!-- type: bool; default: false
FSQCALL directed mode -->
<FSQDIRECTED>0</FSQDIRECTED>

<!-- type: bool; default: false
Show fsq monitor text panel -->
<FSQSHOWMONITOR>0</FSQSHOWMONITOR>

<!-- type: bool; default: true
Symbol averaging: true = fast, false = slow -->
<FSQFASTAVG>1</FSQFASTAVG>

<!-- type: std::string; default: &quot;cq cq cq de nocall&quot;
QTC text string -->
<FSQQTCTEXT>cq cq cq de nocall</FSQQTCTEXT>

<!-- type: int; default: 0
0 - NEVER (default)
1 - 1 minute, 2 - 5 minutes, 3 - 10 minutes
4 - 20 minutes, 5 - 30 minutes -->
<FSQHEARDAGING>0</FSQHEARDAGING>

<!-- type: int; default: 0
0 - OFF (default)
1 - 1 minute, 2 - 10 minutes, 3 - 30 minutes -->
<FSQSOUNDER>0</FSQSOUNDER>

<!-- type: bool; default: 0
0 - NO, 1 - YES
convert operator MYCALL to lower case for directed call triggers -->
<FSQLOWERCASE>0</FSQLOWERCASE>

<!-- type: int; default: 6
Time out auto replies after XX seconds -->
<FSQTIMEOUT>6</FSQTIMEOUT>

<!-- type: int; default: 10
FSQ notifier dialog time out XX seconds
00 == no time out -->
<FSQNOTIFYTIMEOUT>10</FSQNOTIFYTIMEOUT>

<!-- type: bool; default: 1
FSQ enable heard log file -->
<FSQ_ENABLE_HEARD_LOG>1</FSQ_ENABLE_HEARD_LOG>

<!-- type: std::string; default: &quot;fsq_heard_log.txt&quot;
FSQ heard log pathname -->
<FSQ_HEARD_LOG>fsq_heard_log.txt</FSQ_HEARD_LOG>

<!-- type: bool; default: 1
FSQ enable audit log file -->
<FSQ_ENABLE_AUDIT_LOG>1</FSQ_ENABLE_AUDIT_LOG>

<!-- type: std::string; default: &quot;fsq_audit_log.txt&quot;
FSQ audit log pathname -->
<FSQ_AUDIT_LOG>fsq_audit_log.txt</FSQ_AUDIT_LOG>

<!-- type: Fl_Color; default: FL_RED
Color for FSQ xmt text -->
<FSQXMTCOLOR>88</FSQXMTCOLOR>

<!-- type: Fl_Color; default: FL_BLUE
Color for FSQ directed text -->
<FSQDIRECTEDCOLOR>216</FSQDIRECTEDCOLOR>

<!-- type: Fl_Color; default: FL_DARK_GREEN
Color for FSQ undirected text -->
<FSQUNDIRECTEDCOLOR>60</FSQUNDIRECTEDCOLOR>

<!-- type: bool; default: 1
Add date-time stamp to each # type received message -->
<ADDFSQMSGDT>1</ADDFSQMSGDT>

<!-- type: bool; default: 1
Enable to always append # directive messages to named file -->
<ALWAYS_APPEND>1</ALWAYS_APPEND>

<!-- type: int; default: 1
1, 2, 3 -->
<IFKPBAUD>1</IFKPBAUD>

<!-- type: bool; default: 1
IFKP enable heard log file -->
<IFKP_ENABLE_HEARD_LOG>1</IFKP_ENABLE_HEARD_LOG>

<!-- type: std::string; default: &quot;ifkp_heard_log.txt&quot;
IFKP heard log pathname -->
<IFKP_HEARD_LOG>ifkp_heard_log.txt</IFKP_HEARD_LOG>

<!-- type: bool; default: 1
IFKP enable audit log file -->
<IFKP_ENABLE_AUDIT_LOG>1</IFKP_ENABLE_AUDIT_LOG>

<!-- type: std::string; default: &quot;ifkp_audit_log.txt&quot;
IFKP audit log pathname -->
<IFKP_AUDIT_LOG>ifkp_audit_log.txt</IFKP_AUDIT_LOG>

<!-- type: bool; default: 1
0 - NO, 1 - YES
convert operator MYCALL to lower case for all IFKP macros -->
<IFKPLOWERCASE>1</IFKPLOWERCASE>

<!-- type: bool; default: 1
0 - NO, 1 - YES
convert other CALLSIGN to lower case for all IFKP macros -->
<IFKPCALLLOWERCASE>1</IFKPCALLLOWERCASE>

<!-- type: bool; default: 1
0 - NO, 1 - YES
Always t/r at 1500 Hz -->
<IFKPFREQLOCK>1</IFKPFREQLOCK>

<!-- type: int; default: 1
Waterfal FFT prefilter window function. Values are as follows:
  0: Rectangular; 1: Blackman; 2: Hamming; 3: Hanning; 4: Triangular -->
<WFPREFILTER>1</WFPREFILTER>

<!-- type: bool; default: true
Use FFT averaging to decrease waterfall noise -->
<WFAVERAGING>1</WFAVERAGING>

<!-- type: int; default: 8
Waterfal latency, 1...16 -->
<WF_LATENCY>8</WF_LATENCY>

<!-- type: bool; default: true
Draw cursor with vertical lines -->
<USECURSORLINES>1</USECURSORLINES>

<!-- type: bool; default: true
Draw cursor center line -->
<USECURSORCENTERLINE>1</USECURSORCENTERLINE>

<!-- type: bool; default: true
Draw bandwidth marker with vertical lines -->
<USEBWTRACKS>1</USEBWTRACKS>

<!-- type: bool; default: false
Draw bandwidth marker with 3x vertical lines -->
<USEWIDETRACKS>0</USEWIDETRACKS>

<!-- type: bool; default: false
Draw cursor with 3x vertical lines -->
<USEWIDECURSOR>0</USEWIDECURSOR>

<!-- type: bool; default: false
Draw center line marker with 3x vertical lines -->
<USEWIDECENTER>0</USEWIDECENTER>

<!-- type: RGBI; default: {255, 255, 0, 255}
Color of cursor lines (RGBI) -->
<CLCOLORS>255 255 0</CLCOLORS>

<!-- type: RGBI; default: {255, 255, 255, 255}
Color of cursor center line (RGBI) -->
<CCCOLORS>255 255 255</CCCOLORS>

<!-- type: RGBI; default: {255, 0, 0, 255}
Color of bandwidth marker (RGBI) -->
<BWTCOLORS>255 0 0</BWTCOLORS>

<!-- type: RGBI; default: {255, 255, 255, 255}
Color of notch marker (RGBI) -->
<NOTCHCOLORS>255 255 255</NOTCHCOLORS>

<!-- type: RGBI; default: {255, 120, 0, 255}
Color of RTTY MARK freq marker (RGBI) -->
<RTTYMARKRGBI>255 120 0</RTTYMARKRGBI>

<!-- type: int; default: 4
Index of raster font used for transmission -->
<FELDFONTNBR>4</FELDFONTNBR>

<!-- type: bool; default: true
Show transmit signal on waterfall -->
<VIEWXMTSIGNAL>1</VIEWXMTSIGNAL>

<!-- type: bool; default: false
Send video ID containing modem name -->
<SENDID>0</SENDID>

<!-- type: bool; default: false
This setting is currently unused -->
<MACROID>0</MACROID>

<!-- type: bool; default: false
Send video ID containing arbitrary text -->
<SENDTEXTID>0</SENDTEXTID>

<!-- type: std::string; default: &quot;CQ&quot;
Video ID text for SENDTEXTID (keep short!) -->
<STRTEXTID>CQ</STRTEXTID>

<!-- type: double; default: 0.0
Single tone at center of modem BW, carrier detect for amplifiers -->
<PRETONE>0</PRETONE>

<!-- type: bool; default: false
Decode received DTMF tones -->
<DTMFDECODE>0</DTMFDECODE>

<!-- type: int; default: 1
Video ID text width (characters per row) -->
<VIDEOWIDTH>1</VIDEOWIDTH>

<!-- type: bool; default: true
Limit video width to 500 Hz -->
<VIDLIMIT>1</VIDLIMIT>

<!-- type: bool; default: true
Limit video width to mode bandwidth -->
<VIDMODELIMIT>1</VIDMODELIMIT>

<!-- type: bool; default: true
Use small video ID font -->
<IDSMALL>1</IDSMALL>

<!-- type: mode_set_t; default: mode_set_t()
Mode names for which Video ID transmission is disabled -->
<VIDEOIDMODESEXCLUDE>CW,BPSK-31,RTTY,,</VIDEOIDMODESEXCLUDE>

<!-- type: bool; default: true
Docked rig control -->
<DOCKEDRIGCONTROL>1</DOCKEDRIGCONTROL>

<!-- type: int; default: 125
Waterfall height (pixels) -->
<WFHEIGHT>125</WFHEIGHT>

<!-- type: bool; default: true
Show tooltips -->
<TOOLTIPS>1</TOOLTIPS>

<!-- type: bool; default: true
Prompt to save log -->
<NAGME>1</NAGME>

<!-- type: bool; default: false
Clear log fields on save -->
<CLEARONSAVE>0</CLEARONSAVE>

<!-- type: bool; default: true
Sort log by date/time off -->
<SORTDATEOFF>1</SORTDATEOFF>

<!-- type: bool; default: false
Force date/time ON == OFF -->
<FORCEDATETIME>0</FORCEDATETIME>

<!-- type: bool; default: true
Show menu icons -->
<MENUICONS>1</MENUICONS>

<!-- type: mode_set_t; default: mode_set_t()
Modes that are not shown in the opmodes menu -->
<VISIBLEMODES>,</VISIBLEMODES>

<!-- type: bool; default: true
Double-click on RX text enters QSO data -->
<RXTEXTCLICKS>1</RXTEXTCLICKS>

<!-- type: bool; default: true
Show callsign tooltips in received text -->
<RXTEXTTOOLTIPS>1</RXTEXTTOOLTIPS>

<!-- type: bool; default: false
Auto-fill Country and Azimuth QSO fields -->
<AUTOFILLQSO>0</AUTOFILLQSO>

<!-- type: bool; default: true
Convert callsign field to upper case -->
<CALLUPPERCASE>1</CALLUPPERCASE>

<!-- type: bool; default: true
Default outgoing RST to 599/59 -->
<RSTDEFAULT>1</RSTDEFAULT>

<!-- type: bool; default: true
Default incoming RST to 599/59 -->
<RSTINDEFAULT>1</RSTINDEFAULT>

<!-- type: bool; default: true
Enable detection and extraction of "wrapped" text -->
<AUTOEXTRACT>1</AUTOEXTRACT>

<!-- type: bool; default: true
Open flmsg with the autoextract file -->
<OPEN_FLMSG>1</OPEN_FLMSG>

<!-- type: bool; default: true
Transfer incoming flmsg autosend file to open flmsg application -->
<FLMSG_TRANSFER_DIRECT>1</FLMSG_TRANSFER_DIRECT>

<!-- type: bool; default: true
Open flmsg with the autoextract file
print to browser
close flmsg -->
<OPEN_FLMSG_PRINT>1</OPEN_FLMSG_PRINT>

<!-- type: bool; default: false
Open NBEMS folder upon receipt of an autoextract file -->
<OPEN_NBEMS_FOLDER>1</OPEN_NBEMS_FOLDER>

<!-- type: std::string; default: &quot;&quot;
Full pathname to the flmsg executable -->
<FLMSG_PATHNAME>/usr/bin/flmsg -na flmsg</FLMSG_PATHNAME>

<!-- type: std::string; default: &quot;dinner_bell&quot;
audio alert audio clip name / file -->
<BWSR_REGEX_MATCH>dinner_bell</BWSR_REGEX_MATCH>

<!-- type: int; default: 8
menu selector -->
<REGEX_ALERT_MENU>8</REGEX_ALERT_MENU>

<!-- type: bool; default: false
enable audio alert when regex match is detected in browser -->
<ENABLE_BWSR_REGEX_MATCH>0</ENABLE_BWSR_REGEX_MATCH>

<!-- type: std::string; default: &quot;dinner_bell&quot;
audio alert audio clip name / file -->
<BWSR_MYCALL_MATCH>dinner_bell</BWSR_MYCALL_MATCH>

<!-- type: int; default: 8
menu selector -->
<MYCALL_ALERT_MENU>8</MYCALL_ALERT_MENU>

<!-- type: bool; default: false
enable audio alert when MYCALL is detected in browser -->
<ENABLE_BWSR_MYCALL_MATCH>0</ENABLE_BWSR_MYCALL_MATCH>

<!-- type: double; default: 2.0
Abort message extraction after nn.n seconds of inactivity -->
<EXTRACT_TIMEOUT>2</EXTRACT_TIMEOUT>

<!-- type: std::string; default: &quot;phone&quot;
audio alert audio clip name / file -->
<RX_EXTRACT_MSG_RCVD>phone</RX_EXTRACT_MSG_RCVD>

<!-- type: int; default: 7
menu selector -->
<RX_EXTRACT_ALERT_MENU>7</RX_EXTRACT_ALERT_MENU>

<!-- type: bool; default: false
enable audio alert when flmsg received -->
<ENABLE_RX_EXTRACT_MSG_RCVD>0</ENABLE_RX_EXTRACT_MSG_RCVD>

<!-- type: std::string; default: &quot;beeboo&quot;
audio alert audio clip name / file -->
<RX_EXTRACT_TIMED_OUT>beeboo</RX_EXTRACT_TIMED_OUT>

<!-- type: int; default: 6
menu selector -->
<TIMED_OUT_ALERT_MENU>6</TIMED_OUT_ALERT_MENU>

<!-- type: bool; default: false
enable audio alert when flmsg reception times out -->
<ENABLE_RX_EXTRACT_TIMED_OUT>0</ENABLE_RX_EXTRACT_TIMED_OUT>

<!-- type: std::string; default: &quot;phone&quot;
audio alert audio clip name / file -->
<RSID_MATCH>phone</RSID_MATCH>

<!-- type: int; default: 7
menu selector -->
<RSID_ALERT_MENU>7</RSID_ALERT_MENU>

<!-- type: bool; default: false
enable audio alert when RsID is detected -->
<ENABLE_RSID_MATCH>0</ENABLE_RSID_MATCH>

<!-- type: std::string; default: &quot;rtty_bell&quot;
RTTY bell ring audio clip name / file -->
<BELL_RING>rtty_bell</BELL_RING>

<!-- type: int; default: 9
menu selector -->
<BELL_RING_MENU>9</BELL_RING_MENU>

<!-- type: int; default: 50
Audio alert stream volume -->
<alert_volume>50</alert_volume>

<!-- type: int; default: 0
monitor transceiver audio on alert audio device -->
<mon_xcvr_audio>0</mon_xcvr_audio>

<!-- type: int; default: 0
monitor dsp filter output for selected modem @ waterfall frequency -->
<mon_dsp_audio>0</mon_dsp_audio>

<!-- type: int; default: 50
Audio stream volume -->
<RxFilt_vol>50</RxFilt_vol>

<!-- type: int; default: 500
DSP audio stream filter bandwidth -->
<RxFilt_bw>500</RxFilt_bw>

<!-- type: int; default: 1500
DSP audio stream filter mid frequency -->
<RxFilt_mid>1500</RxFilt_mid>

<!-- type: int; default: 1250
DSP audio stream filter low frequency cutoff -->
<RxFilt_low>1250</RxFilt_low>

<!-- type: int; default: 1750
DSP audio stream filter high frequency cutoff -->
<RxFilt_high>1750</RxFilt_high>

<!-- type: int; default: 0
Rx filter tracks waterfall cursor movement -->
<RxFilt_track_wf>0</RxFilt_track_wf>

<!-- type: std::string; default: &quot;&quot;
Full pathname to the cty.dat data file -->
<CTYDAT_PATHNAME>/home/user/.fldigi/</CTYDAT_PATHNAME>

<!-- type: bool; default: false
Capture text to file 'talk/textout.txt' -->
<SPEAK>0</SPEAK>

<!-- type: bool; default: false
Connect to Digitalk socket server during program initialization -->
<AUTO_TALK>0</AUTO_TALK>

<!-- type: int; default: QRZXMLNONE
Callsign xml query type.  Values are as follows:
  0: none; 1: QRZ (paid sub.); 2: QRZ cdrom; 3: HamCall (paid sub.);
  4: callook free US calls xml service; 5: hamQTH free xml service.
  The default is none. -->
<QRZXMLTYPE>0</QRZXMLTYPE>

<!-- type: std::string; default: &quot;https://www.hamcall.net/&quot;
web address of hamcall -->
<HAMCALLURL>https://www.hamcall.net/</HAMCALLURL>

<!-- type: std::string; default: &quot;https://www.hamqth.com/&quot;
web address of hamqth -->
<HAMQTHURL>https://www.hamqth.com/</HAMQTHURL>

<!-- type: std::string; default: &quot;http://www.qrz.com/&quot;
web address of QRZ.com -->
<QRZURL>http://www.qrz.com/</QRZURL>

<!-- type: std::string; default: &quot;https://callook.info/&quot;
web address of callook -->
<CALLOOKURL>https://callook.info/</CALLOOKURL>

<!-- type: int; default: QRZWEBNONE
Callsign browser query type.  Values are as follows:
  0: none; 1: QRZ web browser; 2: HamCall web browser
  3: hamQTH web browser.
  The default is none. -->
<QRZWEBTYPE>0</QRZWEBTYPE>

<!-- type: std::string; default: &quot;&quot;
QRZ cdrom path -->
<QRZPATHNAME></QRZPATHNAME>

<!-- type: std::string; default: &quot;&quot;
QRZ or HamCall subscriber username -->
<QRZUSER></QRZUSER>

<!-- type: std::string; default: &quot;&quot;
QRZ or HamCall subscriber password -->
<QRZPASSWORD></QRZPASSWORD>

<!-- type: bool; default: false
Populate logbook notes (comment) field with mailing address -->
<NOTES_ADDRESS>0</NOTES_ADDRESS>

<!-- type: bool; default: true
Clear notes control when making a new QRZ query -->
<CLEAR_NOTES>1</CLEAR_NOTES>

<!-- type: std::string; default: &quot;http://www.eqsl.cc/qslcard/importADIF.cfm?ADIFdata=&quot;
eQSL web site -->
<EQSL_url>http://www.eqsl.cc/qslcard/importADIF.cfm?ADIFdata=</EQSL_url>

<!-- type: std::string; default: &quot;&quot;
eQSL login id -->
<EQSL_ID></EQSL_ID>

<!-- type: std::string; default: &quot;&quot;
eQSL login password -->
<EQSL_PASSWORD></EQSL_PASSWORD>

<!-- type: std::string; default: &quot;&quot;
eQSL nickname -->
<EQSL_NICKNAME></EQSL_NICKNAME>

<!-- type: std::string; default: &quot;&quot;
eQSl default message -->
<EQSL_DEF_MSG></EQSL_DEF_MSG>

<!-- type: bool; default: false
Send eQSL when other log action invoked -->
<EQSL_WHEN_LOGGED>0</EQSL_WHEN_LOGGED>

<!-- type: bool; default: false
Send logbook date/time off vice date on (default) -->
<EQSL_DATETIME_OFF>0</EQSL_DATETIME_OFF>

<!-- type: bool; default: true
Show timed delivery message for successful eQSL upload -->
<EQSL_SHOW_DELIVERY>1</EQSL_SHOW_DELIVERY>

<!-- type: bool; default: false
Send adif record to LoTW -->
<SUBMIT_LOTW>0</SUBMIT_LOTW>

<!-- type: bool; default: true
Add -q to tqsl command line parameters -->
<LOTW_QUIET_MODE>1</LOTW_QUIET_MODE>

<!-- type: std::string; default: &quot;&quot;
Path-name of tqsl executable -->
<LOTW_PATHNAME></LOTW_PATHNAME>

<!-- type: std::string; default: &quot;&quot;
Password to access tqsl executable -->
<LOTW_PASSWORD></LOTW_PASSWORD>

<!-- type: bool; default: true
Send -p <password> with each upload  -->
<SUBMIT_LOTW_PASSWORD>1</SUBMIT_LOTW_PASSWORD>

<!-- type: bool; default: true
Show timed delivery message for successful LoTW upload -->
<LOTW_SHOW_DELIVERY>1</LOTW_SHOW_DELIVERY>

<!-- type: std::string; default: &quot;&quot;
Tqsl station location for uploading records -->
<LOTW_LOCATION></LOTW_LOCATION>

<!-- type: int; default: 15
Tqsl trace file timeout in seconds -->
<tracefile_timeout>15</tracefile_timeout>

<!-- type: bool; default: false
Connect to MacLogger UDP server on 255.255.255.255 / 9932 -->
<CONNECT_TO_MACLOGGER>0</CONNECT_TO_MACLOGGER>

<!-- type: bool; default: true
Capture and use UDP Radio Report data -->
<CAPTURE_MACLOGGER_RADIO>1</CAPTURE_MACLOGGER_RADIO>

<!-- type: bool; default: false
Capture and use UDP Spot Tune data -->
<CAPTURE_MACLOGGER_SPOT_TUNE>0</CAPTURE_MACLOGGER_SPOT_TUNE>

<!-- type: bool; default: false
Capture and use UDP Spot Report data -->
<CAPTURE_MACLOGGER_SPOT_REPORT>0</CAPTURE_MACLOGGER_SPOT_REPORT>

<!-- type: bool; default: false
Capture and use UDP Log Report data -->
<CAPTURE_MACLOGGER_LOG>0</CAPTURE_MACLOGGER_LOG>

<!-- type: bool; default: false
Capture and use UDP Lookup Report data -->
<CAPTURE_MACLOGGER_LOOKUP>0</CAPTURE_MACLOGGER_LOOKUP>

<!-- type: bool; default: false
Enable UDP string capture to file -->
<ENABLE_MACLOGGER_LOG>0</ENABLE_MACLOGGER_LOG>

<!-- type: bool; default: true
true  - tune to spot Rx frequency
false - tune to spot Tx frequency
 -->
<MACLOGGER_SPOT_RX>1</MACLOGGER_SPOT_RX>

<!-- type: std::string; default: &quot;maclogger_udp_strings.txt&quot;
Filename for maclogger UDP datastream file -->
<MACLOGGER_LOG_FILENAME>maclogger_udp_strings.txt</MACLOGGER_LOG_FILENAME>

<!-- type: std::string; default: &quot;127.0.0.1&quot;
IP Address of N3FJP socket -->
<N3FJP_ADDRESS>127.0.0.1</N3FJP_ADDRESS>

<!-- type: std::string; default: &quot;1100&quot;
IP port number of N3FJP socket -->
<N3FJP_PORT>1100</N3FJP_PORT>

<!-- type: bool; default: true
Enable data stream logging. -->
<ENABLE_N3FJP_LOG>1</ENABLE_N3FJP_LOG>

<!-- type: bool; default: false
Connect to the N3FJP log server -->
<CONNECT_TO_N3FJP>0</CONNECT_TO_N3FJP>

<!-- type: bool; default: false
Use N3FJP spot report as signal center freq.
Center the target at mode sweet spot -->
<N3FJP_SWEET_SPOT>0</N3FJP_SWEET_SPOT>

<!-- type: bool; default: true
Use actual modem carrier frequency for logging -->
<N3FJP_MODEM_CARRIER>1</N3FJP_MODEM_CARRIER>

<!-- type: bool; default: false
Use RIGTX/RX vice CWCOMPORTKEYDOWN/CWCOMPORTKEYUP -->
<N3FJP_RIGTX>0</N3FJP_RIGTX>

<!-- type: bool; default: false
PTT change at flrig changes Rx/Tx state
set to false if multple instance of fldigi used with single flrig -->
<FLRIG_KEYS_MODEM>0</FLRIG_KEYS_MODEM>

<!-- type: bool; default: false
True if flrig xmlrpc server is used for xcvr control -->
<CLIENT_TO_FLRIG>1</CLIENT_TO_FLRIG>

<!-- type: bool; default: false
True to shutdown flrig when closing fldigi -->
<FLRIG_AUTO_SHUTDOWN>0</FLRIG_AUTO_SHUTDOWN>

<!-- type: bool; default: true
This setting is currently unused -->
<BTNUSB>1</BTNUSB>

<!-- type: bool; default: false
RTS is PTT signal line -->
<RTSPTT>1</RTSPTT>

<!-- type: bool; default: false
DTR is PTT signal line -->
<DTRPTT>0</DTRPTT>

<!-- type: bool; default: false
Initial voltage on RTS is +V -->
<RTSPLUS>0</RTSPLUS>

<!-- type: bool; default: false
Initial voltage on DTR is +V -->
<DTRPLUS>0</DTRPLUS>

<!-- type: bool; default: false
Serial port is SCU-17 (requires 0 stop bits -->
<SCU_17>0</SCU_17>

<!-- type: bool; default: false
Generate PTT signal on right audio channel -->
<PTTRIGHTCHANNEL>0</PTTRIGHTCHANNEL>

<!-- type: int; default: 0
Use Hamlib rig control -->
<CHKUSEHAMLIBIS>0</CHKUSEHAMLIBIS>

<!-- type: int; default: 0
Use RigCAT rig control -->
<CHKUSERIGCATIS>0</CHKUSERIGCATIS>

<!-- type: int; default: 0
Use XML-RPC rig control -->
<CHKUSEXMLRPCIS>0</CHKUSEXMLRPCIS>

<!-- type: std::string; default: DEFAULT_PTTDEV
PTT device -->
<PTTDEV>/dev/digirig</PTTDEV>

<!-- type: std::string; default: DEFAULT_HAMRIGDEVICE
Hamlib rig device -->
<HAMRIGDEVICE>/dev/ttyS0</HAMRIGDEVICE>

<!-- type: std::string; default: &quot;&quot;
Hamlib rig name -->
<HAMRIGNAME></HAMRIGNAME>

<!-- type: int; default: 0
Hamlib rig model -->
<HAMRIGMODEL>0</HAMRIGMODEL>

<!-- type: std::string; default: &quot;&quot;
Hamlib configuration (param=val, ...) -->
<HAMCONFIG></HAMCONFIG>

<!-- type: int; default: 1
Hamlib rig baud rate. Values are as follows:
  0: 300; 1: 600; 2: 1200; 3: 2400; 4: 4800; 5: 9600; 6: 19200;
  7: 38400; 8: 57600; 9: 115200; 10: 230400; 11: 460800. -->
<HAMRIGBAUDRATE>1</HAMRIGBAUDRATE>

<!-- type: int; default: 2
Hamlib stopbits <1/2>. -->
<HAMRIGSTOPBITS>2</HAMRIGSTOPBITS>

<!-- type: int; default: 250
250 - 2000 in 50 msec increments -->
<HAMRIGPOLLRATE>250</HAMRIGPOLLRATE>

<!-- type: int; default: 1
Hamlib PTT for xmt audio on data port -->
<HAMLIBPTTONDATA>1</HAMLIBPTTONDATA>

<!-- type: bool; default: false
Hamlib xcvr uses LSB for CW -->
<HAMLIB_CW_ISLSB>0</HAMLIB_CW_ISLSB>

<!-- type: bool; default: false
Hamlib xcvr uses USB for RTTY -->
<HAMLIB_RTTY_ISUSB>0</HAMLIB_RTTY_ISUSB>

<!-- type: int; default: 200
wait NN msec after sending mode change
before next transceiver CAT query
0 - 2000 in 100 msec increments -->
<HAMRIG_MODE_DELAY>200</HAMRIG_MODE_DELAY>

<!-- type: std::string; default: &quot;&quot;
RigCAT XML file name -->
<XMLRIGFILENAME>/home/user/.fldigi/rig-not-assigned.xml</XMLRIGFILENAME>

<!-- type: std::string; default: DEFAULT_HAMRIGDEVICE
RigCAT device -->
<XMLRIGDEVICE>/dev/ttyS0</XMLRIGDEVICE>

<!-- type: int; default: 1
RigCAT rig baud rate.  See HAMRIGBAUDRATE. -->
<XMLRIGBAUDRATE>1</XMLRIGBAUDRATE>

<!-- type: int; default: 2
RigCAT stopbits. <1/2> -->
<RIGCATSTOPBITS>2</RIGCATSTOPBITS>

<!-- type: bool; default: false
Use separate device for PTT -->
<TTYPTT>1</TTYPTT>

<!-- type: bool; default: false
PTT via Hamlib command -->
<HAMLIBCMDPTT>0</HAMLIBCMDPTT>

<!-- type: bool; default: false
PTT via RigCAT command -->
<RIGCATCMDPTT>0</RIGCATCMDPTT>

<!-- type: bool; default: false
Use uHRouter PTT (OS X only) -->
<USEUHROUTERPTT>0</USEUHROUTERPTT>

<!-- type: bool; default: false
Use parallel port PTT -->
<USEPPORTPTT>0</USEPPORTPTT>

<!-- type: bool; default: false
use GPIO for ptt (pi3/4) -->
<USE_GPIO_PTT>0</USE_GPIO_PTT>

<!-- type: long; default: 0
GPIO enable
bits 0 - 16; bit 0 : gpio pin N -->
<ENABLE_GPIO>0</ENABLE_GPIO>

<!-- type: long; default: 0
GPIO State
bits 0 - 16; bit 0 : PTT ON state on pin N -->
<GPIO_STATE>0</GPIO_STATE>

<!-- type: int; default: 0
GPIO pulse width setting for PiHpSDR PTT -->
<GPIO_PULSE_WIDTH>0</GPIO_PULSE_WIDTH>

<!-- type: std::string; default: &quot;NONE&quot;
DRA-xx device name -->
<CMEDIA_DEVICE>NONE</CMEDIA_DEVICE>

<!-- type: bool; default: false
Use cmedia PTT -->
<CMEDIA-PTT>0</CMEDIA-PTT>

<!-- type: std::string; default: &quot;GPIO-3&quot;
cmedia GPIO pin assignment for PTT -->
<CMEDIA_GPIO_LINE>GPIO-3</CMEDIA_GPIO_LINE>

<!-- type: bool; default: false
Initial state of RTS -->
<RIGCATRTSPLUS>0</RIGCATRTSPLUS>

<!-- type: bool; default: false
Initial state of DTR -->
<RIGCATDTRPLUS>0</RIGCATDTRPLUS>

<!-- type: bool; default: false
Toggle RTS for PTT -->
<RIGCATRTSPTT>0</RIGCATRTSPTT>

<!-- type: bool; default: false
Toggle DTR for PTT -->
<RIGCATDTRPTT>0</RIGCATDTRPTT>

<!-- type: bool; default: false
RTS/CTS flow control -->
<RIGCATRTSCTSFLOW>0</RIGCATRTSCTSFLOW>

<!-- type: int; default: 2
Number of retries before giving up -->
<RIGCATRETRIES>2</RIGCATRETRIES>

<!-- type: int; default: 10
Retry interval (milliseconds) -->
<RIGCATTIMEOUT>10</RIGCATTIMEOUT>

<!-- type: int; default: 50
Write delay (milliseconds) -->
<RIGCATWAIT>50</RIGCATWAIT>

<!-- type: int; default: 200
Wait delay (milliseconds) on first command to serial device -->
<RIGCATINITDELAY>200</RIGCATINITDELAY>

<!-- type: bool; default: false
Commands are echoed -->
<RIGCATECHO>0</RIGCATECHO>

<!-- type: bool; default: false
VSP support enabled -->
<RIGCATVSP>0</RIGCATVSP>

<!-- type: bool; default: false
Restore original state of comm port when closing -->
<RIGCATRESTORETIO>0</RIGCATRESTORETIO>

<!-- type: bool; default: false
RTS +12 -->
<HAMLIBRTSPLUS>0</HAMLIBRTSPLUS>

<!-- type: bool; default: false
DTR +12 -->
<HAMLIBDTRPLUS>0</HAMLIBDTRPLUS>

<!-- type: bool; default: false
RTS/CTS flow control -->
<HAMLIBRTSCTSFLOW>0</HAMLIBRTSCTSFLOW>

<!-- type: bool; default: false
XON/XOFF flow control -->
<HAMLIBXONXOFFFLOW>0</HAMLIBXONXOFFFLOW>

<!-- type: int; default: 2
Number of times to resend command before giving up -->
<HAMLIBRETRIES>2</HAMLIBRETRIES>

<!-- type: int; default: 200
Retry interval (milliseconds) -->
<HAMLIBTIMEOUT>200</HAMLIBTIMEOUT>

<!-- type: int; default: 5
Wait interval before reading response (milliseconds) -->
<HAMLIBWAIT>5</HAMLIBWAIT>

<!-- type: int; default: 0
Write delay (milliseconds) -->
<HAMLIBWRITEDELAY>0</HAMLIBWRITEDELAY>

<!-- type: int; default: 0
Force the rig sideband (for the purpose of calculating frequencies).
Values are as follows: 0: as reported by rig; 1: LSB; 2: USB. -->
<HAMLIBSIDEBAND>0</HAMLIBSIDEBAND>

<!-- type: std::string; default: &quot;NONE&quot;
nanoIO serial device -->
<NANOSERIALPORTNAME>NONE</NANOSERIALPORTNAME>

<!-- type: int; default: 0
0 - 45.45, 1 - 50, 2 - 75, 3 - 100 baud -->
<NANOIOBAUD>0</NANOIOBAUD>

<!-- type: int; default: 1
MARK polarity 0 - high, 1 - low -->
<NANOIOPOLARITY>1</NANOIOPOLARITY>

<!-- type: int; default: 6
0/1200, 1/4800, 2/9600, 3/19200, 4/38400, 5/57600, 6/115200 -->
<NANOIO_SERBAUD>6</NANOIO_SERBAUD>

<!-- type: int; default: '2'
^ ' increment/decrement value
range '1' to '5' -->
<NANOIOCWINCR>50</NANOIOCWINCR>

<!-- type: int; default: 18
Paddle keyer WPM (0...100) -->
<NANOCWKEYSPEED>18</NANOCWKEYSPEED>

<!-- type: int; default: 0
0 - IambicA, 1 - IambicB, 2 - Straight -->
<NANOIOCWKEYER>0</NANOIOCWKEYER>

<!-- type: bool; default: 0
Disable CAT PTT signal during CW ops with expernal h/w -->
<disable_CW_PTT>0</disable_CW_PTT>

<!-- type: int; default: 1
Enable speed pot in nanoIO circuit / script -->
<nanoIO_speed_pot>1</nanoIO_speed_pot>

<!-- type: int; default: 24
test wpm setting -->
<nanoCW_test_wpm>24</nanoCW_test_wpm>

<!-- type: int; default: 0
Correct CW unit timing by this amount in usec -->
<usec_corr>0</usec_corr>

<!-- type: int; default: 0
0 = LSB | 1 = USB -->
<XCVRFSKSIDEBAND>0</XCVRFSKSIDEBAND>

<!-- type: int; default: 2125
typical values: 1275, 1615 or 2125 for 170 Hz shift, IC7200 -->
<XCVRFSKMARK>2125</XCVRFSKMARK>

<!-- type: int; default: 2
0 to 10, number of LTRS bytes send at beginning of xmt -->
<TTYLTRS>2</TTYLTRS>

<!-- type: std::string; default: &quot;NONE&quot;
Nav FSK serial device -->
<NAVFSKPORT>NONE</NAVFSKPORT>

<!-- type: std::string; default: &quot;NONE&quot;
Nav config serial device -->
<NAVCONFIGPORT>NONE</NAVCONFIGPORT>

<!-- type: int; default: 0
0 - 45.45, 1 - 75, 2 - 100 baud -->
<NAVFSKBAUD>0</NAVFSKBAUD>

<!-- type: int; default: 0
0 = Off | 1 = On -->
<NAVFSKSIDETONE>0</NAVFSKSIDETONE>

<!-- type: int; default: 0
0 = Off | 1 = On -->
<NAVFSKPTT>0</NAVFSKPTT>

<!-- type: int; default: 0
0 = Normal | 1 = Reversed -->
<NAVFSKPOLARITY>0</NAVFSKPOLARITY>

<!-- type: int; default: 1
0 = 1 | 1 = 1.5 | 2 = 2 -->
<NAVFSKSTOPBITS>1</NAVFSKSTOPBITS>

<!-- type: int; default: 1
0 = 15 db, 1 = None -->
<NAVCH2ATT>1</NAVCH2ATT>

<!-- type: int; default: 1
0 = 15 db, 1 = None -->
<NAVCH1ATT>1</NAVCH1ATT>

<!-- type: int; default: 1
0 = 20 db, 1 = None -->
<NAVRFATT>1</NAVRFATT>

<!-- type: int; default: 0
0 = Off | 1 = On -->
<NAVLED>0</NAVLED>

<!-- type: int; default: 0
0 = Off | 1 = On -->
<NAVCATLED>0</NAVCATLED>

<!-- type: int; default: 0
0 = Off | 1 = On -->
<NAVWKPTT>0</NAVWKPTT>

<!-- type: std::string; default: &quot;&quot;
Station callsign -->
<MYCALL>$MYCALL</MYCALL>

<!-- type: std::string; default: &quot;&quot;
Operator QTH -->
<MYQTH>$MYQTH</MYQTH>

<!-- type: std::string; default: &quot;&quot;
Operator name -->
<MYNAME>$MYNAME</MYNAME>

<!-- type: std::string; default: &quot;&quot;
Operator Maidenhead locator -->
<MYLOC>$MYLOC</MYLOC>

<!-- type: std::string; default: &quot;&quot;
Antenna description (keep short!) -->
<MYANTENNA></MYANTENNA>

<!-- type: std::string; default: &quot;&quot;
Operator call sign, if distinct from the station call MYCALL -->
<OPERCALL>$MYCALL</OPERCALL>

<!-- type: int; default: SND_IDX_NULL
Audio subsystem.  Values are as follows:
  0: OSS; 1: PortAudio; 2: PulseAudio; 3: File I/O -->
<AUDIOIO>1</AUDIOIO>

<!-- type: std::string; default: &quot;&quot;
OSS device name -->
<OSSDEVICE></OSSDEVICE>

<!-- type: std::string; default: &quot;&quot;
For compatibility with older versions -->
<PADEVICE></PADEVICE>

<!-- type: std::string; default: &quot;&quot;
PortAudio input device name -->
<PORTINDEVICE>digirig-rx</PORTINDEVICE>

<!-- type: int; default: -1
PortAudio input device index -->
<PORTININDEX>14</PORTININDEX>

<!-- type: std::string; default: &quot;&quot;
PortAudio output device name -->
<PORTOUTDEVICE>digirig-tx</PORTOUTDEVICE>

<!-- type: int; default: -1
PortAudio input device index -->
<PORTOUTINDEX>15</PORTOUTINDEX>

<!-- type: std::string; default: &quot;&quot;
PortAudio alert device name -->
<ALERTDEVICE>HDA Intel PCH: CX8200 Analog (hw:0,0)</ALERTDEVICE>

<!-- type: int; default: -1
Alert output device index -->
<ALERTINDEX>0</ALERTINDEX>

<!-- type: bool; default: false
1 - enable audio stream, 0 - disable audio stream -->
<ENABLE_AUDIO_ALERTS>1</ENABLE_AUDIO_ALERTS>

<!-- type: std::string; default: &quot;&quot;
PulseAudio server string -->
<PULSESERVER></PULSESERVER>

<!-- type: bool; default: true
Audio codec supports full duplex operation -->
<IS_FULL_DUPLEX>1</IS_FULL_DUPLEX>

<!-- type: bool; default: true
Duplicate modem signal on left & right -->
<SIGONRIGHTCHANNEL>1</SIGONRIGHTCHANNEL>

<!-- type: bool; default: false
Reverse left-right rx audio channels -->
<REVERSEAUDIO>0</REVERSEAUDIO>

<!-- type: bool; default: false
Reverse left-right rx audio channels -->
<REVERSERXAUDIO>0</REVERSERXAUDIO>

<!-- type: int; default: SAMPLE_RATE_UNSET
For compatibility with older versions -->
<SAMPLERATE>-1</SAMPLERATE>

<!-- type: int; default: SAMPLE_RATE_UNSET
Input sample rate -->
<INSAMPLERATE>1</INSAMPLERATE>

<!-- type: int; default: SAMPLE_RATE_UNSET
Output sample rate -->
<OUTSAMPLERATE>1</OUTSAMPLERATE>

<!-- type: int; default: SRC_SINC_FASTEST
Sample rate conversion type. Values are as follows:
  0: Best SINC; 1: Medium SINC; 2: Fastest SINC; 3: ZOH; 4: Linear.
The default is 2. -->
<SAMPLECONVERTER>1</SAMPLECONVERTER>

<!-- type: int; default: 0
Input (RX) sample rate correction (PPM) -->
<RXCORR>0</RXCORR>

<!-- type: int; default: 0
Output (TX) sample rate correction (PPM) -->
<TXCORR>0</TXCORR>

<!-- type: int; default: 0
Difference between RX and TX freq (rig offset) -->
<TXOFFSET>0</TXOFFSET>

<!-- type: double; default: 0
Linear frequency correction applied to frequency analysis -->
<RIT>0</RIT>

<!-- type: int; default: 0
Wave file record sample rate
0 - 8000, 1 - 11025, 2 - 16000, 3 - 22050
4 - 24000, 5 - 44100, 6 - 48000 -->
<WAV_SAMPLERATE>0</WAV_SAMPLERATE>

<!-- type: bool; default: false
Enabled - record wav file in stereo
Disabled - record wav file in monaural (left channel only) -->
<RECORD_BOTH_CHANNELS>0</RECORD_BOTH_CHANNELS>

<!-- type: bool; default: false
true = continuous loop of sound file playback
false = single pass through playback file. -->
<LOOPPLAYBACK>0</LOOPPLAYBACK>

<!-- type: int; default: 0
Start of transmit delay before sending audio -->
<PTTONDELAY>0</PTTONDELAY>

<!-- type: int; default: 0
End of transmit delay before disabling PTT -->
<PTTOFFDELAY>0</PTTOFFDELAY>

<!-- type: double; default: 0.0
gain factor to compensate for low level output on USB A/D in dB
minimum -10.0, maximum + 10.0 -->
<RX_GAIN>0</RX_GAIN>

<!-- type: std::string; default: &quot;&quot;
Logbook file name -->
<LOGBOOKFILENAME>/home/user/.fldigi/logs/logbook.adif</LOGBOOKFILENAME>

<!-- type: bool; default: 0
Display read # recs and logbook name on program start -->
<LOGBOOKREADDISPLAY>0</LOGBOOKREADDISPLAY>

<!-- type: bool; default: true
Force RST in/out to 599 -->
<FIXED599>1</FIXED599>

<!-- type: bool; default: true
Insert leading zeros into transmitted serial number (contest) -->
<USELEADINGZEROS>1</USELEADINGZEROS>

<!-- type: bool; default: false
Send CW cut numbers -->
<CUTNBRS>0</CUTNBRS>

<!-- type: bool; default: true
clear logging fields upon transfer of CALL from Rx panel -->
<CLEARFIELDS>1</CLEARFIELDS>

<!-- type: RGB; default: {185, 211, 238}
Background color of signal browser detect level -->
<BWSRSLIDERCOLOR>185 211 238</BWSRSLIDERCOLOR>

<!-- type: RGB; default: {54, 100, 139}
Button highlight color, signal browser detect level -->
<BWSRSLDRSELCOLOR>54 100 139</BWSRSLDRSELCOLOR>

<!-- type: int; default: FL_RED
View Browser highlight color 1, default Dark Red -->
<BWSRHILIGHT1>88</BWSRHILIGHT1>

<!-- type: int; default: FL_GREEN
View Browser highlight color 2, default Dark Green -->
<BWSRHILIGHT2>63</BWSRHILIGHT2>

<!-- type: int; default: 55
View Browser background odd lines -->
<BWSRBACKGND1>55</BWSRBACKGND1>

<!-- type: int; default: 53
View Browser background odd lines -->
<BWSRBACKGND2>53</BWSRBACKGND2>

<!-- type: int; default: FL_BLUE
View Browser line select color -->
<BWSRSELECT>216</BWSRSELECT>

<!-- type: RGB; default: {255, 110, 180}
Callsign background color when duplicate detected -->
<dupcolor>255 110 180</dupcolor>

<!-- type: RGB; default: {255, 255, 150}
Callsign background color when possible duplicate detected -->
<duppossiblecolor>255 255 150</duppossiblecolor>

<!-- type: bool; default: true
Check for duplicates (contest) -->
<ENABLEDUPCHECK>1</ENABLEDUPCHECK>

<!-- type: bool; default: true
Predicate for ENABLEDUPCHECK (mode must match) -->
<DUPMODE>1</DUPMODE>

<!-- type: bool; default: true
Predicate for ENABLEDUPCHECK (band must match) -->
<DUPBAND>1</DUPBAND>

<!-- type: bool; default: false
Predicate for ENABLEDUPCHECK (state must match) -->
<DUPSTATE>0</DUPSTATE>

<!-- type: bool; default: false
Predicate for ENABLEDUPCHECK (exchange must match) -->
<DUPXCHG1>0</DUPXCHG1>

<!-- type: bool; default: false
Predicate for ENABLEDUPCHECK (QSO inside timespan) -->
<DUPTIMESPAN>0</DUPTIMESPAN>

<!-- type: int; default: 120
Time for DUPTIMESPAN (minutes) -->
<TIMESPAN>120</TIMESPAN>

<!-- type: int; default: 1
Contest starting number -->
<CONTESTSTART>1</CONTESTSTART>

<!-- type: int; default: 4
Number of digits in serial number -->
<CONTESTDIGITS>3</CONTESTDIGITS>

<!-- type: std::string; default: &quot;*,-.;&quot;
Additional characters used to delimit WORDS -->
<NONWORDCHARS>*,-.;</NONWORDCHARS>

<!-- type: std::string; default: &quot;&quot;
Free form exchange -->
<MYXCGH></MYXCGH>

<!-- type: std::string; default: &quot;&quot;
TX power used for logbook entries -->
<TXPOWER></TXPOWER>

<!-- type: std::string; default: &quot;&quot;
Field Day call sign -->
<FD_CALL></FD_CALL>

<!-- type: std::string; default: &quot;&quot;
Field Day (w1hkj) server position operator call -->
<FD_OP_CALL></FD_OP_CALL>

<!-- type: std::string; default: &quot;&quot;
Field Day class -->
<FDCLASS></FDCLASS>

<!-- type: std::string; default: &quot;&quot;
Field Day section -->
<FDSECTION></FDSECTION>

<!-- type: std::string; default: &quot;5&quot;
Field Day multiplier -->
<FDMULT>5</FDMULT>

<!-- type: std::string; default: &quot;&quot;
School Round Up Class -->
<MY_SCR_CLASS></MY_SCR_CLASS>

<!-- type: std::string; default: &quot;&quot;
Jamboree On The Air Troop -->
<MY_JOTA_TROOP></MY_JOTA_TROOP>

<!-- type: std::string; default: &quot;&quot;
JOTA scout operator -->
<MY_JOTA_SCOUT></MY_JOTA_SCOUT>

<!-- type: int; default: 0
Logging for:
  0 - generic QSO
  1 - generic contest
  2 - BART
  3 - Field Day
  4 - Winter Field Day
  5 - Kids Day
  6 - Rookie Roundup
  7 - ARRY RTTY
  8 - School Round UP
  9 - Jamboree On The Air
  10 - CQ WPX
  11 - CQWW RTTY
  12 - Italian ARI International DX
  13 - North American QSO Party
  14 - North American Sprint
  15 - Sweepstakes
  16 - State QSO Parties
  17 - Ten Ten
  18 - Africa All Mode
  19 - VHF
  20 - Worked All Europe -->
<LOGGING>0</LOGGING>

<!-- type: int; default: 0
SQSO contest -->
<SQSOcontest>0</SQSOcontest>

<!-- type: std::string; default: &quot;CALL if (RSTr), if (LOCATOR), NAME, QTH&quot;
Notes for specfied contest -->
<CONTESTnotes>CALL if (RSTr), if (LOCATOR), NAME, QTH</CONTESTnotes>

<!-- type: int; default: 0
SQSO in-state -->
<SQSOinstate>0</SQSOinstate>

<!-- type: int; default: 0
SQSO state -->
<SQSOstate>0</SQSOstate>

<!-- type: int; default: 0
SQSO county -->
<SQSOcounty>74</SQSOcounty>

<!-- type: int; default: 0
SQSO log state -->
<SQSOlogstate>0</SQSOlogstate>

<!-- type: int; default: 0
SQSO log county -->
<SQSOlogcounty>0</SQSOlogcounty>

<!-- type: int; default: 0
SQSO log serno -->
<SQSOlogserno>0</SQSOlogserno>

<!-- type: int; default: 0
SQSO log exchange -->
<SQSOlogxchg>0</SQSOlogxchg>

<!-- type: int; default: 0
SQSO log name -->
<SQSOlogname>0</SQSOlogname>

<!-- type: int; default: 0
SQSO parse STCTY -->
<SQSOlogstcty>0</SQSOlogstcty>

<!-- type: int; default: 0
SQSO parse CTYST -->
<SQSOlogctyst>0</SQSOlogctyst>

<!-- type: int; default: 0
SQSO log rst -->
<SQSOlogrst>0</SQSOlogrst>

<!-- type: int; default: 0
State of Maryland ... peculiar folks living there -->
<SQSlogcat>0</SQSlogcat>

<!-- type: bool; default: false
Connect to field day server -->
<CONNECT_TO_FDSERVER>0</CONNECT_TO_FDSERVER>

<!-- type: std::string; default: &quot;127.0.0.1&quot;
Field Day (w1hkj) server tcpip address -->
<FD_TCPIP_ADDR>127.0.0.1</FD_TCPIP_ADDR>

<!-- type: std::string; default: &quot;20001&quot;
Field Day (w1hkj) server tcpip port -->
<FD_TCPIP_PORT>20001</FD_TCPIP_PORT>

<!-- type: std::string; default: &quot;&quot;
DXCC cluster tcpip address -->
<DXCC_HOST_URL></DXCC_HOST_URL>

<!-- type: std::string; default: &quot;w3nr.ddns.net:7300::|dx.n8noe.us:7373::|w0mw.dynip.com:23::|&quot;
Array of dxcluster host-port-user lines
Fields separated by : character
Lines separated by | character -->
<DXCLUSTER_HOSTS>w3nr.ddns.net:7300::|dx.n8noe.us:7373::|w0mw.dynip.com:23::|</DXCLUSTER_HOSTS>

<!-- type: RGB; default: { 0, 0, 130 }
RX text font color (RGB) -->
<DX_COLOR>0 0 130</DX_COLOR>

<!-- type: Fl_Color; default: 7
Even line background color in dxcluster dialog -->
<DXC_EVEN_COLOR>7</DXC_EVEN_COLOR>

<!-- type: Fl_Color; default: 246
Odd line background color in dxcluster dialog -->
<DXC_ODD_COLOR>246</DXC_ODD_COLOR>

<!-- type: Fl_Color; default: FL_YELLOW
Text color in dxcluster dialog -->
<DXC_TEXTCOLOR>95</DXC_TEXTCOLOR>

<!-- type: std::string; default: &quot;&quot;
DX cluster browser font name -->
<DXC_TEXTNAME>sans</DXC_TEXTNAME>

<!-- type: Fl_Font; default: FL_COURIER
DX cluster browsers font number -->
<DXC_TEXTFONT>0</DXC_TEXTFONT>

<!-- type: int; default: 14
DX cluster browsers font size -->
<DXC_TEXTSIZE>14</DXC_TEXTSIZE>

<!-- type: Fl_Color; default: FL_YELLOW
Text color in dxcluster stream -->
<DXFONTCOLOR>95</DXFONTCOLOR>

<!-- type: Fl_Color; default: FL_DARK_RED
Alternate text color in dxcluster stream -->
<DXALT_COLOR>72</DXALT_COLOR>

<!-- type: std::string; default: &quot;&quot;
DX cluster stream font name -->
<DXFONTNAME>sans</DXFONTNAME>

<!-- type: Fl_Font; default: FL_COURIER
DX cluster stream font number -->
<DXFONTNBR>0</DXFONTNBR>

<!-- type: int; default: 14
DX cluster stream font size -->
<DXFONTSIZE>14</DXFONTSIZE>

<!-- type: std::string; default: &quot;&quot;
DXCC cluster tcpip port number -->
<DXCC_HOST_PORT></DXCC_HOST_PORT>

<!-- type: std::string; default: &quot;&quot;
DXCC cluster login call sign -->
<DXCC_LOGIN></DXCC_LOGIN>

<!-- type: std::string; default: &quot;&quot;
DXCC cluster login password -->
<DXCC_PASSWORD></DXCC_PASSWORD>

<!-- type: std::string; default: &quot;Show DX&quot;
DXC Macro Label 1 -->
<DXC_ML1>Show DX</DXC_ML1>

<!-- type: std::string; default: &quot;SH/DX&quot;
DXC Macro 1 -->
<DXC_MACRO1>SH/DX</DXC_MACRO1>

<!-- type: std::string; default: &quot;dxcm 2&quot;
DXC Macro Label 2 -->
<DXC_ML2>dxcm 2</DXC_ML2>

<!-- type: std::string; default: &quot;&quot;
DXC Macro 2 -->
<DXC_MACRO2></DXC_MACRO2>

<!-- type: std::string; default: &quot;dxcm 3&quot;
DXC Macro Label 3 -->
<DXC_ML3>dxcm 3</DXC_ML3>

<!-- type: std::string; default: &quot;&quot;
DXC Macro 3 -->
<DXC_MACRO3></DXC_MACRO3>

<!-- type: std::string; default: &quot;dxcm 4&quot;
DXC Macro Label 4 -->
<DXC_ML4>dxcm 4</DXC_ML4>

<!-- type: std::string; default: &quot;&quot;
DXC Macro 4 -->
<DXC_MACRO4></DXC_MACRO4>

<!-- type: std::string; default: &quot;dxcm 5&quot;
DXC Macro Label 5 -->
<DXC_ML5>dxcm 5</DXC_ML5>

<!-- type: std::string; default: &quot;&quot;
DXC Macro 5 -->
<DXC_MACRO5></DXC_MACRO5>

<!-- type: std::string; default: &quot;dxcm 6&quot;
DXC Macro Label 6 -->
<DXC_ML6>dxcm 6</DXC_ML6>

<!-- type: std::string; default: &quot;&quot;
DXC Macro 6 -->
<DXC_MACRO6></DXC_MACRO6>

<!-- type: std::string; default: &quot;dxcm 7&quot;
DXC Macro Label 7 -->
<DXC_ML7>dxcm 7</DXC_ML7>

<!-- type: std::string; default: &quot;&quot;
DXC Macro 7 -->
<DXC_MACRO7></DXC_MACRO7>

<!-- type: std::string; default: &quot;dxcm 8&quot;
DXC Macro Label 8 -->
<DXC_ML8>dxcm 8</DXC_ML8>

<!-- type: std::string; default: &quot;&quot;
DXC Macro 8 -->
<DXC_MACRO8></DXC_MACRO8>

<!-- type: bool; default: true
DXC report order; true = new record on top line -->
<DXC_TOPLINE>1</DXC_TOPLINE>

<!-- type: bool; default: false
Create spot Cmd: string when logging contact -->
<SPOT_WHEN_LOGGED>0</SPOT_WHEN_LOGGED>

<!-- type: bool; default: false
Connect to HOST when starting fldigi -->
<DXC_AUTO_CONNECT>0</DXC_AUTO_CONNECT>

<!-- type: bool; default: false
Add 0..99 Hertz audio frequency factor [nn] to DX report/notes -->
<DXC_HERTZ>0</DXC_HERTZ>

<!-- type: bool; default: true
Load last used macro file on startup -->
<USELASTMACRO>1</USELASTMACRO>

<!-- type: double; default: 0.5
Delay between execution of RIGMODE and FILWID
when in the same macro definition
range 0.1 to 2.0, default = 0.5 -->
<MBW>0.5</MBW>

<!-- type: bool; default: true
Display macro filename on startup -->
<DISPLAYMACROFILENAME>1</DISPLAYMACROFILENAME>

<!-- type: bool; default: true
Save current macros on exit -->
<SAVEMACROS>1</SAVEMACROS>

<!-- type: bool; default: false
Enable mouse wheel rotation to control visible macro set -->
<MACROWHEEL>0</MACROWHEEL>

<!-- type: int; default: 1
# and position of macro bars
0..12, 1 = default -->
<MBARSCHEME>1</MBARSCHEME>

<!-- type: bool; default: false
Position 4 bar macro sat below Tx panel
Default is above Rx panel -->
<FOURBARPOSITION>1</FOURBARPOSITION>

<!-- type: bool; default: false
expand ^! macro tags in Rx panel when executed -->
<MACROPOST>0</MACROPOST>

<!-- type: double; default: -3.0
TX attenuator (db) -30 .. 0 -->
<TXATTEN>-3</TXATTEN>

<!-- type: double; default: 0.2
Level for monitored (on waterfall) transmit signal -->
<TXMONITORLEVEL>0.0199526</TXMONITORLEVEL>

<!-- type: std::string; default: &quot;default.pal&quot;
Waterfall color palette file name -->
<PALETTENAME>default.pal</PALETTENAME>

<!-- type: RGB; default: { 0,0,0 }
Custom palette 0 -->
<PALETTE0>0 0 0</PALETTE0>

<!-- type: RGB; default: { 0,0,136 }
Custom palette 1 -->
<PALETTE1>0 0 136</PALETTE1>

<!-- type: RGB; default: { 0,19,198 }
Custom palette 2 -->
<PALETTE2>0 19 198</PALETTE2>

<!-- type: RGB; default: { 0,32,239 }
Custom palette 3 -->
<PALETTE3>0 32 239</PALETTE3>

<!-- type: RGB; default: { 172,167,105 }
Custom palette 4 -->
<PALETTE4>172 167 105</PALETTE4>

<!-- type: RGB; default: { 194,198,49 }
Custom palette 5 -->
<PALETTE5>194 198 49</PALETTE5>

<!-- type: RGB; default: { 225,228,107 }
Custom palette 6 -->
<PALETTE6>225 228 107</PALETTE6>

<!-- type: RGB; default: { 255,255,0 }
Custom palette 7 -->
<PALETTE7>255 255 0</PALETTE7>

<!-- type: RGB; default: { 251,51,0 }
Custom palette 8 -->
<PALETTE8>251 51 0</PALETTE8>

<!-- type: bool; default: true
Use macro group colors -->
<USEGROUPCOLORS>1</USEGROUPCOLORS>

<!-- type: RGB; default: { 80, 144, 144 }
Macro group 1 color -->
<FKEYGROUP1>80 144 144</FKEYGROUP1>

<!-- type: RGB; default: { 144, 80, 80 }
Macro group 2 color -->
<FKEYGROUP2>144 80 80</FKEYGROUP2>

<!-- type: RGB; default: { 80, 80, 144 }
Macro group 3 color -->
<FKEYGROUP3>80 80 144</FKEYGROUP3>

<!-- type: RGB; default: { 255, 255, 255 }
Macro button foreground  -->
<FKEYTEXTCOLOR>255 255 255</FKEYTEXTCOLOR>

<!-- type: std::string; default: &quot;UTF-8&quot;
Default character set -->
<CHARSET_NAME>UTF-8</CHARSET_NAME>

<!-- type: bool; default: true
Enable RX font warnings -->
<RXFONTWARN>1</RXFONTWARN>

<!-- type: std::string; default: &quot;&quot;
RX text font name -->
<RXFONTNAME>sans</RXFONTNAME>

<!-- type: Fl_Font; default: FL_HELVETICA
RX text font index -->
<RXFONTNBR>0</RXFONTNBR>

<!-- type: int; default: 16
RX text font size -->
<RXFONTSIZE>16</RXFONTSIZE>

<!-- type: Fl_Color; default: FL_BLACK
RX text font color -->
<RXFNTCOLOR>1191002112</RXFNTCOLOR>

<!-- type: std::string; default: &quot;&quot;
Macro Btn Font Name -->
<MACROBTNFONTNAME>sans</MACROBTNFONTNAME>

<!-- type: Fl_Font; default: FL_HELVETICA
Macro Btn font index -->
<MACROBTNFONTNBR>0</MACROBTNFONTNBR>

<!-- type: int; default: 12
Macro btn font size -->
<MACROBTNFONTSIZE>12</MACROBTNFONTSIZE>

<!-- type: Fl_Color; default: FL_WHITE
Macro btn font color -->
<MACROBTNFONTCOLOR>255</MACROBTNFONTCOLOR>

<!-- type: Fl_Color; default: FL_MAGENTA
RX/TX text select color -->
<RXTXSELCOLOR>248</RXTXSELCOLOR>

<!-- type: bool; default: true
Enable TX font warnings -->
<TXFONTWARN>1</TXFONTWARN>

<!-- type: std::string; default: &quot;&quot;
TX text font name -->
<TXFONTNAME>sans</TXFONTNAME>

<!-- type: Fl_Font; default: FL_HELVETICA
TX text font index -->
<TXFONTNBR>0</TXFONTNBR>

<!-- type: int; default: 16
TX text font size -->
<TXFONTSIZE>16</TXFONTSIZE>

<!-- type: Fl_Color; default: FL_BLACK
TX text font color -->
<TXFNTCOLOR>4291627008</TXFNTCOLOR>

<!-- type: RGB; default: { 255, 242, 190 }
RX text font color (RGB) -->
<RXFONTCOLOR>0 0 0</RXFONTCOLOR>

<!-- type: RGB; default: { 200, 235, 255 }
TX text font color (RGB) -->
<TXFONTCOLOR>5 6 7</TXFONTCOLOR>

<!-- type: Fl_Color; default: FL_RED
Color for Transmit text style -->
<XMITCOLOR>88</XMITCOLOR>

<!-- type: Fl_Color; default: FL_DARK_GREEN
Color for Control text style -->
<CTRLCOLOR>60</CTRLCOLOR>

<!-- type: Fl_Color; default: FL_BLUE
Color for Skipped text style -->
<SKIPCOLOR>216</SKIPCOLOR>

<!-- type: Fl_Color; default: FL_DARK_MAGENTA
Color for Alternate text style -->
<ALTRCOLOR>152</ALTRCOLOR>

<!-- type: Fl_Color; default: FL_BLACK
Color for low signal level -->
<LOWSIGNAL>56</LOWSIGNAL>

<!-- type: Fl_Color; default: FL_GREEN
Color for normal signal level -->
<NORMSIGNAL>63</NORMSIGNAL>

<!-- type: Fl_Color; default: FL_YELLOW
Color for high signal level -->
<HIGHSIGNAL>95</HIGHSIGNAL>

<!-- type: Fl_Color; default: FL_RED
Color for over driven signal -->
<OVERSIGNAL>88</OVERSIGNAL>

<!-- type: std::string; default: &quot;&quot;
Waterfall font name -->
<WATERFALLFONTNAME>sans</WATERFALLFONTNAME>

<!-- type: Fl_Font; default: FL_HELVETICA
Waterfall font number -->
<WATERFALLFONTNBR>0</WATERFALLFONTNBR>

<!-- type: int; default: 12
Waterfall font size -->
<WATERFALLFONTSIZE>12</WATERFALLFONTSIZE>

<!-- type: Fl_Color; default: FL_BLACK
Text color in logging controls -->
<LOGGINGTEXTCOLOR>56</LOGGINGTEXTCOLOR>

<!-- type: Fl_Color; default: FL_BACKGROUND2_COLOR
Background color in logging controls -->
<LOGGINGCOLOR>7</LOGGINGCOLOR>

<!-- type: std::string; default: &quot;&quot;
LOGGING text font name -->
<LOGGINGTEXTNAME>sans</LOGGINGTEXTNAME>

<!-- type: Fl_Font; default: FL_HELVETICA
Logging Controls font number -->
<LOGGINGTEXTFONT>0</LOGGINGTEXTFONT>

<!-- type: int; default: 12
Logging Controls font size -->
<LOGGINGTEXTSIZE>12</LOGGINGTEXTSIZE>

<!-- type: Fl_Color; default: FL_BLACK
Text color in logbook dialog -->
<LOGBOOKTEXTCOLOR>56</LOGBOOKTEXTCOLOR>

<!-- type: Fl_Color; default: FL_BACKGROUND2_COLOR
Background color in logbook dialog -->
<LOGBOOKCOLOR>7</LOGBOOKCOLOR>

<!-- type: std::string; default: &quot;&quot;
Logbook text font name -->
<LOGBOOKTEXTNAME>sans</LOGBOOKTEXTNAME>

<!-- type: Fl_Font; default: FL_HELVETICA
Logbook dialog controls font number -->
<LOGBOOKTEXTFONT>0</LOGBOOKTEXTFONT>

<!-- type: int; default: 12
Logbook dialog controls font size -->
<LOGBOOKTEXTSIZE>12</LOGBOOKTEXTSIZE>

<!-- type: std::string; default: &quot;&quot;
Frequency Control font name -->
<FREQCONTROLFONTNAME>sans</FREQCONTROLFONTNAME>

<!-- type: Fl_Font; default: FL_HELVETICA
Frequency Control font number -->
<FREQCONTROLFONTNBR>0</FREQCONTROLFONTNBR>

<!-- type: std::string; default: &quot;gtk+&quot;
FLTK UI scheme (none or base, gtk+, plastic) -->
<UISCHEME>gtk+</UISCHEME>

<!-- type: int; default: 0
UI language -->
<UILANGUAGE>0</UILANGUAGE>

<!-- type: bool; default: true
Always show audio frequencies on waterfall -->
<WFAUDIOSCALE>1</WFAUDIOSCALE>

<!-- type: RGB; default: { 255, 253, 222 }
Frequency display background color -->
<FDBACKGROUND>0 0 0</FDBACKGROUND>

<!-- type: RGB; default: { 0, 0, 0 }
Frequency display foreground color -->
<FDFOREGROUND>78 255 12</FDFOREGROUND>

<!-- type: RGB; default: { 255, 253, 222 }
S-meter background color -->
<SMETERBG>255 253 222</SMETERBG>

<!-- type: RGB; default: { 0, 0, 0 }
S-meter scale color -->
<SMETERSCALECOLOR>0 0 0</SMETERSCALECOLOR>

<!-- type: RGB; default: { 0, 200, 0 }
S-meter meter color -->
<SMETERMETERCOLOR>0 200 0</SMETERMETERCOLOR>

<!-- type: RGB; default: { 255, 253, 222 }
Power meter background color -->
<PWRMETERBGD>255 253 222</PWRMETERBGD>

<!-- type: RGB; default: { 0, 0, 0 }
Power meter scale color -->
<PWRMETERSCALECOLOR>0 0 0</PWRMETERSCALECOLOR>

<!-- type: RGB; default: { 200, 0, 0 }
Power meter meter color -->
<PWRMETERMETERCOLOR>200 0 0</PWRMETERMETERCOLOR>

<!-- type: int; default: 4
Power meter type:
 0: 25 W, 1: 50 W, 2: 100 W, 3: 200 W, 4: AUTO -->
<PWRSELECT>4</PWRSELECT>

<!-- type: Fl_Color; default: FL_BACKGROUND2_COLOR
UI tabs color -->
<TABSCOLOR>63</TABSCOLOR>

<!-- type: bool; default: true
Low frequency on bottom of viewer -->
<VIEWERASCEND>1</VIEWERASCEND>

<!-- type: bool; default: true
Signal Viewer text continuous scrolling -->
<VIEWERMARQUEE>1</VIEWERMARQUEE>

<!-- type: bool; default: false
Signal Viewer sort after channel changes- unused -->
<VIEWERSORT>0</VIEWERSORT>

<!-- type: bool; default: false
Signal Viewer playback history on select -->
<VIEWERHISTORY>0</VIEWERHISTORY>

<!-- type: bool; default: true
Signal Viewer data displayed on fixed 100 Hz intervals -->
<VIEWERfixed>1</VIEWERfixed>

<!-- type: int; default: VIEWER_LABEL_RF
Signal Viewer label type.  Values are as follows:
  0: None; 1: Audio freq; 2: Radio freq; 2: Channel #. -->
<VIEWERSHOWFREQ>2</VIEWERSHOWFREQ>

<!-- type: int; default: 30
Number of Signal Viewer Channels -->
<VIEWERCHANNELS>30</VIEWERCHANNELS>

<!-- type: int; default: 25
Width of viewer (% of full panel width) -->
<VIEWERWIDTH>25</VIEWERWIDTH>

<!-- type: int; default: 15
Signal Viewer inactivity timeout (to clear text) -->
<VIEWERTIMEOUT>15</VIEWERTIMEOUT>

<!-- type: std::string; default: &quot;&quot;
Signal Viewer font name -->
<VIEWERFONTNAME>sans</VIEWERFONTNAME>

<!-- type: Fl_Font; default: FL_HELVETICA
Signal Viewer font index -->
<VIEWERFONTNBR>0</VIEWERFONTNBR>

<!-- type: int; default: FL_NORMAL_SIZE
Signal Viewer font size -->
<VIEWERFONTSIZE>14</VIEWERFONTSIZE>

<!-- type: Fl_Color; default: FL_YELLOW
UI SQL button select color 1 -->
<SQL1COLOR>95</SQL1COLOR>

<!-- type: Fl_Color; default: FL_GREEN
UI SQL button select color 2 -->
<SQL2COLOR>63</SQL2COLOR>

<!-- type: Fl_Color; default: FL_GREEN
UI AFC button select color -->
<AFCCOLOR>63</AFCCOLOR>

<!-- type: Fl_Color; default: FL_GREEN
UI Lk xmt frequ select color -->
<LKCOLOR>63</LKCOLOR>

<!-- type: Fl_Color; default: FL_GREEN
UI Rev select color -->
<REVCOLOR>63</REVCOLOR>

<!-- type: Fl_Color; default: FL_RED
UI T/R select color -->
<XMTCOLOR>88</XMTCOLOR>

<!-- type: Fl_Color; default: FL_GREEN
UI Spot select color -->
<SPOTCOLOR>63</SPOTCOLOR>

<!-- type: Fl_Color; default: FL_GREEN
UI RxID select color -->
<RXIDCOLOR>63</RXIDCOLOR>

<!-- type: Fl_Color; default: FL_DARK_RED
UI RxID WIDE search select color -->
<RXIDWIDECOLOR>72</RXIDWIDECOLOR>

<!-- type: Fl_Color; default: FL_GREEN
UI TxID select color -->
<TXIDCOLOR>63</TXIDCOLOR>

<!-- type: Fl_Color; default: FL_RED
UI Tune select color -->
<TUNECOLOR>88</TUNECOLOR>

<!-- type: Fl_Color; default: FL_YELLOW
Default color of lighted buttons -->
<DEFAULTBTNCOLOR>95</DEFAULTBTNCOLOR>

<!-- type: bool; default: false
Try to open remote xml logbook -->
<XML_LOGBOOK>0</XML_LOGBOOK>

<!-- type: std::string; default: &quot;127.0.0.1&quot;
Logbook server address -->
<XMLLOG_ADDRESS>127.0.0.1</XMLLOG_ADDRESS>

<!-- type: std::string; default: &quot;8421&quot;
Logbook server port -->
<XMLLOG_PORT>8421</XMLLOG_PORT>

<!-- type: bool; default: false
Check for updates when starting program -->
<CHECK_FOR_UPDATES>0</CHECK_FOR_UPDATES>

<!-- type: std::string; default: DEFAULT_XMLPRC_IP_ADDRESS
IP Address of XMLRPC Socket -->
<XMLRPC_ADDRESS>127.0.0.1</XMLRPC_ADDRESS>

<!-- type: std::string; default: DEFAULT_XMLRPC_IP_PORT
IP port number of XMLRPC socket -->
<XMLRPC_PORT>7362</XMLRPC_PORT>

<!-- type: std::string; default: DEFAULT_ARQ_IP_ADDRESS
IP Address of ARQ socket -->
<ARQ_ADDRESS>127.0.0.1</ARQ_ADDRESS>

<!-- type: std::string; default: DEFAULT_ARQ_IP_PORT
IP port number of ARQ socket -->
<ARQ_PORT>7322</ARQ_PORT>

<!-- type: std::string; default: DEFAULT_KISS_IP_ADDRESS
IP Address of KISS socket -->
<KISS_ADDRESS>127.0.0.1</KISS_ADDRESS>

<!-- type: std::string; default: DEFAULT_KISS_IP_IO_PORT
IP port number of KISS socket -->
<KISS_IO_PORT>7342</KISS_IO_PORT>

<!-- type: std::string; default: DEFAULT_KISS_IP_OUT_PORT
Out udp port used when ip address is the same -->
<KISS_OUT_PORT>7343</KISS_OUT_PORT>

<!-- type: int; default: 0
Required when same IP address is used. -->
<KISS_DUAL_PORT_ENABLED>0</KISS_DUAL_PORT_ENABLED>

<!-- type: int; default: 1
Disabled (0) ARQ socket enabled (1) KISS socket enabled (2) -->
<DATA_IO_ENABLED>1</DATA_IO_ENABLED>

<!-- type: bool; default: false
Dissasemble AX25 packet into human readable form -->
<AX25_DECODE_ENABLED>0</AX25_DECODE_ENABLED>

<!-- type: bool; default: false
Detect busy channel and wait for a period of time before txing -->
<ENABLE_BUSY_CHANNEL>0</ENABLE_BUSY_CHANNEL>

<!-- type: int; default: 3
Number of seconds to wait before transmit resume -->
<BUSY_CHANNEL_SECONDS>3</BUSY_CHANNEL_SECONDS>

<!-- type: bool; default: false
Display / Enable PSM button on main dialog -->
<SHOW_PSM_BTN>0</SHOW_PSM_BTN>

<!-- type: int; default: 2
KPSQL Attenuation in 1/n of 1:1 Gain -->
<KPSQL_ATTENUATION>2</KPSQL_ATTENUATION>

<!-- type: bool; default: true
Use CSMA on heavy traffic channels (AX25) -->
<CSMA_ENABLED>1</CSMA_ENABLED>

<!-- type: bool; default: false
Connect kiss io via TCP/IP vise UDP/IP -->
<KISS_TCP_IO>0</KISS_TCP_IO>

<!-- type: bool; default: false
Listen for TCP connection (Server mode) -->
<KISS_TCP_LISTEN>0</KISS_TCP_LISTEN>

<!-- type: bool; default: false
Enable/Disable PSM -->
<KPSQL_ENABLED>0</KPSQL_ENABLED>

<!-- type: bool; default: false
Make Connect Attemp on Fldigi Start -->
<TCP_UDP_AUTO_CONNECT>0</TCP_UDP_AUTO_CONNECT>

<!-- type: int; default: 63
CSMA Persistance -->
<CSMA_PERSISTANCE>63</CSMA_PERSISTANCE>

<!-- type: int; default: 10
CSMA Slot Time -->
<CSMA_SLOT_TIME>10</CSMA_SLOT_TIME>

<!-- type: int; default: 50
CSMA Transit Delay -->
<CSMA_TRANSMIT_DELAY>50</CSMA_TRANSMIT_DELAY>

<!-- type: int; default: 15
Flush buffer timout -->
<PSM_FLUSH_BUFFER_TIMEOUT>15</PSM_FLUSH_BUFFER_TIMEOUT>

<!-- type: int; default: 100
PSM minimum measured bandwidth -->
<PSM_MINIMUM_BANDWIDTH>100</PSM_MINIMUM_BANDWIDTH>

<!-- type: int; default: 10
PSM minimum measured bandwidth margin -->
<PSM_MINIMUM_BANDWIDTH_MARGIN>10</PSM_MINIMUM_BANDWIDTH_MARGIN>

<!-- type: bool; default: false
Histogram threshold -->
<PSM_USE_HISTOGRAM>0</PSM_USE_HISTOGRAM>

<!-- type: int; default: 3
Histogram theshold referece level -->
<PSM_HISTOGRAM_OFFSET_THRESHOLD>3</PSM_HISTOGRAM_OFFSET_THRESHOLD>

<!-- type: int; default: 15
Valid signal test rate (milliseconds) -->
<PSM_HIT_TIME_WINDOW>15</PSM_HIT_TIME_WINDOW>

<!-- type: int; default: 15
Transmit buffer timeout (minutes) -->
<TX_BUFFER_TIMEOUT>15</TX_BUFFER_TIMEOUT>

<!-- type: bool; default: false
Enable/Disable Modem Change to a non 8 bit when KISS IO is in use -->
<KISS_IO_MODEM_CHANGE_INHIBIT>0</KISS_IO_MODEM_CHANGE_INHIBIT>

<!-- type: std::string; default: DEFAULT_FLRIG_IP_ADDRESS
IP Address of flrig server -->
<FLRIG_IP_ADDRESS>127.0.0.1</FLRIG_IP_ADDRESS>

<!-- type: std::string; default: DEFAULT_FLRIG_IP_PORT
IP port number of flrig server -->
<FLRIG_IP_PORT>12345</FLRIG_IP_PORT>

<!-- type: bool; default: false
Display all rx char's using ascii3 table -->
<SHOW_ALL_CODES>0</SHOW_ALL_CODES>

<!-- type: bool; default: false
Enable to start pskrep interface when starting fldigi -->
<PSKREP_AUTOSTART>0</PSKREP_AUTOSTART>

<!-- type: bool; default: false
(Set by fldigi) -->
<USEPSKREP>0</USEPSKREP>

<!-- type: bool; default: false
Report callsigns spotted in received text -->
<PSKREPAUTO>0</PSKREPAUTO>

<!-- type: bool; default: false
Report callsigns in logged QSOs -->
<PSKREPLOG>0</PSKREPLOG>

<!-- type: bool; default: false
Include rig frequency in reception report -->
<PSKREPQRG>0</PSKREPQRG>

<!-- type: bool; default: false
Enable Reporter ONLY when a signal browser is visible -->
<REPORTWHENVISIBLE>0</REPORTWHENVISIBLE>

<!-- type: std::string; default: &quot;report.pskreporter.info&quot;
Reception report server address -->
<PSKREPHOST>report.pskreporter.info</PSKREPHOST>

<!-- type: std::string; default: &quot;4739&quot;
Reception report server port -->
<PSKREPPORT>4739</PSKREPPORT>

<!-- type: double; default: 0.0
Slant correction for wefax Rx -->
<WEFAXSLANT>0</WEFAXSLANT>

<!-- type: std::string; default: &quot;&quot;
Target directory for storing automatically received images storage -->
<WEFAXSAVEDIR></WEFAXSAVEDIR>

<!-- type: std::string; default: &quot;&quot;
Source directory for sending images -->
<WEFAXLOADDIR></WEFAXLOADDIR>

<!-- type: int; default: 0
Input filter for image reception -->
<WEFAXFILTER>0</WEFAXFILTER>

<!-- type: bool; default: true
Enable image autocentering -->
<WEFAX_AUTOCENTER>1</WEFAX_AUTOCENTER>

<!-- type: bool; default: true
Hide transmission window -->
<WEFAXHIDETX>1</WEFAXHIDETX>

<!-- type: int; default: 800
Shift (Standard 800Hz) -->
<WEFAXSHIFT>800</WEFAXSHIFT>

<!-- type: int; default: 1900
Signal centered on freq (Standard 1900Hz) -->
<WEFAXCENTER>1900</WEFAXCENTER>

<!-- type: int; default: 4000
Received fax maximum number of rows
1200 rows standard for IOC576 transmission. -->
<WEFAXMAXROWS>4000</WEFAXMAXROWS>

<!-- type: int; default: 1
Pixel margin for noise removal -->
<WEFAXNOISEMARGIN>1</WEFAXNOISEMARGIN>

<!-- type: int; default: 5
Threshold level for noise detection and removal -->
<WEFAXNOISETHRESHOLD>5</WEFAXNOISETHRESHOLD>

<!-- type: double; default: 0.05
Threshold level for signal detection -->
<WEFAX_CORRELATION>0.05</WEFAX_CORRELATION>

<!-- type: int; default: 15
Compute correlation on NN (2 ... 25) -->
<WEFAX_CORR_ROWS>15</WEFAX_CORR_ROWS>

<!-- type: bool; default: false
Logs wefax file names in Adif log file -->
<WEFAXADIFLOG>0</WEFAXADIFLOG>

<!-- type: int; default: 30
Enable autoalign after NN rows -->
<WEFAX_auto_after>30</WEFAX_auto_after>

<!-- type: int; default: 500
Stop auto alignment after NN rows -->
<WEFAX_align_stop>500</WEFAX_align_stop>

<!-- type: int; default: 10
Enable autoalign every NN rows -->
<WEFAX_align_rows>10</WEFAX_align_rows>

<!-- type: bool; default: false
Logs Navtex messages in Adig log file -->
<NAVTEXADIFLOG>0</NAVTEXADIFLOG>

<!-- type: bool; default: false
Logs Navtex messages to KML document -->
<NAVTEXKMLLOG>0</NAVTEXKMLLOG>

<!-- type: int; default: 0
Minimum length of logged messages -->
<NAVTEXMINSIZLOGGEDMSG>0</NAVTEXMINSIZLOGGEDMSG>

<!-- type: std::string; default: &quot;http://tgftp.nws.noaa.gov/data/observations/metar/decoded/&quot;
Internet URL used to fetch METAR data using wget symbology -->
<WX_URL>http://tgftp.nws.noaa.gov/data/observations/metar/decoded/</WX_URL>

<!-- type: std::string; default: &quot;Connection: close&quot;
Text at end of METAR report header
default = Connection: close -->
<WX_EOH>Connection: close</WX_EOH>

<!-- type: std::string; default: &quot;KMDQ&quot;
4 letter specifier for wx station -->
<WX_STA>KMDQ</WX_STA>

<!-- type: bool; default: true
Weather conditions -->
<WX_CONDX>1</WX_CONDX>

<!-- type: bool; default: true
Report in Fahrenheit -->
<WX_FAHRENHEIT>1</WX_FAHRENHEIT>

<!-- type: bool; default: true
Report in Celsius -->
<WX_CELSIUS>1</WX_CELSIUS>

<!-- type: bool; default: true
Report speed in miles per hour -->
<WX_MPH>1</WX_MPH>

<!-- type: bool; default: true
Report speed in kilometers per hour -->
<WX_KPH>1</WX_KPH>

<!-- type: bool; default: true
Report pressure in inches of mercury -->
<WX_INCHES>1</WX_INCHES>

<!-- type: bool; default: true
Report pressure in millibars -->
<WX_MBARS>1</WX_MBARS>

<!-- type: bool; default: true
Use complete METAR report -->
<WX_FULL>1</WX_FULL>

<!-- type: bool; default: true
Report station noun name -->
<WX_STATION_NAME>1</WX_STATION_NAME>

<!-- type: bool; default: false
Purge KML data at startup -->
<KML_PURGE_ON_STARTUP>0</KML_PURGE_ON_STARTUP>

<!-- type: std::string; default: &quot;&quot;
Destination directory for generated KML documents -->
<KML_SAVE_DIR>/home/user/.fldigi/kml/</KML_SAVE_DIR>

<!-- type: std::string; default: &quot;&quot;
Command executed when creating KML files -->
<KML_COMMAND></KML_COMMAND>

<!-- type: int; default: 10000
Minimum distance for splitting alias nodes -->
<KML_MERGE_DISTANCE>10000</KML_MERGE_DISTANCE>

<!-- type: int; default: 0
Number of hours for keeping data in each node -->
<KML_RETENTION_TIME>0</KML_RETENTION_TIME>

<!-- type: int; default: 120
Refresh interval written in KML files (In seconds) -->
<KML_REFRESH_INTERVAL>120</KML_REFRESH_INTERVAL>

<!-- type: int; default: 2
KML balloons data displayed as text, HTML tables, HTML single matrix -->
<KML_BALLOON_STYLE>2</KML_BALLOON_STYLE>

<!-- type: double; default: 60.0
Display range in dB for dft scan modem -->
<cnt_dft_range>60</cnt_dft_range>

<!-- type: int; default: 100
Number of scans over which the average signal level is measured. -->
<cnt_dft_scans>100</cnt_dft_scans>

<!-- type: bool; default: false
Plot vertical scale as dB relative to maximum value -->
<dft_relative>0</dft_relative>

<!-- type: std::string; default: &quot;&quot;
Full pathname to the flrig executable -->
<AUTO_FLRIG_PATHNAME></AUTO_FLRIG_PATHNAME>

<!-- type: std::string; default: &quot;&quot;
Full pathname to the flamp executable -->
<AUTO_FLAMP_PATHNAME>/usr/bin/flamp</AUTO_FLAMP_PATHNAME>

<!-- type: std::string; default: &quot;&quot;
Full pathname to the flnet executable -->
<AUTO_FLNET_PATHNAME></AUTO_FLNET_PATHNAME>

<!-- type: std::string; default: &quot;&quot;
Full pathname to the fllog executable -->
<AUTO_FLLOG_PATHNAME></AUTO_FLLOG_PATHNAME>

<!-- type: std::string; default: &quot;&quot;
Full pathname to the prog1 executable -->
<AUTO_PROG1_PATHNAME></AUTO_PROG1_PATHNAME>

<!-- type: std::string; default: &quot;&quot;
Full pathname to the prog2 executable -->
<AUTO_PROG2_PATHNAME></AUTO_PROG2_PATHNAME>

<!-- type: std::string; default: &quot;&quot;
Full pathname to the prog3 executable -->
<AUTO_PROG3_PATHNAME></AUTO_PROG3_PATHNAME>

<!-- type: bool; default: false
Enable on program start -->
<FLRIG_AUTO_ENABLE>0</FLRIG_AUTO_ENABLE>

<!-- type: bool; default: false
Enable on program start -->
<FLNET_AUTO_ENABLE>0</FLNET_AUTO_ENABLE>

<!-- type: bool; default: false
Enable on program start -->
<FLLOG_AUTO_ENABLE>0</FLLOG_AUTO_ENABLE>

<!-- type: bool; default: false
Enable on program start -->
<FLAMP_AUTO_ENABLE>1</FLAMP_AUTO_ENABLE>

<!-- type: bool; default: false
Enable on program start -->
<PROG1_AUTO_ENABLE>0</PROG1_AUTO_ENABLE>

<!-- type: bool; default: false
Enable on program start -->
<PROG2_AUTO_ENABLE>0</PROG2_AUTO_ENABLE>

<!-- type: bool; default: false
Enable on program start -->
<PROG3_AUTO_ENABLE>0</PROG3_AUTO_ENABLE>

<!-- type: int; default: 0
Frequency control by keyboard arrow keys
Least significant digit are left/right keys
0 : 1 Hz, 1 : 10 Hz, 2 : 100 Hz, 3 : 1000 Hz -->
<SEL_LSD>0</SEL_LSD>

<!-- type: int; default: 22
Height of macro bar
22 .. 66, default = 22, step size 2 -->
<MACRO_HEIGHT>22</MACRO_HEIGHT>

<!-- type: bool; default: false
Enabled, Tx above Rx panel
Disable, Rx above Tx panel (default -->
<RXTX_SWAP>0</RXTX_SWAP>

<!-- type: bool; default: false
Enabled, View smeter & power meter
Disable, (default) -->
<VIEW_SMETER>0</VIEW_SMETER>

<!-- type: std::string; default: &quot;&quot;
Macro editor font name -->
<MACROEDITORFONTNAME>sans</MACROEDITORFONTNAME>

<!-- type: Fl_Font; default: FL_HELVETICA
RX text font index -->
<MACROEDITFONTNBR>0</MACROEDITFONTNBR>

<!-- type: bool; default: false
Use US units of distance for QRB -->
<US_UNITS>0</US_UNITS>

<!-- type: int; default: 16
RX text font size -->
<MACROEDITFONTSIZE>16</MACROEDITFONTSIZE>

<!-- type: bool; default: false
Flag: Change DCD pre-ample length -->
<PSK8DCDSHORTFLAG>0</PSK8DCDSHORTFLAG>

<!-- type: bool; default: false
Allow dockable macros -->
<DISPLAY_48MACROS>1</DISPLAY_48MACROS>

<!-- type: double; default: 0.0
Upper axis in dB for spectrum viewer -->
<fftviewer_maxdb>0</fftviewer_maxdb>

<!-- type: double; default: 60.0
Display range in dB for spectrum viewer -->
<fftviewer_range>60</fftviewer_range>

<!-- type: int; default: 100
Number of scans over which the average signal level is measured. -->
<fftviewer_scans>100</fftviewer_scans>

<!-- type: double; default: 2000.0
Scan center frequency in Hertz -->
<fftviewer_fcenter>2000</fftviewer_fcenter>

<!-- type: double; default: 4000.0
Frequency scan range in Hertz -->
<fftviewer_frng>4000</fftviewer_frng>

<!-- type: int; default: 500
Initial spectrum range -->
<wf_spectrum_range>500</wf_spectrum_range>

<!-- type: bool; default: true
left click on waterfall transfers to spectrum center -->
<wf_spectrum_center>1</wf_spectrum_center>

<!-- type: bool; default: true
scale spectrum display frequency linked to modem bandwidth -->
<wf_spectrum_modem_scale>1</wf_spectrum_modem_scale>

<!-- type: int; default: 5
scale factor for spectrum display linked to modem bandwidth -->
<spectrum_scale_factor>5</spectrum_scale_factor>

<!-- type: bool; default: true
use waterfall db range and offset values for spectrum scope -->
<wf_spectrum_dbvals>1</wf_spectrum_dbvals>

<!-- type: int; default: 1
FMT sample rate
0:8000, 1:11025, 2:12000, 3:16000, 4:22050, 5:32000, 6:44100, 7:48000 -->
<FMT_sr>1</FMT_sr>

<!-- type: int; default: 3
FMT DFT conversions per second -->
<FMT_dft_rate>3</FMT_dft_rate>

<!-- type: bool; default: false
Reverse time axis -->
<FMT_reverse>0</FMT_reverse>

<!-- type: bool; default: false
Plot axis/lines with 2 pixel width -->
<FMT_thick_lines>0</FMT_thick_lines>

<!-- type: bool; default: false
Plot points lie on top of axis graticule -->
<FMT_plot_over_axis>0</FMT_plot_over_axis>

<!-- type: double; default: 0.0
FMT freq track correction in Hertz -->
<FMT_freq_corr>0</FMT_freq_corr>

<!-- type: double; default: 4.0
FMT FIR lpf 3db cutoff in Hertz -->
<FMT_filter>4</FMT_filter>

<!-- type: double; default: 20.0
FMT FIR bpf 3db cutoff in Hertz -->
<FMT_bpf_width>20</FMT_bpf_width>

<!-- type: bool; default: false
Enable unknown bandpass filter -->
<FMT_unk_bpf_on>0</FMT_unk_bpf_on>

<!-- type: bool; default: false
Enable reference bandpass filter -->
<FMT_ref_bpf_on>0</FMT_ref_bpf_on>

<!-- type: double; default: 4.0
FMT moving average filter length in seconds -->
<FMT_movavg_len>4</FMT_movavg_len>

<!-- type: double; default: 0.95
Experimental first-order prefilter -->
<FMT_prefilter>0.95</FMT_prefilter>

<!-- type: bool; default: false
Enable FMT prefilter -->
<FMT_prefilter_on>0</FMT_prefilter_on>

<!-- type: double; default: 10.0
Experimental data culling -->
<FMT_cull_level>10</FMT_cull_level>

<!-- type: bool; default: false
Enable data culling -->
<FMT_cull_on>0</FMT_cull_on>

<!-- type: double; default: 1.0
Experimental DFT hardlimit level -->
<FMT_HL_level>1</FMT_HL_level>

<!-- type: bool; default: false
Enable DFT hardlimiter -->
<FMT_HL_on>0</FMT_HL_on>

<!-- type: bool; default: false
Enable DFT culling -->
<FMT_dft_cull_on>0</FMT_dft_cull_on>

<!-- type: Fl_Color; default: FL_BACKGROUND2_COLOR
Color for FMT plot background -->
<FMT_background>7</FMT_background>

<!-- type: Fl_Color; default: FL_DARK_BLUE
Color for FMT unknown data plot -->
<FMT_unk_color>136</FMT_unk_color>

<!-- type: Fl_Color; default: FL_GREEN
Color for FMT reference data plot -->
<FMT_ref_color>63</FMT_ref_color>

<!-- type: Fl_Color; default: FL_BLACK
Color for FMT legends -->
<FMT_legend_color>56</FMT_legend_color>

<!-- type: Fl_Color; default: FL_BLACK
Color for FMT plot axis -->
<FMT_axis_color>56</FMT_axis_color>

<!-- type: bool; default: false
Use TAB delimiters in exported csv file -->
<fmt_use_tabs>0</fmt_use_tabs>

<!-- type: bool; default: false
Waterfall centered on unknown -->
<fmt_center_on_unknown>0</fmt_center_on_unknown>

<!-- type: bool; default: false
Waterfall centered on reference -->
<fmt_center_on_reference>0</fmt_center_on_reference>

<!-- type: bool; default: true
Waterfall centered on median -->
<fmt_center_on_median>1</fmt_center_on_median>

<!-- type: bool; default: false
Sound wav file record sync'd to csv file -->
<fmt_sync_wav_file>0</fmt_sync_wav_file>

<!-- type: double; default: 2.0
limit to frequency error before automatic reset -->
<FMT_freq_err>2</FMT_freq_err>

</FLDIGI_DEFS>
