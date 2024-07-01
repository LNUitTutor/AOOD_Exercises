Class {
	#name : #CpSouth,
	#superclass : #CpDirection,
	#category : #'AOOD-Directions'
}

{ #category : #arithmetic }
CpSouth >> * aPoint [

	^ aPoint + (0 @ 1)
]

{ #category : #printing }
CpSouth >> printOn: aStream [

	aStream nextPutAll: 'South'
]
