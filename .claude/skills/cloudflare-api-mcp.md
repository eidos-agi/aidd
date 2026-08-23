# /cloudflare-api-mcp

Operate Cloudflare through Code Mode. Do not guess endpoints.

Three tools, in this order:

1. `cloudflare_mcp___docs` — product question (Pages vs Workers, limits).
2. `cloudflare_mcp___search` — walk `spec.paths` for the verb and schema.
3. `cloudflare_mcp___execute` — only after the path exists. `code` is an async arrow function. `accountId` is already scoped. Do not ask for a token. Do not print secrets.

```js
async () => {
  return cloudflare.request({
    method: "GET",
    path: `/accounts/${accountId}/pages/projects`,
  });
}
```

Always:

1. List before create.
2. Two hostnames = two properties. Not one worker that inspects `Host`.
3. One owner per hostname. Pages custom domain and Worker custom domain must not share a name.
4. Empty Pages is a 404. Put content on the thing that owns the hostname.
5. Verify after write.
6. Do not touch apex `eidosagi.com` unless asked.

Docs sites: two Pages **or** two Workers. Workers custom domain is `PUT /accounts/{id}/workers/domains` with `{ hostname, service, zone_id }`. That creates orange-cloud `AAAA 100::`.

Zone `eidosagi.com` is already on this account. Live now: `aidd.eidosagi.com` (`aidd-site`), `evolution.eidosagi.com` (`evolution-site`).
