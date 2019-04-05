//
//  ChatViewController.swift
//  Eliza
//
//  Created by Matteo Manferdini on 05/04/2019.
//  Copyright © 2019 Matteo Manferdini. All rights reserved.
//

import UIKit

class ChatViewController: UITableViewController {
	@IBOutlet var messageInputView: UIView!
	@IBOutlet var textField: UITextField!
	
	var messages: [String] = ["Hello, I'm Eliza. What is bothering you today?"]
	
	override var inputAccessoryView: UIView? {
		return messageInputView
	}
	
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		textField.becomeFirstResponder()
	}
	
	override var canBecomeFirstResponder: Bool {
		return true
	}
	
	@IBAction func send(_ sender: Any) {
		guard let message = textField.text, !message.isEmpty else {
			return
		}
		push(message)
		textField.text = nil
		push(Eliza().reply(to: message))
	}
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return messages.count
	}
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let row = indexPath.row
		let identifier = row.isMultiple(of: 2) ? "ElizaCell" : "UserCell"
		let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! MessageCell
		cell.message = messages[row]
		return cell
	}
}

private extension ChatViewController {
	func push(_ message: String) {
		messages.append(message)
		let newMessageIndexPath = IndexPath(row: messages.count - 1, section: 0)
		tableView.insertRows(at: [newMessageIndexPath], with: .fade)
		tableView.scrollToRow(at: newMessageIndexPath, at: .bottom, animated: true)
	}
}

class MessageCell: UITableViewCell {
	@IBOutlet weak var label: UILabel!
	
	var message: String? {
		didSet { label.text = message }
	}
}

