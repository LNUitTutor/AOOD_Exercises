Class {
	#name : #CpWest,
	#superclass : #CpDirection,
	#category : #'AOOD-Directions'
}

{ #category : #arithmetic }
CpWest >> * aPoint [

	^ aPoint - (1 @ 0)
]

{ #category : #calculating }
CpWest >> in: anInteger from: aPoint [ 
	^ aPoint - (anInteger @ 0)
]

{ #category : #printing }
CpWest >> printOn: aStream [

	aStream nextPutAll: 'West'
]
