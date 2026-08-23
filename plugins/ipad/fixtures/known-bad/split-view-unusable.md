# FIXTURE known-bad / split-view-unusable

gates:
  - split-view-reflow
  - compact-column
must_fail:
  - mechanical

At Split View 1/3 the trailing pane is 320pt. The table columns do not reflow. The primary action is clipped. The job cannot complete without undoing Split View.

Expected catch: launch-size full screen is not the test. 1/3 is.
