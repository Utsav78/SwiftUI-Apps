//
//  ContentView.swift
//  Barcode Scanner
//
//  Created by Utsav Budathoki on 23/4/2024.
//

import SwiftUI

struct BarcodeScannerView: View {
    @State private var scannedCode = ""
    var body: some View {
        NavigationView {
            VStack {
                ScannerView(scannedCode: $scannedCode)
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
        }
    }
}

#Preview {
    BarcodeScannerView()
}
