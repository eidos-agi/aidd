# /cloudflare-api-mcp

Operate Cloudflare through Code Mode. Do not guess endpoints. Do not ask for a token.

If the session has no `cloudflare_mcp___*` tools, stop. The Grok toggle can be on while this chat has none. Retry search once.

Three tools, argument names matter:

| Tool | Args |
| --- | --- |
| `cloudflare_mcp___docs` | `{ query }` |
| `cloudflare_mcp___search` | `{ code }` — walk `spec.paths`. **Not `query`.** |
| `cloudflare_mcp___execute` | `{ code }` — async arrow function. `accountId` is scoped. |

Order: docs or search, then execute. Slim every execute return to `success`, `errors`, ids/names. Full Pages/zone objects truncate and hide failures.

```js
async () => {
  const r = await cloudflare.request({
    method: "GET",
    path: `/accounts/${accountId}/pages/projects`,
  });
  return { success: r.success, errors: r.errors, names: (r.result || []).map(p => p.name) };
}
```

Decide owner first. Two hostnames = two properties.

| Need | Owner |
| --- | --- |
| Git-deployed site | Pages project, then Pages domain |
| First live HTML | Worker script, then Worker domain |

One owner per hostname. Do not attach a Pages custom domain and a Worker custom domain to the same name. If you already did, delete the Pages domain. Empty Pages is a 404.

Worker script names collide with Pages project names. Live AIDD: `aidd-site` → `aidd.eidosagi.com`, `evolution-site` → `evolution.eidosagi.com`. Pages projects `aidd` / `aidd-evolution` exist without those custom domains. Do not name a Worker `aidd`.

Always: list before create. Verify after write. Do not touch apex `eidosagi.com`.

Workers custom domain: `PUT /accounts/{id}/workers/domains` `{ hostname, service, zone_id }`. Zone `eidosagi.com` is `b5a4622089401a8e7cf27ff3da9b1e65`. That creates orange-cloud `AAAA 100::`. workers.dev is `{name}.eidos-agi.workers.dev`.

A Worker PUT of HTML is a first live site. It is not the Git deploy. Source stays in Git.
