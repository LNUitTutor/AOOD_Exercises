Class {
	#name : #CpNorth,
	#superclass : #CpDirection,
	#category : #'AOOD-Directions'
}

{ #category : #arithmetic }
CpNorth >> * aPoint [

	^ aPoint - (0 @ 1)
]

{ #category : #printing }
CpNorth >> printOn: aStream [

	aStream nextPutAll: 'North'
]
