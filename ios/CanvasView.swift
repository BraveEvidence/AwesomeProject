//
//  CanvasView.swift
//  AwesomeProject
//
//  Created by Pritish Sawant on 27/12/20.
//

import Foundation

class CanvasView: UIView {
    
    var lines = [[CGPoint]]()
    
    override init(frame: CGRect) {
        super.init(frame:frame)
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        guard let context = UIGraphicsGetCurrentContext() else {
            return
        }
        
        context.setStrokeColor(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1))
        context.setLineWidth(10)
        context.setLineCap(.butt)
        
        lines.forEach { (line) in
            for(i,p) in line.enumerated() {
                if i == 0 {
                    context.move(to: p)
                } else {
                    context.addLine(to: p)
                }
            }
        }
        
        
        
        context.strokePath()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        lines.append([CGPoint]())
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let point = touches.first?.location(in: nil) else {
            return
        }
        
        
        
        guard var lastLine = lines.popLast() else {return }
        lastLine.append(point)
        lines.append(lastLine)
        setNeedsDisplay()
    }
}
