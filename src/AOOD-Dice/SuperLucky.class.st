Class {
	#name : #SuperLucky,
	#superclass : #Lucky,
	#category : #'AOOD-Dice'
}

{ #category : #action }
SuperLucky >> roll [

	^ handle maxValue min: handle roll + handle diceNumber
]
