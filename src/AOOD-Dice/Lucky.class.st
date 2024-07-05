Class {
	#name : #Lucky,
	#superclass : #Player,
	#category : #'AOOD-Dice'
}

{ #category : #action }
Lucky >> roll [

	^ handle maxValue min: handle roll + 1
]
