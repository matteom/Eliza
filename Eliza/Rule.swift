//
//  Rule.swift
//  Eliza
//
//  Created by Matteo Manferdini on 06/04/2019.
//  Copyright © 2019 Matteo Manferdini. All rights reserved.
//

import Foundation

struct Rule {
	let pattern: String
	let replies: [String]
	
	func matchFor(sentence: String) -> String? {
		return match(between: pattern.lowercased(), and: sentence)
	}
}

private extension Rule {
	func match(between pattern: String, and sentence: String) -> String? {
		switch (pattern, sentence) {
		case ("", ""): return ""
		case ("", _), (_, ""): return nil
		case (let pattern, let sentence) where pattern.first != "*":
			return pattern.first == sentence.first
				? match(between: pattern.droppingFirst(), and: sentence.droppingFirst())
				: nil
		default:
			if let _ = match(between: pattern.droppingFirst(), and: sentence.droppingFirst()) {
				return String(sentence.first!)
			} else if let longMatch = match(between: pattern, and: sentence.droppingFirst()) {
				return String(sentence.first!) + longMatch
			} else {
				return nil
			}
		}
	}
}

extension String {
	func droppingFirst() -> String {
		return String(self.dropFirst())
	}
}
