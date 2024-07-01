Class {
	#name : #CpSouth,
	#superclass : #CpDirection,
	#category : #'AOOD-Directions'
}

{ #category : #arithmetic }
CpSouth >> * aPoint [

	^ aPoint + (0 @ 1)
]

{ #category : #calculating }
CpSouth >> in: anInteger from: aPoint [

	^ aPoint + (0 @ anInteger)
]

{ #category : #printing }
CpSouth >> printOn: aStream [

	aStream nextPutAll: 'South'
]
