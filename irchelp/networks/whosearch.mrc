; Simple script to allow /who wildcard searches, such as to find servers
; that allow a specific hostname or username mask.
; Save this file to your main mIRC directory, then  /load -rs whosearch.mrc
; To run, /whosearch [enter search mask here]
; For example, to find servers that allow home.com users:
;	/whosearch *home.com     (will match e.g. c123456-a.smateo1.sfba.home.com)
; To find servers that allow those without reverse DNS and show up with IPs:
;	/whosearch 2??.*.*.*     (will match IPs like 234.5.67.89)
; To find servers that allow those without identd and show up with ~:
;	/whosearch *~*
;
ALIAS WhoSearch {

  UNSET %Who.Replies.Servers

  %Who.Replies.Search = $$1

  WHO $1

  .ENABLE #WhoSearch

}



#WhoSearch off

RAW 352:*:IF (($5 !ISIN %Who.Replies.Servers) && ((%Who.Replies.Search ISWM $3) || (%Who.Replies.Search ISWM $4))) %Who.Replies.Servers = %Who.Replies.Servers $5

RAW 315:* {

  .TIMER 1 0 ECHO -a Found these servers used by user's hosts matching %Who.Replies.Search $+ : %Who.Replies.Servers

  UNSET %Who.Replies.Search %Who.Replies.Servers

  .DISABLE #WhoSearch

}

#WhoSearch END
