# UIBezierPath+DSL

UIBezierPath+DSL provides a simple way to build bezier paths using a psuedo-DSL.

Inspired by [Masonry](https://github.com/SnapKit/Masonry) and [TurtleBezierPath](https://github.com/mindbrix/TurtleBezierPath).

✓ Supports relative positioning.

```objc
UIBezierPath *path = [UIBezierPath makePath:^(DSLBezierPathMaker *make) {
    make.moveTo(CGPointMake(0.5, 0.5));
    make.lineUp(0.5);
    make.lineRight(0.5);
    make.lineDown(0.5);
    make.lineLeft(1.0);
    make.lineDown(0.5);
    make.lineRight(0.5);
    make.closed();
}];
```

✓ Supports transformations.

```objc
UIBezierPath *path = [[UIBezierPath bezierPathWithOvalInRect:CGRectMake(0.0, 0.0, 1.0, 1.0)] makePath:^(DSLBezierPathMaker *make) {
    make.scale(CGSizeMake(20.0, 20.0));
    make.translate(CGPointMake(10.0, 10.0));
}];
```

✓ Supports function chaining.

```objc
UIBezierPath *path = [UIBezierPath makePath:^(DSLBezierPathMaker *make) {
    make.ovalAt(CGPointMake(0.5, 0.5), 0.25);
    make.moveTo(CGPointMake(0.0, 0.5)).lineTo(CGPointMake(0.5, 0.0)).lineTo(CGPointMake(1.0, 0.5)).lineTo(CGPointMake(0.5, 1.0)).close();
}];
```

### Full API:

UIBezierPath (DSL)

```objc
+ (UIBezierPath *)makePath:(void(^)(DSLBezierPathMaker *make))block;

- (UIBezierPath *)makePath:(void(^)(DSLBezierPathMaker *make))block;
```

DSLBezierPathMaker

```objc
.moveTo(CGPoint point);
.move(CGFloat distance, CGFloat direction);
.moveUp(CGFloat distance);
.moveLeft(CGFloat distance);
.moveDown(CGFloat distance);
.moveRight(CGFloat distance);

.lineTo(CGPoint point);
.line(CGFloat distance, CGFloat direction);
.lineUp(CGFloat distance);
.lineLeft(CGFloat distance);
.lineDown(CGFloat distance);
.lineRight(CGFloat distance);

.arcAt(CGPoint center, CGFloat radius, CGFloat startAngle, CGFloat endAngle, BOOL clockwise);

.curveTo(CGPoint point, CGPoint controlPoint1, CGPoint controlPoint2);

.quadCurveTo(CGPoint point, CGPoint controlPoint);

.transform(CGAffineTransform transform);
.translate(CGPoint point);
.scale(CGSize size);
.rotate(CGFloat angle);

.path(UIBezierPath *path);

.rect(CGRect rect);
.rectAt(CGPoint center, CGFloat radius);

.oval(CGRect rect);
.ovalAt(CGPoint center, CGFloat radius);

.roundedRect(CGRect rect, CGFloat cornerRadius);
.roundedRectAt(CGPoint center, CGFloat radius, CGFloat cornerRadius);

.close();
.closed();
```
