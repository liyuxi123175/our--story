# Our Story

This folder is ready to publish as a static website.

## Recommended public host

Use Vercel static hosting.

Why:

- automatic HTTPS
- simple folder or Git-based deploy
- no backend required

## Files

- `index.html` : main page
- `photos/` : image assets
- `vercel.json` : static hosting config
- `.gitignore` : keeps local-only files out of the repo

## Local preview

Run:

```powershell
.\serve.ps1
```

Then open:

`http://localhost:8080/`

## Public deploy

Fastest path:

1. Create a GitHub repository and upload this whole folder.
2. Import that repository into Vercel.
3. Keep the project as a static site with the root set to this folder.
4. Deploy.

After deploy, Vercel will give you an `https://...` URL.

## GitHub upload set

These files should go to GitHub:

- `index.html`
- `photos/`
- `vercel.json`
- `README.md`
- `serve.ps1`

These files are currently ignored by Git:

- `.claude/`
- `frames/`
- `20260524-0749-55.6624281.mp4`

## Important behavior

- The site works as a static website.
- Photo viewing and 3D animation work in normal browsers.
- Camera gesture control should be used on `localhost` or a real `https://` domain.
- Public deployment is better than LAN HTTP if you want camera access on phones.
