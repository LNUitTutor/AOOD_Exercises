Class {
	#name : #DieHandle,
	#superclass : #Object,
	#instVars : [
		'dice'
	],
	#category : #'AOOD-Dice'
}

{ #category : #'as yet unclassified' }
DieHandle class >> showRoll [

	<script>
	Transcript
		show: (2 D6 + 2 D4 + 1 D10) roll;
		cr
]

{ #category : #arithmetic }
DieHandle >> + aDieHandle [ 
	"| newDh |
	newDh := self class new.
	self dice do: [ :each | newDh addDie: each ].
	aDieHandle dice do: [ :each | newDh addDie: each ].
	^ newDh "
	^ aDieHandle sumWithHandle: self
]

{ #category : #adding }
DieHandle >> addDie: aDie [ 
	^ dice add: aDie
]

{ #category : #accessing }
DieHandle >> dice [
	^ dice
]

{ #category : #accessing }
DieHandle >> diceNumber [
	^ dice size
]

{ #category : #initialization }
DieHandle >> initialize [

	super initialize.
	dice := OrderedCollection new
]

{ #category : #accessing }
DieHandle >> maxValue [

	^ dice inject: 0 into: [ :s :d | s + d faces ]
]

{ #category : #printing }
DieHandle >> printOn: aStream [

	aStream nextPutAll: '[ '.
	dice do: [ :die |
		die faces printOn: aStream.
		aStream nextPut: Character space ].
	aStream nextPut: $]
]

{ #category : #action }
DieHandle >> roll [

	^ dice inject: 0 into: [ :accum :each | accum + each roll ]
]

{ #category : #private }
DieHandle >> sumWithDie: aDie [

	| handle |
	handle := self class new.
	self dice do: [ :each | handle addDie: each ].
	handle addDie: aDie.
	^ handle
]

{ #category : #private }
DieHandle >> sumWithHandle: aDieHandle [ 
	| newDh |
	newDh := self class new.
	self dice do: [ :each | newDh addDie: each ].
	aDieHandle dice do: [ :each | newDh addDie: each ].
	^ newDh 
]
