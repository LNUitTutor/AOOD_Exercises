Class {
	#name : #EConstant,
	#superclass : #EExpression,
	#instVars : [
		'value'
	],
	#category : #'AOOD-Expressions'
}

{ #category : #'instance creation' }
EConstant class >> constant5 [

	<sampleInstance>
	^ self value: 5
]

{ #category : #'instance creation' }
EConstant class >> value: anInteger [

	^ self new value: anInteger
]

{ #category : #'public access' }
EConstant >> evaluateWith: anObject [

	^ value
]

{ #category : #printing }
EConstant >> printOn: aStream [

	value printOn: aStream
]

{ #category : #accessing }
EConstant >> value: anInteger [

	value := anInteger
]
