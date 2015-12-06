//
//  Bezzy.swift
//  Bezzy
//
//  Created by Daniel Clelland on 6/12/15.
//  Copyright © 2015 Daniel Clelland. All rights reserved.
//

import Foundation

// MARK: UIBezierPath extensions

public extension UIBezierPath {
    
    /**
     Creates a new bezier path, using a `PathMaker` class.
     
     - parameter closure: The *closure*, used to apply operations to the `PathMaker` instance.
     
     - returns: The new bezier path.
     */
    
    class func makePath(@noescape closure: (make: PathMaker) -> Void) -> UIBezierPath {
        let maker = PathMaker(path: UIBezierPath())
        closure(make: maker)
        return maker.path
    }
    
    /**
     Creates a new bezier path, using a `PathMaker` class, starting with a copy of `self`.
     
     - parameter closure: The *closure*, used to apply operations to the `PathMaker` instance.
     
     - returns: The new bezier path.
     */
    
    func makePath(@noescape closure: (make: PathMaker) -> Void) -> UIBezierPath {
        let maker = PathMaker(path: self.copy() as! UIBezierPath)
        closure(make: maker)
        return maker.path
    }
    
}

// MARK: PathMaker class

public class PathMaker {
    
    private let path: UIBezierPath
    
    private init(path: UIBezierPath) {
        self.path = path
    }
    
    // MARK: Moves
    
    /// Move the current point to *point*.
    public func move(to point: CGPoint) -> PathMaker {
        path.moveToPoint(point)
        return self
    }
    
    /// Move the current point to the point defined by *x* and *y*.
    public func move(x x: CGFloat, y: CGFloat) -> PathMaker {
        return self.move(to: CGPoint(x: x, y: y))
    }
    
    /// Move the current point by *vector*.
    public func move(by vector: CGVector) -> PathMaker {
        return self.move(x: path.currentPoint.x + vector.dx, y: path.currentPoint.y + vector.dy)
    }
    
    /// Move the current point by the vector defined by *dx* and *dy*.
    public func move(dx dx: CGFloat, dy: CGFloat) -> PathMaker {
        return self.move(by: CGVector(dx: dx, dy: dy))
    }
    
    /// Move the current point in the *direction* (radians) by amount *distance*.
    public func move(inDirection direction: CGFloat, distance: CGFloat) -> PathMaker {
        return self.move(dx: distance * cos(direction), dy: distance * sin(direction))
    }
    
    /// Move the current point upwards by amount *distance*.
    public func move(up distance: CGFloat) -> PathMaker {
        return self.move(dx: 0, dy: -distance)
    }
    
    /// Move the current point leftwards by amount *distance*.
    public func move(left distance: CGFloat) -> PathMaker {
        return self.move(dx: -distance, dy: 0)
    }
    
    /// Move the current point downwards by amount *distance*.
    public func move(down distance: CGFloat) -> PathMaker {
        return self.move(dx: 0, dy: distance)
    }
    
    /// Move the current point rightwards by amount *distance*.
    public func move(right distance: CGFloat) -> PathMaker {
        return self.move(dx: distance, dy: 0)
    }
    
    // MARK: Lines
    
    /// Append a line to *point*.
    public func line(to point: CGPoint) -> PathMaker {
        path.addLineToPoint(point)
        return self
    }
    
    /// Append a line to the point defined by *x* and *y*.
    public func line(x x: CGFloat, y: CGFloat) -> PathMaker {
        return self.line(to: CGPointMake(x, y))
    }
    
    /// Append a line defined by *vector*.
    public func line(by vector: CGVector) -> PathMaker {
        return self.line(x: path.currentPoint.x + vector.dx, y: path.currentPoint.y + vector.dy)
    }
    
    /// Append a line defined by the vector defined by *dx* and *dy*.
    public func line(dx dx: CGFloat, dy: CGFloat) -> PathMaker {
        return self.line(by: CGVector(dx: dx, dy: dy))
    }
    
    /// Append a line in the *direction* (radians) by amount *distance*.
    public func line(inDirection direction: CGFloat, distance: CGFloat) -> PathMaker {
        return self.line(dx: distance * cos(direction), dy: distance * sin(direction))
    }
    
    /// Append a line upwards by amount *distance*.
    public func line(up distance: CGFloat) -> PathMaker {
        return self.line(dx: 0, dy: -distance)
    }
    
    /// Append a line leftwards by amount *distance*.
    public func line(left distance: CGFloat) -> PathMaker {
        return self.line(dx: -distance, dy: 0)
    }
    
    /// Append a line downwards by amount *distance*.
    public func line(down distance: CGFloat) -> PathMaker {
        return self.line(dx: 0, dy: distance)
    }
    
    /// Append a line rightwards by amount *distance*.
    public func line(right distance: CGFloat) -> PathMaker {
        return self.line(dx: distance, dy: 0)
    }
    
    // MARK: Closure
    
    /// Close the path.
    public func close() -> PathMaker {
        self.path.closePath()
        return self
    }
    
    /// Close the path.
    public func closed() -> PathMaker {
        return self.close()
    }
}