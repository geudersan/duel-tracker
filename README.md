# Duel Life Tracker

Two-player life tracker for Magic: The Gathering Duel Commander, made for one phone lying between the players.

Tracks life (20), poison, commander tax, turns, the Monarch, the Initiative with the Undercity map, and City's blessing. Card lookups and commander art come from the [Scryfall API](https://scryfall.com/docs/api).

## Files

- `duel-tracker.html`: the source (no document skeleton, so it can also be published as a Claude artifact)
- `build.ps1`: wraps the source into `docs/index.html`
- `docs/index.html`: the page GitHub Pages serves

## Update

```powershell
.\build.ps1
git add -A
git commit -m "Describe the change"
git push
```

Card data and images are provided by Scryfall. This project is unofficial Fan Content and isn't approved or endorsed by Wizards of the Coast.
