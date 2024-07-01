Class {
	#name : #DieDslTest,
	#superclass : #TestCase,
	#category : #'AOOD-Dice'
}

{ #category : #tests }
DieDslTest >> testDnWorks [

	self assert: 1 D4 dice anyOne faces equals: 4.
	self assert: 1 D6 dice anyOne faces equals: 6.
	self assert: 1 D10 dice anyOne faces equals: 10.
	self assert: 1 D20 dice anyOne faces equals: 20
]

{ #category : #tests }
DieDslTest >> testEachDnWorks [

	| handle |
	handle := 5 D6.
	self assert: handle diceNumber equals: 5.
	handle dice do: [ :each | self assert: each faces equals: 6 ].
	self assert: handle maxValue equals: 5 * 6
]

{ #category : #tests }
DieDslTest >> testIntDnWorks [

	1 to: 10 do: [ :n | self assert: n D4 diceNumber equals: n ]
]

{ #category : #tests }
DieDslTest >> testSimpleHandle [

	self assert: 2 D20 diceNumber equals: 2
]
