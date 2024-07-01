Class {
	#name : #DieHandle,
	#superclass : #Object,
	#instVars : [
		'dice'
	],
	#category : #'AOOD-Dice'
}

{ #category : #arithmetic }
DieHandle >> + aDieHandle [ 
	| newDh |
	newDh := self class new.
	self dice do: [ :each | newDh addDie: each ].
	aDieHandle dice do: [ :each | newDh addDie: each ].
	^ newDh 
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

{ #category : #action }
DieHandle >> roll [

	^ dice inject: 0 into: [ :accum :each | accum + each roll ]
]
