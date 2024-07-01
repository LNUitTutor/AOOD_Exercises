Class {
	#name : #CpDirectionTest,
	#superclass : #TestCase,
	#category : #'AOOD-Directions'
}

{ #category : #tests }
CpDirectionTest >> testEastReturnRightPosition [

	| newPos |
	newPos := CpDirection east * (3 @ 2).
	self assert: newPos x equals: 4.
	self assert: newPos y equals: 2
]

{ #category : #tests }
CpDirectionTest >> testNorthReturnOneRowUpPosition [

	| newPos |
	newPos := CpDirection north * (3 @ 2).
	self assert: newPos x equals: 3.
	self assert: newPos y equals: 1
]

{ #category : #tests }
CpDirectionTest >> testSouthReturnOneRowDownPosition [

	| newPos |
	newPos := CpDirection south * (3 @ 2).
	self assert: newPos x equals: 3.
	self assert: newPos y equals: 3
]

{ #category : #tests }
CpDirectionTest >> testWestReturnLeftPosition [

	| newPos |
	newPos := CpDirection west * (3 @ 2).
	self assert: newPos x equals: 2.
	self assert: newPos y equals: 2
]
