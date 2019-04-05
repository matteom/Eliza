//
//  DesignableImageView.swift
//  Repositories
//
//  Created by Matteo Manferdini on 23/10/2017.
//  Copyright © 2017 Pure Creek. All rights reserved.
//

import UIKit

@IBDesignable class DesignableImageView: UIImageView {}
@IBDesignable class DesignableView: UIView {}

extension UIView {
	@IBInspectable var cornerRadius: CGFloat {
		get { return layer.cornerRadius }
		set {
			layer.cornerRadius = newValue
			layer.masksToBounds = newValue > 0
		}
	}
}

extension CGRect {
	func shifted(by x: CGFloat) -> CGRect {
		var newRect = self
		newRect.origin.x += x
		return newRect
	}
}

@IBDesignable
class DesignableTextField: UITextField {
	override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
		return bounds.shifted(by: 16.0)
	}
	
	override func editingRect(forBounds bounds: CGRect) -> CGRect {
		return bounds.shifted(by: 16.0)
	}
}
