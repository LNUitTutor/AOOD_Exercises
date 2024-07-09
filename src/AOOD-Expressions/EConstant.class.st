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

{ #category : #visiting }
EConstant >> acceptVisitor: aVisitor [

	^ aVisitor visitConstant: self
]

{ #category : #'public access' }
EConstant >> evaluateWith: anObject [

	^ value
]

{ #category : #printing }
EConstant >> polishPrintOn: aStream [

	self printOn: aStream
]

{ #category : #printing }
EConstant >> printOn: aStream [

	value printOn: aStream
]

{ #category : #accessing }
EConstant >> value [

	^ value
]

{ #category : #accessing }
EConstant >> value: anInteger [

	value := anInteger
]
