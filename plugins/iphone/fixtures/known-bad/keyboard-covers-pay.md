# FIXTURE known-bad / keyboard-covers-pay

gates:
  - keyboard-primary
must_fail:
  - mechanical

Card number field focused. Compact keyboard covers Pay Now. The user cannot submit without dismissing, and dismissing blurs the field.

Expected catch: compact keyboard vs CTA is an iPhone-specific miss. A 13-inch iPad keyboard may not reproduce it.
