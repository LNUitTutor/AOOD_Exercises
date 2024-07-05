Class {
	#name : #Player,
	#superclass : #Object,
	#instVars : [
		'name',
		'handle'
	],
	#category : #'AOOD-Dice'
}

{ #category : #'instance creation' }
Player class >> named: aString [

	^ self basicNew
		  name: aString;
		  handle: 3 D6
]

{ #category : #accessing }
Player >> handle: aDieHandle [

	handle := aDieHandle
]

{ #category : #initialization }
Player >> initialize [

	super initialize.
	handle := 3 D6.
	name := 'Mr.X'
]

{ #category : #accessing }
Player >> name [

	^ name
]

{ #category : #accessing }
Player >> name: aString [

	name := aString
]

{ #category : #printing }
Player >> printOn: aStream [

	aStream
		nextPutAll: 'Player ';
		nextPutAll: name;
		nextPutAll: ' has handle ';
		print: handle
]

{ #category : #action }
Player >> roll [

	^ handle roll
]
