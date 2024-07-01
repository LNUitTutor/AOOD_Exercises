Class {
	#name : #ENegation,
	#superclass : #EExpression,
	#instVars : [
		'expression'
	],
	#category : #'AOOD-Expressions'
}

{ #category : #'public access' }
ENegation >> evaluate [

	^ expression evaluate negated
]

{ #category : #accessing }
ENegation >> expression: anExpression [

	expression := anExpression
]
