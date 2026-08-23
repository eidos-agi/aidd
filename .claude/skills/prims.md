# /prims

A **Prim** is the file that stores the information. A **Prim Tool** is how you interact with it.

Pronounce /prɪm/. Say “send me the prim.” The spreadsheet is a view.

Home: https://github.com/eidos-agi/prim — read `WHAT-IS-PRIM.md` and `SPEC.md` before inventing a pack.

## Lookup (required)

Before naming a type, a tool, or “what prims exist”, fetch `eidos-agi/prim` `registry/registry.json` (main). FAMILY.md is a sketch. This skill is not the catalog.

- `types[]` — kinds of Prim (`name`, `repo`, `okf`, `status`)
- `tools[]` — operators (`kind` surface|connector, `direction`, `cites` a type or `*`)

A type is not a tool. If it is not in the registry, it is not a Prim type yet. Do not mint `prim.surface`.

OKF is one grammar (`okf: true` on the type). Prim is not OKF.

Closed primitives: file, face, authority, constraint, log, validator, ui, compose, trust. Profiles add domains. They do not add a tenth primitive. `ui` opens. A tool operates. Compose cites; it does not copy claims.

Repos: `prim` (category, owns the registry), `prim.<profile>` (domain), `prim-web` (views, never the store), `prim-mac` (Prim.app).

AIDD evals are the method’s island. A Prim is a knowledge file. Do not call doctrine a prim unless it is packed as one.

Not Second Life prims. Not chat memory. A Prim is a file that outlives the session.
