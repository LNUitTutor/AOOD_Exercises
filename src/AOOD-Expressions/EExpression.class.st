Class {
	#name : #EExpression,
	#superclass : #Object,
	#category : #'AOOD-Expressions'
}

{ #category : #visiting }
EExpression >> acceptVisitor: aVisitor [

	^ self subclassResponsibility
]

{ #category : #'public access' }
EExpression >> evaluateWith: anObject [

	^ self subclassResponsibility
]

{ #category : #arithmetic }
EExpression >> negated [
	^ ENegation new expression: self
]
