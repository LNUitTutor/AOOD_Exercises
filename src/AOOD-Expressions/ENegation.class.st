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

{ #category : #visiting }
ENegation >> acceptVisitor: aVisitor [

	aVisitor visitNegation: self
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
ENegation >> polishPrintOn: aStream [

	aStream nextPutAll: '- 0 '.
	expression printOn: aStream
]

{ #category : #printing }
ENegation >> printOn: aStream [

	aStream nextPutAll: '- '.
	expression printOn: aStream
]
