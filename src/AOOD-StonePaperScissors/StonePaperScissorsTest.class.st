Class {
	#name : #StonePaperScissorsTest,
	#superclass : #TestCase,
	#category : #'AOOD-StonePaperScissors'
}

{ #category : #tests }
StonePaperScissorsTest >> testPaperAgainsPaper [

	self assert: (Paper new play: Paper new) equals: #draw
]

{ #category : #tests }
StonePaperScissorsTest >> testPaperAgainstStoneIsWinning [

	self assert: (Stone new play: Paper new) equals: #paper.
	self assert: (Paper new play: Stone new) equals: #paper
]

{ #category : #tests }
StonePaperScissorsTest >> testScissorAgsinstPaperIsWinning [

	self assert: (Scissors new play: Paper new) equals: #scissors.
	self assert: (Paper new play: Scissors new) equals: #scissors
]

{ #category : #tests }
StonePaperScissorsTest >> testScissorsAgainsScissors [

	self assert: (Scissors new play: Scissors new) equals: #draw
]

{ #category : #tests }
StonePaperScissorsTest >> testStoneAgainsScissorsIsWinning [

	self assert: (Stone new play: Scissors new) equals: #stone.
	self assert: (Scissors new play: Stone new) equals: #stone
]

{ #category : #tests }
StonePaperScissorsTest >> testStoneAgainsStone [

	self assert: (Stone new play: Stone new) equals: #draw
]
