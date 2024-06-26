//
//  File.swift
//  
//
//  Created by Benjamin Böcker on 21.09.21.
//

import Foundation
import UIKit
import FirebaseMessaging
import RevenueCat

public enum PHWrapperApp { }


extension PHWrapperApp {
	public static func instantiate(with config: AppConfig) -> UIViewController {
		dependencyInjection(with: config)
				
		return WebViewController()
	}
	
	public static func setAPNSToken(_ token: Data) {
		Messaging.messaging().apnsToken = token
	}
	
	
}
