Class {
	#name : #CpNorth,
	#superclass : #CpDirection,
	#category : #'AOOD-Directions'
}

{ #category : #arithmetic }
CpNorth >> * aPoint [

	^ aPoint - (0 @ 1)
]

{ #category : #calculating }
CpNorth >> in: anInteger from: aPoint [

	^ aPoint - (0 @ anInteger)
]

{ #category : #printing }
CpNorth >> printOn: aStream [

	aStream nextPutAll: 'North'
]
