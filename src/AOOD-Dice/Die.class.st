Class {
	#name : #Die,
	#superclass : #Object,
	#instVars : [
		'faces'
	],
	#category : #'AOOD-Dice'
}

{ #category : #'instance creation' }
Die class >> withFaces: anInteger [

	^ self basicNew
		  faces: anInteger;
		  yourself
]

{ #category : #arithmetic }
Die >> + aDie [

	^ DieHandle new
		  addDie: self;
		  addDie: aDie;
		  yourself
]

{ #category : #accessing }
Die >> faces [

	^ faces
]

{ #category : #accessing }
Die >> faces: anInteger [

	faces := anInteger
]

{ #category : #initialization }
Die >> initialize [

	super initialize.
	self faces: 6
]

{ #category : #printing }
Die >> printOn: aStream [

	super printOn: aStream.
	aStream nextPut: $(.
	faces printOn: aStream.
	aStream nextPut: $)
]

{ #category : #action }
Die >> roll [

	^ self faces atRandom
]
