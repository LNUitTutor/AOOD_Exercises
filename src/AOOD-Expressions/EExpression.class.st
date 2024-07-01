Class {
	#name : #EExpression,
	#superclass : #Object,
	#category : #'AOOD-Expressions'
}

{ #category : #'public access' }
EExpression >> evaluate [

	^ self subclassResponsibility
]

{ #category : #arithmetic }
EExpression >> negated [
	^ ENegation new expression: self
]
