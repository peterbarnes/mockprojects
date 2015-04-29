// Playground - noun: a place where people can play

import Cocoa

struct Vector {
    var x: Double
    var y: Double
    
    init() {
        self.init(x: 0, y: 0)
    }
    
    init(x: Double, y: Double) {
        self.x = x
        self.y = y
    }
    
    func vectorByAddingVector(vector: Vector) -> Vector {
        return Vector(x: self.x + vector.x,
                      y: self.y + vector.y)
    }
}

let gravity = Vector(x: 0.0, y: -9.8)
gravity.x
gravity.y
