Class {
	#name : #DieHandleTest,
	#superclass : #TestCase,
	#category : #'AOOD-Dice'
}

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
DieHandleTest >> testRoll [

	| handle |
	handle := DieHandle new.
	5 timesRepeat: [ handle addDie: (Die withFaces: 6) ].
	10 timesRepeat: [ self assert: (handle roll between: 5 and: 30) ].

	handle
		addDie: (Die withFaces: 10);
		addDie: (Die withFaces: 20).
	30 timesRepeat: [ self assert: (handle roll between: 7 and: 60) ]
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
