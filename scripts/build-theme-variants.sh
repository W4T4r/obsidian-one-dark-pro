#!/usr/bin/env sh
set -eu

ROOT=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
SOURCE_CSS="$ROOT/theme.css"
SOURCE_MANIFEST="$ROOT/manifest.json"

build_theme() {
  name=$1
  folder=$2
  class_name=${3:-}

  for base in "$ROOT/themes" "$ROOT/.obsidian/themes"; do
    target="$base/$folder"
    if [ "$(mkdir -p "$target" && cd "$target" && pwd -P)" = "$ROOT" ]; then
      continue
    fi

    sed "s/\"name\": \"[^\"]*\"/\"name\": \"$name\"/" "$SOURCE_MANIFEST" > "$target/manifest.json"

    if [ -z "$class_name" ]; then
      cp "$SOURCE_CSS" "$target/theme.css"
    else
      cp "$SOURCE_CSS" "$target/theme.css"
      {
        printf '\n/* Standalone default for %s. */\n' "$name"
        awk -v selector="body.$class_name {" '
          $0 == selector {
            print "body {"
            in_block = 1
            next
          }
          in_block && $0 == "}" {
            print
            in_block = 0
            next
          }
          in_block {
            print
          }
        ' "$SOURCE_CSS"
      } >> "$target/theme.css"
    fi
  done
}

build_theme "One Dark Pro" "One Dark Pro"
build_theme "One Dark Pro Darker" "One Dark Pro Darker" "odp-darker"
build_theme "One Dark Pro Mix" "One Dark Pro Mix" "odp-mix"
build_theme "One Dark Pro Flat" "One Dark Pro Flat" "odp-flat"
build_theme "One Dark Pro Night Flat" "One Dark Pro Night Flat" "odp-night-flat"
