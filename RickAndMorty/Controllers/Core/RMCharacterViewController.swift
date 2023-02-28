//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Татьяна on 28.02.2023.
//

import UIKit

/// Controller to show and search for Characters
final class RMCharacterViewController: UIViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		title = "Characters"
		view.backgroundColor = .systemBackground
		
		let request = RMRequest(
			endpoint: .character,
			//pathComponents: ["1"],
			queryParameters: [
				URLQueryItem(name: "name", value: "rick"),
				URLQueryItem(name: "status", value: "alive")
			]
		)
		print(request.url)
		
		RMService.shared.execute(
			request,
			expecting: String.self) { result in
				switch result {
					
				case .success(_):
					
				case .failure(_):
					
				}
			}
	}
	
	
}
