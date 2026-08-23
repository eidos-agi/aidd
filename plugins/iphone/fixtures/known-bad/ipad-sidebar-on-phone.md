# FIXTURE known-bad / ipad-sidebar-on-phone

gates:
  - compact-width
  - not-ipad-chrome
must_fail:
  - iphone critic

A NavigationSplitView with a 320pt sidebar is the home screen on iPhone SE.
The detail pane is empty until a row is tapped. The primary action is in the sidebar.

Expected catch: this is iPad chrome. Fail it on iPhone even if the iPad plugin would pass.
