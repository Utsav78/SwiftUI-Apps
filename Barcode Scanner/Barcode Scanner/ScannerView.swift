//
//  ScannerView.swift
//  Barcode Scanner
//
//  Created by Utsav Budathoki on 28/4/2024.
//

import SwiftUI

struct ScannerView: UIViewControllerRepresentable {
    
    
    func makeUIViewController(context: Context) -> ScannerVC {
        ScannerVC.init(scannerDelegate: context.coordinator)
    }
    
    func updateUIViewController(_ uiViewController: ScannerVC, context: Context) { }
    
    func makeCoordinator() -> Coordinator {
        Coordinator()
    }
    
    final class Coordinator: NSObject, ScannerVCDelegates {
        func didFind(barcode: String) {
            print(barcode)
        }
        
        func didSurface(error: CameraError) {
            print(error.rawValue)
        }
        
        
    }
        
    
}

#Preview {
    ScannerView()
}
