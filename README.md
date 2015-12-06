# Bezzy

Bezzy provides a simple way to build bézier paths using a psuedo-DSL.

Inspired by [SnapKit](https://github.com/SnapKit/SnapKit) and [TurtleBezierPath](https://github.com/mindbrix/TurtleBezierPath). Swift port of my [UIBezierPath+DSL](https://github.com/dclelland/UIBezierPath-DSL) Cocoapod.

✓ Supports relative positioning.

```objc

```

✓ Supports transformations.

```objc

```

✓ Supports function chaining.

```objc

```

### Full API:

UIBezierPath

```objc

```

PathMaker

```objc

```

### Wishlist/API ideas

- Better convenience functions for arcs
    - Should be able to arc to a point
    - Should be able to arc by an angle from the current point, given a radius
    
- Location-aware transforms
    - Scale
      - Scale horizontally around x position
      - Scale horizontally around center
      - Scale vertically around y position
      - Scale vertically around center
      - Flip horizontally around x position
      - Flip horizontally around center
      - Flip vertically around y position
      - Flip vertically around center
    - Translate
      - Translate center to point
      - Translate origin to point
    - Rotation
      - Rotate around point
      - Rotate around x and y
      - Rotate around center
      - Half turn around center
      - Clockwise quarter turn around center
      - Anticlockwise quarter turn around center
    - Combination
      - Stretch to fit size, with origin point
      - Stretch to fit size, with center point
      - Stretch to fit rect
      - Stretch to fit rect, with insets
    
