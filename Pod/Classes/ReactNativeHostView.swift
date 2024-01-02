//
//  ReactNativeHostView.swift
//  sdk-pod
//
//  Created by Joao victor Veronezi on 02/01/24.
//

import Foundation
import React

public class ReactNativeHostView: UIView {
    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.loadReactNativeApp()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.loadReactNativeApp()
    }
    
    private func loadReactNativeApp() {
        guard let jsCodeLocation = URL(string: "http://localhost:8081/index.bundle?platform=ios") else { return }

        let rootView = RCTRootView(
            bundleURL: jsCodeLocation,
            moduleName: "App.tsx",
            initialProperties: nil,
            launchOptions: nil
        )
        rootView?.frame = self.bounds
        rootView?.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        if let rv = rootView {
            self.addSubview(rv)
        }
    }
}
