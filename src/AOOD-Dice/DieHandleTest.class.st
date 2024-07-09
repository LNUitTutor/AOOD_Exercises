Class {
	#name : #DieHandleTest,
	#superclass : #TestCase,
	#category : #'AOOD-Dice'
}

{ #category : #tests }
DieHandleTest >> testAddingHandleAndDice [

	| hd hd1 hd2 |
	hd := DieHandle new
		       addDie: (Die withFaces: 20);
		       addDie: (Die withFaces: 20);
		       addDie: (Die withFaces: 10);
		       yourself.
	hd1 := hd + (Die withFaces: 10).
	hd2 := hd1 + (Die withFaces: 6).
	self assert: hd diceNumber equals: 3.
	self assert: hd1 diceNumber equals: 4.
	self assert: hd2 diceNumber equals: 5.
	self assert: (hd2 dice count: [ :x | x faces = 20]) equals: 2.
	self assert: (hd2 dice count: [ :x | x faces = 10]) equals: 2.
	self assert: hd1 maxValue equals: hd maxValue + 10.
	self assert: hd2 maxValue equals: hd1 maxValue + 6.
]

{ #category : #tests }
DieHandleTest >> testAddingTwiceTheSameDice [

	| handle |
	handle := DieHandle new.
	handle addDie: (Die withFaces: 6).
	self assert: handle diceNumber equals: 1.
	handle addDie: (Die withFaces: 6).
	self assert: handle diceNumber equals: 2
]

{ #category : #tests }
DieHandleTest >> testCreationAdding [

	| handle |
	handle := DieHandle new
		          addDie: (Die withFaces: 6);
		          addDie: (Die withFaces: 10);
		          yourself.
	self assert: handle diceNumber equals: 2
]

{ #category : #tests }
DieHandleTest >> testMaxValue [

	self
		assert: (DieHandle new
				 addDie: (Die withFaces: 6);
				 addDie: (Die withFaces: 10);
				 addDie: (Die withFaces: 20);
				 yourself) maxValue
		equals: 6 + 10 + 20
]

{ #category : #tests }
DieHandleTest >> testRoll [

	| handle |
	handle := DieHandle new.
	5 timesRepeat: [ handle addDie: (Die withFaces: 6) ].
	10 timesRepeat: [
		self assert:
			(handle roll between: handle diceNumber and: handle maxValue) ].

	handle
		addDie: (Die withFaces: 10);
		addDie: (Die withFaces: 20).
	30 timesRepeat: [
		self assert:
			(handle roll between: handle diceNumber and: handle maxValue) ]
]

{ #category : #tests }
DieHandleTest >> testSumOfHandles [

	| hd1 hd2 hd3 |
	hd1 := DieHandle new
		       addDie: (Die withFaces: 20);
		       addDie: (Die withFaces: 20);
		       yourself.
	hd2 := DieHandle new
		       addDie: (Die withFaces: 10);
		       addDie: (Die withFaces: 10);
		       addDie: (Die withFaces: 10);
		       yourself.
	hd3 := hd1 + hd2.
	self assert: hd3 diceNumber equals: 5.
	self assert: (hd3 dice count: [ :x | x faces = 20]) equals: 2.
	self assert: (hd3 dice count: [ :x | x faces = 10]) equals: 3.
]
