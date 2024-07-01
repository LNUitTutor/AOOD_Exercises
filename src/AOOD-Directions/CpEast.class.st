Class {
	#name : #CpEast,
	#superclass : #CpDirection,
	#category : #'AOOD-Directions'
}

{ #category : #arithmetic }
CpEast >> * aPoint [

	^ aPoint + (1 @ 0)
]

{ #category : #calculating }
CpEast >> in: anInteger from: aPoint [ 
	^ aPoint + (anInteger @ 0)
]

{ #category : #printing }
CpEast >> printOn: aStream [

	aStream nextPutAll: 'East'
]
