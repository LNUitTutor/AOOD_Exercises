Class {
	#name : #CpDirection,
	#superclass : #Object,
	#category : #'AOOD-Directions'
}

{ #category : #'instance creation' }
CpDirection class >> east [

	^ CpEast new
]

{ #category : #'instance creation' }
CpDirection class >> north [

	^ CpNorth new
]

{ #category : #'instance creation' }
CpDirection class >> south [

	^ CpSouth new
]

{ #category : #'instance creation' }
CpDirection class >> west [

	^ CpWest new
]

{ #category : #arithmetic }
CpDirection >> * aPoint [

	self subclassResponsibility
]
