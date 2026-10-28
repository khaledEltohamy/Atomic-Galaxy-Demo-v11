# Galaxy generation report

How each of the 260 generated layers was understood.

## Decided by

| Source | Layers | Share |
|---|---:|---:|
| name | 212 | 81.5% |
| default | 44 | 16.9% |
| rule | 4 | 1.5% |

`default` means "drawn exactly as in Figma, no behaviour". That is correct for plain layout frames.

## Widgets produced

| Kind | Count |
|---|---:|
| text | 65 |
| icon | 51 |
| container | 44 |
| button | 19 |
| spacer | 12 |
| image | 8 |
| textField | 7 |
| divider | 7 |
| appBar | 7 |
| card | 6 |
| navigationBar | 5 |
| radio | 5 |
| grid | 4 |
| tappable | 4 |
| checkbox | 3 |
| listView | 3 |
| dropdown | 3 |
| switchControl | 3 |
| pageView | 1 |
| pageIndicator | 1 |
| tabBar | 1 |
| slider | 1 |

## Needs a human look (5)

These look interactive but were not recognised. Name the layer (for example `button`), bind its fill to a `button*` variable, or add a rule to `galaxy_rules.json`.

- `Login` / `box` (I49:68;47:26): looks like a button / chip, kept as a plain box
- `ProductDetails` / `badge` (50:95): looks like a button / chip, kept as a plain box
- `Cart` / `cart-item` (50:166): looks like a button / chip, kept as a plain box
- `Cart` / `cart-item` (50:177): looks like a button / chip, kept as a plain box
- `OrderPlaced` / `status` (58:192): looks like a button / chip, kept as a plain box

## Icons without an SVG (0)

Nothing.
