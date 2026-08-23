# FIXTURE known-bad / raw-button

gates:
  - shadcn-interactive
must_fail:
  - mechanical

Save is `<button className="bg-blue-600 px-4 py-2 text-white">Save</button>` next to a shadcn Input.

Expected catch: product UI uses the copied Button primitive. Raw markup is undeclared.
