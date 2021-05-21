# OAuth 2.0 authentication vulnerabilities

Notes from learning with https://portswigger.net/web-security/oauth


1. Authentication bypass via OAuth implicit flow

When the client application didn't validate accessToken with user account(email), attacker could use their own accessToken to login as others.

2. Forced OAuth profile linking

If the authorization server didn't sent `state` to `redirect_uri`, meaning that there could have a CSRF issue, attackers could use their own accessToken to let people bind attacker's account to theirs by using `iframe` to complete the oauth flow.

https://portswigger.net/web-security/oauth/lab-oauth-forced-oauth-profile-linking

3. OAuth account hijacking via redirect_uri

If auth server didn't verified redirect_uri, attacker could use `iframe` to let people implicitly complete oauth flow but with attackers' redirect_uri, in this way, attackers can get the other's accessToken, and then use stolen token to login with real redirect_uri and login as others.

https://portswigger.net/web-security/oauth/lab-oauth-account-hijacking-via-redirect-uri
