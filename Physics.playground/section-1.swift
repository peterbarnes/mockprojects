// Playground - noun: a place where people can play

import Cocoa

struct Vector: Printable {
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
        return Vector(x: x + vector.x,
                      y: y + vector.y)
    }
    
    func vectorByMultiplyingVector(left: Vector, right: Double) -> Vector {
        return Vector(x: left.x * right, y: left.y * right)
    }
    
    var length: Double {
        return sqrt(x*x + y*y)
    }
    
    // Printable protocol not working
    var description: String {
        return "(\(x), \(y))"
    }
    
    //Ask about why the function overloads are erroring
    
//    func + (left: Vector, right: Vector) -> Vector {
//        return left.vectorByAddingVector(right)
//    }
//    
//    func * (left: Vector, right: Double) -> Vector {
//        return Vector(x: left.x * right, y: left.y * right)
//    }
}

let gravity = Vector(x: 0.0, y: -9.8)
let twoGs = gravity.vectorByAddingVector(gravity)
println("Gravity is \(gravity)")

class Particle {
    
    var position: Vector
    var velocity: Vector
    var acceleration: Vector
    
    init(position: Vector){
        self.position = position
        self.velocity = Vector()
        self.acceleration = Vector()
    }
    
    convenience init() {
        self.init(position: Vector())
    }
    
    func tick(dt: NSTimeInterval) {
        
        velocity = velocity.vectorByAddingVector(acceleration).vectorByMultiplyingVector(velocity, right: dt)
        position = position.vectorByAddingVector(velocity).vectorByMultiplyingVector(position, right: dt)
        position.y = max(0, position.y)
        
    }
    
}

class Simulation {
    
    var particles: [Particle] = []
    var time: NSTimeInterval = 0.0
    
    func addParticle(particle: Particle) {
        particles.append(particle)
    }
    
    func tick(dt: NSTimeInterval) {
        for particle in particles {
            particle.acceleration = particle.acceleration.vectorByAddingVector(gravity)
            particle.tick(dt)
            particle.acceleration = Vector()
            particle.position.y
        }
        time += dt
        particles = particles.filter {
            particle in let live = particle.position.y > 0.0
            if !live {
                println("Particle terminated at time \(self.time)")
            }
            return live
        }
    }
    
}

let simulation = Simulation()
let ball = Particle()

ball.acceleration = Vector(x: 0, y: 100)
simulation.addParticle(ball)

while simulation.particles.count > 0 && simulation.time < 500 {
    simulation.tick(1.0)
}


