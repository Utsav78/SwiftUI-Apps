//
//  ScannerView.swift
//  Barcode Scanner
//
//  Created by Utsav Budathoki on 28/4/2024.
//

import SwiftUI

struct ScannerView: UIViewControllerRepresentable {
    @Binding var scannedCode: String
    @Binding var alertItem: AlertItem?
    
    
    func makeUIViewController(context: Context) -> ScannerVC {
        ScannerVC.init(scannerDelegate: context.coordinator)
    }
    
    func updateUIViewController(_ uiViewController: ScannerVC, context: Context) { }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(scannerView: self)
    }
    
    final class Coordinator: NSObject, ScannerVCDelegates {
        private var scannerView: ScannerView
        
        init(scannerView: ScannerView) {
            self.scannerView = scannerView
        }
        
        func didFind(barcode: String) {
            scannerView.scannedCode = barcode
        }
        
        func didSurface(error: CameraError) {
            switch error {
                
            case .invalidDeviceInput:
                scannerView.alertItem = AlertContext.invalidDeviceInput
            case .invalidScannedValue:
                scannerView.alertItem = AlertContext.invalidScannedType
            }
        }
        
        
    }
        
    
}

#Preview {
    ScannerView(scannedCode: .constant("123456"), alertItem: .constant(AlertItem(title: "Test", message: "This is test", dismissButton: .default(Text("OK")))))
}
