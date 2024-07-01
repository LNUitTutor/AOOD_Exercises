Class {
	#name : #ENegation,
	#superclass : #EExpression,
	#instVars : [
		'expression'
	],
	#category : #'AOOD-Expressions'
}

{ #category : #'instance creation' }
ENegation class >> expression: anExpression [

	^ self new expression: anExpression
]

{ #category : #'public access' }
ENegation >> evaluateWith: aDictionary [

	^ (expression evaluateWith: aDictionary) negated
]

{ #category : #accessing }
ENegation >> expression: anExpression [

	expression := anExpression
]

{ #category : #arithmetic }
ENegation >> negated [

	^ expression
]

{ #category : #printing }
ENegation >> printOn: aStream [

	aStream nextPutAll: '- '.
	expression printOn: aStream
]
