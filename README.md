# `:thinking_face:` variants 🤔

## What is thinking face? 🤔

_THINKING FACE_ is the name of the unicode emoji U+1F914.

## Directories

* `png/256`
    + Images converted to 256x256 PNG.
* `png/1024`
    + Images converted to 1024x1024 PNG.
* `svg`
    + **Source SVG images**.

## Variants

<!-- GitHub renders usual texts in README.md with 16px font. -->
| Variant | Image | Description |
|---------|-------|-------------|
| `thinking_face` | <img src="svg/thinking_face.svg" width="64"/> | Original Unicode THINKING FACE (U+1F914) by Twemoji. |
| `asking_for_money_face` | <img src="svg/asking_for_money_face.svg" width="64"/> | `:thinking_face:` not thinking but asking for money. |
| `facing_face` | <img src="svg/facing_face.svg" width="64"/> | `:thinking_face:` with its hand replaced by a face. |
| `facing_think` | <img src="svg/facing_think.svg" width="64"/> | `:thinking_face:` with its face and hand swapped. |
| `thinking_think` | <img src="svg/thinking_think.svg" width="64"/> | `:thinking_face:` with its face replaced by a hand. |

## License

The works in this repository are licensed under a
[Creative Commons Attribution 4.0 International License](https://creativecommons.org/licenses/by/4.0/deed).

See [AUTHORS.md](AUTHORS.md) for authors.

### Contribution

1. Create an SVG image.
    1. Create.
        + Canvas size should be 36x36 px.
            - SVG glyphs in Twemoji use this size.
        + **Ensure you are the original author, or you have the right to
          redistribute the data under CC-BY 4.0 license**.
        + Ensure the image is reasonably clean.
          You can use `Clean Up Document` command if you are using Inkscape.
    2. Set appropriate metadata for the SVG image.
        + You can do this by Inkscape.
        + License: CC-BY 4.0.
        + Author, contributor, etc.
2. Generate png images from the SVG image.
    1. Ensure you have [Inkscape](https://inkscape.org/) and
      {[`oxipng`](https://github.com/shssoichiro/oxipng/) or [`optipng`](http://optipng.sourceforge.net/)} installed.
    2. Run `bin/generate-png.sh {{variant_name}}`.
      Replace `{{variant_name}}` with your new variant.
3. Update the document.
    1. Update `Variants` seciton of `README.md`.
    2. Update `AUTHORS.md`.
4. Add the files to the repository.
    1. Fork this repository and create a new branch.
    2. Add the files to the new branch.
    3. Push the branch to GitHub.
5. Make a Pull Request.
