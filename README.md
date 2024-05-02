# Github Actions for maintenance page

Composite action to be used for managing maintenance mode status.

It will:
* Enable maintenance page (via CF)
* (panned) Manage downtime in DataDog

```yaml
    - name: Enable maintenance mode
      uses: azan-com-pl/actions-maintenance-mode@main
      with:
        cloudflare-token: ${{ secrets.CLOUDFLARE_TOKEN }}
        cloudflare-kv-namespace-id: ${{ vars.CLOUDFLARE_KV_NAMESPACE_ID }}
        command: enable
```

## Testing commands

```bash
cp .envrc.sample .envrc
./enable.sh
./disable.sh
```
