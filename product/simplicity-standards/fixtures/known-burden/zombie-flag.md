# FIXTURE known-burden / zombie-flag

taxonomy: zombie-flag
must_fail:
  - job-backed
  - kill-condition

Feature: `enable_new_nav`
Status: live since gen-002
Job: (none named)
Kill condition: (none)
Last evidence: "We'll remove it after the redesign."

Expected catch: a flag with no job is undeclared surface. The redesign is not a kill condition.
