# One Dark Pro Preview

This page is a compact visual test for the Obsidian theme.

## Markdown

Use this note to check **bold text**, *italic text*, ==highlights==, `inline code`,
[internal links](README.md), [external links](https://obsidian.md), and tags such
as #theme #one-dark-pro #obsidian.

### Lists

- Default palette: One Dark Pro
- Variants: Darker, Mix, Flat, Night Flat
- Surfaces: editor, reading view, sidebars, modals, graph, Canvas

1. Verify readable contrast.
2. Verify active and hover states.
3. Verify code colors.

### Task List

- [x] Theme files exist
- [x] MIT notice is included
- [ ] Replace the placeholder screenshot
- [ ] Create the `1.0.0` release

## Callouts

> [!note]
> Notes should feel quiet and readable.

> [!tip]
> Positive callouts use the green One Dark Pro accent.

> [!warning]
> Warnings should stand out without becoming loud.

> [!danger]
> Error states use the coral red accent.

## Code

```ts
type Palette = "default" | "darker" | "mix" | "flat" | "night-flat";

const theme = {
  name: "One Dark Pro",
  accent: "#61afef",
  background: "#282c34",
  variants: ["default", "darker", "mix", "flat", "night-flat"] satisfies Palette[],
};

export function preview(value: string): string {
  return `Rendering ${value} in ${theme.name}`;
}
```

```css
.theme-dark {
  --background-primary: #282c34;
  --text-normal: #abb2bf;
  --text-accent: #61afef;
}
```

## Table

| Element | Color | Purpose |
| --- | --- | --- |
| Blue | `#61afef` | Links, focus, functions |
| Purple | `#c678dd` | Keywords and H2 |
| Green | `#98c379` | Strings and success |
| Yellow | `#e5c07b` | Classes and warnings |
| Red | `#e06c75` | Errors and tags |

## Quote

> A good theme should make dense notes easier to scan without making every
> element compete for attention.

## Embed

![[README.md]]
