/*

//: [Previous](@previous)
let preferredWidth = 615
let preferredHeight = 615
/*:
 ## Required code
 
 Lines 28 to 36 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth,
                    height: preferredHeight)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

// Create a turtle that will draw upon the canvas
let t = Tortoise(drawingUpon: canvas)

// Draw an "n"-sided polygon
func drawPolygon(withSides n: Int, withLength l: Int) {
    
    
    // Calculate the exterior angle
    let exteriorAngle: Degrees = 360.0 / Degrees(n)
    
    
    // Draw the sides of the polygon
    // Loop "n" times
    for _ in 1...n {
        
        t.forward(steps: l)
        t.left(by: exteriorAngle)
      
    }
    
}

t.penUp()
t.setPosition(to: Point(x: 200, y: 300))

t.penDown()

t.forward(steps: 70)
t.left(by: 90)
t.forward(steps: 80)
t.right(by: 90)
t.forward(steps: 50)
t.left(by: 90)
t.forward(steps: 50)
t.right(by: 90)
t.forward(steps: 80)
t.left(by: 90)
t.drawSelf()

t.drawSelf()

*/