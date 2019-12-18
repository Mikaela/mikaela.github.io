---
layout: null
permalink: /or/userchrome.html
sitemap: false
---

http://ea5faa5po25cf7fb.onion/projects/tor/ticket/30812#comment:3

More details: turns letterboxing dark, check the profile location in
`about:profiles`, `cd` there, `mkdir chrome` and paste the below into
`userChrome.css` there.

```
@namespace url("http://www.mozilla.org/keymaster/gatekeeper/there.is.only.xul");

/* about:newtab and about:blank
 * also remove white flash: see https://bugzilla.mozilla.org/1488384 */
#browser vbox#appcontent tabbrowser,
#content,
#tabbrowser-tabpanels,
browser[type=content-primary],
browser[type=content] > html {
	background: #2A2A2E !important
}
```

Proof: https://onion.torproject.org/
