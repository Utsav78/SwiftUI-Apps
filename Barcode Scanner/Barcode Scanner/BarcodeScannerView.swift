//
//  ContentView.swift
//  Barcode Scanner
//
//  Created by Utsav Budathoki on 23/4/2024.
//

import SwiftUI

struct AlertItem : Identifiable {
    var id = UUID()
    
    let title: String
    let message: String
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidDeviceInput = AlertItem(title: "Invalid Device Input",
                                              message: "Something is wrong with the camera. We are unable to capture the input.",
                                              dismissButton: .default(Text("Ok")))
    static let invalidScannedType = AlertItem(title: "Invalid Scan Type",
                                              message: "The value scanned is not valid. This app scans EAN-8 and EAN-13.",
                                              dismissButton: .default(Text("Ok")))
}

struct BarcodeScannerView: View {
    @State private var scannedCode = ""
    @State private var alertItem: AlertItem?

    var body: some View {
        NavigationView {
            VStack {
                ScannerView(scannedCode: $scannedCode, alertItem: $alertItem)
                    .frame(maxWidth: .infinity,
                    maxHeight: 300)
                
                Spacer()
                    .frame(height: 60)
                
                Label("Scanned Barcode", systemImage: "barcode.viewfinder")
                    .font(.title)
                
                Text(scannedCode.isEmpty ? "Not Yet Scanned" : scannedCode)
                    .font(.largeTitle)
                    .foregroundStyle(scannedCode.isEmpty ? Color.red : Color.green)
                    .padding()
                
                
            }
            .navigationTitle("Barcode Scanner")
            .alert(item: $alertItem) { alertItem in
                Alert(title: Text(alertItem.title), message: Text(alertItem.message), dismissButton: alertItem.dismissButton)
            }
        }
    }
}

#Preview {
    BarcodeScannerView()
}
