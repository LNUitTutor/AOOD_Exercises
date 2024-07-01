Extension { #name : #SmallInteger }

{ #category : #'*AOOD-Dice' }
SmallInteger >> D10 [

	^ self D: 10
]

{ #category : #'*AOOD-Dice' }
SmallInteger >> D20 [

	^ self D: 20
]

{ #category : #'*AOOD-Dice' }
SmallInteger >> D4 [

	^ self D: 4
]

{ #category : #'*AOOD-Dice' }
SmallInteger >> D6 [

	^ self D: 6
]

{ #category : #'*AOOD-Dice' }
SmallInteger >> D: anInteger [
	| handle |
	handle := DieHandle new.
	self timesRepeat: [ handle addDie: (Die withFaces: anInteger) ].
	^ handle
]
