//
//  CustomSenceKit.swift
//  UI-594
//
//  Created by nyannyan0328 on 2022/06/23.
//

import SwiftUI
import SceneKit





struct CustomSenceKit: UIViewRepresentable {
    
    @Binding var scene : SCNScene?
    var isTopProption : Bool = false
    func makeUIView(context: Context) -> SCNView {
        
        let view = SCNView()
        view.scene = scene
        view.backgroundColor = .clear
        view.autoenablesDefaultLighting = true
        view.isJitteringEnabled = false
        view.allowsCameraControl = false
        view.antialiasingMode = .multisampling4X
        
        return view
        
    }
    func updateUIView(_ uiView: SCNView, context: Context) {
        
        uiView.scene = scene
        uiView.pointOfView?.eulerAngles.x = -0.3
        uiView.scene?.rootNode.eulerAngles.x = 2.5
        
        
        if isTopProption{
            
            uiView.scene?.rootNode.childNode(withName: "Closed_Box", recursively: true)?.isHidden = true
            
        }
        else{
            uiView.scene?.rootNode.childNode(withName: "Cover", recursively: true)?.isHidden = true
            
            
        }
        
    }
}

struct CustomSenceKit_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
