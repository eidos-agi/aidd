# FIXTURE known-bad / stretched-iphone

gates:
  - not-phone-on-tablet
  - regular-width-home
must_fail:
  - ipad critic

The iPhone tab bar and stacked detail are drawn across iPad Pro 13.
Margins grow. Type does not. The sidebar does not exist.

Expected catch: this is phone-on-tablet. Fail it on iPad even if the iPhone plugin would pass.
