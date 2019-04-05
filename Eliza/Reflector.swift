//
//  Reflector.swift
//  Eliza
//
//  Created by Matteo Manferdini on 05/04/2019.
//  Copyright © 2019 Matteo Manferdini. All rights reserved.
//

import Foundation

struct Reflector {
	func reflect(sentence: String) -> String {		
		let reflected = sentence
			.components(separatedBy: .whitespaces)
			.map { reflect(word: $0, with: StaticData.reflections) }
		return reflected
			.dropFirst()
			.reduce("\(reflected[0])", { $0 + " " + $1 })
	}
}

private extension Reflector {	
	func reflect(word: String, with reflections: [String: String]) -> String {
		return reflections[word] ?? word
	}
}
