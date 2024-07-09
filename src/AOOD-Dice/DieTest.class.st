Class {
	#name : #DieTest,
	#superclass : #TestCase,
	#category : #'AOOD-Dice'
}

{ #category : #tests }
DieTest >> testAddTwoDice [

	| hd |
	hd := (Die withFaces: 6) + (Die withFaces: 6).
	self assert: hd diceNumber equals: 2.
	self assert: hd maxValue equals: 12
]

{ #category : #tests }
DieTest >> testAddingADieAndHandle [

	| hd |
	hd := (Die withFaces: 6) + (DieHandle new addDie: (Die withFaces: 6); yourself).
	self assert: hd diceNumber equals: 2.
	self assert: hd maxValue equals: 12
]

{ #category : #tests }
DieTest >> testCreationIsOk [

	self assert: (Die withFaces: 20) faces equals: 20
]

{ #category : #tests }
DieTest >> testInitializeIsOk [

	self assert: Die new faces equals: 6
]

{ #category : #tests }
DieTest >> testRoll [

	| d |
	d := Die new.
	10 timesRepeat: [ self assert: (d roll between: 1 and: 6) ]
]
