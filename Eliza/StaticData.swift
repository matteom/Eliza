//
//  Rules.swift
//  Eliza
//
//  Created by Matteo Manferdini on 09/04/2019.
//  Copyright © 2019 Matteo Manferdini. All rights reserved.
//

import Foundation

struct StaticData {}

extension StaticData {
	static var reflections: [String: String] {
		return [
			"am": "are",
			"was": "were",
			"i": "you",
			"i'm": "you are",
			"i'd": "you would",
			"i've": "you have",
			"i'll": "you will",
			"my": "your",
			"me": "you",
			"are": "am",
			"you're": "I am",
			"you've": "I have",
			"you'll": "I will",
			"your": "my",
			"yours": "mine",
			"you": "me"
		]
	}
}

extension StaticData {
	static var rules: [Rule] = [
			Rule(pattern: "", replies: ["Speak up! I can't hear you."]),
			
			Rule(pattern: "I need *", replies: [
				"Why do you need *?",
				"Would it really help you to get *?",
				"Are you sure you need *?"]),
			
			Rule(pattern: "Why don't you *", replies: [
				"Do you really think I don't *?",
				"Perhaps eventually I will *.",
				"Do you really want me to *?"]),
			
			Rule(pattern: "Why can't I *", replies: [
				"Do you think you should be able to *?",
				"If you could * , what would you do?",
				"I don't know -- why can't you *?",
				"Have you really tried?"]),
			
			Rule(pattern: "I can't *", replies: [
				"How do you know you can't *?",
				"Perhaps you could * if you tried.",
				"What would it take for you to *?"]),
			
			Rule(pattern: "I am *", replies: [
				"Did you come to me because you are *?",
				"How long have you been *?",
				"How do you feel about being *?"]),
			
			Rule(pattern: "I'm *", replies: [
				"How does being * make you feel?",
				"Do you enjoy being *?",
				"Why do you tell me you're *?",
				"Why do you think you're *?"]),
			
			Rule(pattern: "Are you *", replies: [
				"Why does it matter whether I am *?",
				"Would you prefer it if I were not *?",
				"Perhaps you believe I am *.",
				"I may be * -- what do you think?"]),
			
			Rule(pattern: "What *", replies: [
				"Why do you ask?",
				"How would an answer to that help you?",
				"What do you think?"]),
			
			Rule(pattern: "How *", replies: [
				"How do you suppose?",
				"Perhaps you can answer your own question.",
				"What is it you're really asking?"]),
			
			Rule(pattern: "Because *", replies: [
				"Is that the real reason?",
				"What other reasons come to mind?",
				"Does that reason apply to anything else?",
				"If * , what else must be true?"]),
			
			Rule(pattern: "* sorry *", replies: [
				"There are many times when no apology is needed.",
				"What feelings do you have when you apologize?"]),
			
			Rule(pattern: "Hello *", replies: [
				"Hello... I'm glad you could drop by today.",
				"Hi there... how are you today?",
				"Hello, how are you feeling today?"]),
			
			Rule(pattern: "Hello", replies: [
				"Hello... I'm glad you could drop by today.",
				"Hi there... how are you today?",
				"Hello, how are you feeling today?"]),
			
			Rule(pattern: "Hi", replies: [
				"Hello... I'm glad you could drop by today.",
				"Hi there... how are you today?",
				"Hello, how are you feeling today?"]),
			
			Rule(pattern: "I think *", replies: [
				"Do you doubt *?",
				"Do you really think so?",
				"But you're not sure *?"]),
			
			Rule(pattern: "* friend *", replies: [
				"Tell me more about your friends.",
				"When you think of a friend, what comes to mind?",
				"Why don't you tell me about a childhood friend?"]),
			
			Rule(pattern: "Yes", replies: [
				"You seem quite sure.",
				"OK, but can you elaborate a bit?"]),
			
			Rule(pattern: "* computer *", replies: [
				"Are you really talking about me?",
				"Does it seem strange to talk to a computer?",
				"How do computers make you feel?",
				"Do you feel threatened by computers?"]),
			
			Rule(pattern: "Is it *", replies: [
				"Do you think it is *?",
				"Perhaps it's * -- what do you think?",
				"If it were * , what would you do?",
				"It could well be that *."]),
			
			Rule(pattern: "It is *", replies: [
				"You seem very certain.",
				"If I told you that it probably isn't * , what would you feel?"]),
			
			Rule(pattern: "Can you *", replies: [
				"What makes you think I can't *?",
				"If I could * , then what?",
				"Why do you ask if I can *?"]),
			
			Rule(pattern: "Can I *", replies: [
				"Perhaps you don't want to *.",
				"Do you want to be able to *?",
				"If you could * , would you?"]),
			
			Rule(pattern: "You are *", replies: [
				"Why do you think I am *?",
				"Does it please you to think that I'm *?",
				"Perhaps you would like me to be *.",
				"Perhaps you're really talking about yourself?"]),
			
			Rule(pattern: "You're *", replies: [
				"Why do you say I am *?",
				"Why do you think I am *?",
				"Are we talking about you, or me?"]),
			
			Rule(pattern: "I don't *", replies: [
				"Don't you really *?",
				"Why don't you *?",
				"Do you want to *?"]),
			
			Rule(pattern: "I feel *", replies: [
				"Good, tell me more about these feelings.",
				"Do you often feel *?",
				"When do you usually feel *?",
				"When you feel *, what do you do?"]),
			
			Rule(pattern: "I have *", replies: [
				"Why do you tell me that you've *?",
				"Have you really *?",
				"Now that you have *, what will you do next?"]),
			
			Rule(pattern: "I would *", replies: [
				"Could you explain why you would *?",
				"Why would you *?",
				"Who else knows that you would *?"]),
			
			Rule(pattern: "Is there *", replies: [
				"Do you think there is *?",
				"It's likely that there is *.",
				"Would you like there to be *?"]),
			
			Rule(pattern: "My *", replies: [
				"I see, your *.",
				"Why do you say that your *?",
				"When your *, how do you feel?"]),
			
			Rule(pattern: "You *", replies: [
				"We should be discussing you, not me.",
				"Why do you say that about me?",
				"Why do you care whether I *?"]),
			
			Rule(pattern: "Why *", replies: [
				"Why don't you tell me the reason why *?",
				"Why do you think *?"]),
			
			Rule(pattern: "I want *", replies: [
				"What would it mean to you if you got *?",
				"Why do you want *?",
				"What would you do if you got *?",
				"If you got *, then what would you do?"]),
			
			Rule(pattern: "* mother *", replies: [
				"Tell me more about your mother.",
				"What was your relationship with your mother like?",
				"How do you feel about your mother?",
				"How does this relate to your feelings today?",
				"Good family relations are important."]),
			
			Rule(pattern: "* father *", replies: [
				"Tell me more about your father.",
				"How did your father make you feel?",
				"How do you feel about your father?",
				"Does your relationship with your father relate to your feelings today?",
				"Do you have trouble showing affection with your family?"]),
			
			Rule(pattern: "* child *", replies: [
				"Did you have close friends as a child?",
				"What is your favorite childhood memory?",
				"Do you remember any dreams or nightmares from childhood?",
				"Did the other children sometimes tease you?",
				"How do you think your childhood experiences relate to your feelings today?"]),
			
			Rule(pattern: "*?", replies: [
				"Why do you ask that?",
				"Please consider whether you can answer your own question.",
				"Perhaps the answer lies within yourself?",
				"Why don't you tell me?"]),
			
			Rule(pattern: "goodbye", replies: [
				"Thank you for talking with me.",
				"Good-bye.",
				"Thank you, that will be $150.  Have a good day!"]),
			
			Rule(pattern: "*", replies: [
				"Please tell me more.",
				"Let's change focus a bit... Tell me about your family.",
				"Can you elaborate on that?",
				"Why do you say that *?",
				"I see.",
				"Very interesting.",
				"*.",
				"I see. And what does that tell you?",
				"How does that make you feel?",
				"How do you feel when you say that?"])
		]
}
