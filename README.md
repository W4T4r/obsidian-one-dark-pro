# One Dark Pro for Obsidian

An Obsidian app theme that brings the One Dark Pro family of dark palettes to
notes, Markdown previews, code blocks, sidebars, tabs, Canvas, graph view, and
common editor surfaces.

This theme is inspired by and adapts palette decisions from
[Binaryify/OneDark-Pro](https://github.com/Binaryify/OneDark-Pro), which is
licensed under MIT. The upstream notice is preserved in
[THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).

![One Dark Pro preview](screenshot.png)

## Palettes

The default palette is One Dark Pro. If the
[Style Settings](https://github.com/mgmeyers/obsidian-style-settings) plugin is
installed, the theme also exposes these palette classes:

- One Dark Pro
- One Dark Pro Darker
- One Dark Pro Mix
- One Dark Pro Flat
- One Dark Pro Night Flat

Obsidian's community theme format installs one `manifest.json` and one
`theme.css` per selectable theme. To make all One Dark Pro variants selectable
without Style Settings, this repository also provides a local build script that
creates five separate theme folders.

## Installation

### From Obsidian Community Themes

After the theme is accepted into the community directory:

1. Open Obsidian settings.
2. Go to **Appearance**.
3. Select **Manage** next to **Themes**.
4. Search for **One Dark Pro**.
5. Install and use the theme.

### Manual installation

1. Create a folder named `One Dark Pro` in your vault's `.obsidian/themes/`
   directory.
2. Copy `manifest.json` and `theme.css` into that folder.
3. Restart Obsidian.
4. Select **One Dark Pro** from **Settings > Appearance > Themes**.

### Manual multi-theme installation

1. Run `sh scripts/build-theme-variants.sh`.
2. Copy the folders in `themes/` into your vault's `.obsidian/themes/`
   directory.
3. Restart Obsidian.
4. Select any of these themes from **Settings > Appearance > Themes**:
   - **One Dark Pro**
   - **One Dark Pro Darker**
   - **One Dark Pro Mix**
   - **One Dark Pro Flat**
   - **One Dark Pro Night Flat**

## Release checklist

Before submitting to the Obsidian community directory:

- Commit `manifest.json`, `theme.css`, `README.md`, `LICENSE`, and a real
  `512 x 288` screenshot.
- Create a GitHub release whose tag matches `manifest.json`'s `version`.
- Upload `manifest.json` and `theme.css` as release assets.
- Submit the repository URL at <https://community.obsidian.md>.

## License

MIT. See [LICENSE](LICENSE) and [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
