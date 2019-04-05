//
//  Eliza.swift
//  Eliza
//
//  Created by Matteo Manferdini on 05/04/2019.
//  Copyright © 2019 Matteo Manferdini. All rights reserved.
//

import Foundation

extension String {
	func removingAllSymbols() -> String {
		return self.filter { character in
			return character
				.unicodeScalars
				.allSatisfy { !CharacterSet.symbols.contains($0) }
		}
	}
}

struct Eliza {
	func reply(to message: String) -> String {
		let message = message
			.removingAllSymbols()
			.lowercased()
		return transform(message: message)
	}
}

private extension Eliza {
	func transform(message: String) -> String {
		return StaticData.rules
			.map { ($0, $0.matchFor(sentence: message)) }
			.first(where: { (rule, result) in result != nil })
			.map { (rule, result) -> String in
				guard let result = result else { return "" }
				return rule.replies[Int.random(in: 0 ..< rule.replies.count)]
					.replacingOccurrences(of: "*", with: Reflector().reflect(sentence: result))
			} ?? "..."
	}
}
