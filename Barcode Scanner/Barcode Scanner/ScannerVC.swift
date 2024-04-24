//
//  ScannerVC.swift
//  Barcode Scanner
//
//  Created by Utsav Budathoki on 24/4/2024.
//

import UIKit
import AVFoundation

protocol ScannerVCDelegates: AnyObject {
    func didFind(barcode: String)
}

final class ScannerVC: UIViewController {
    let captureSession = AVCaptureSession()
}
