Class {
	#name : #EExpression,
	#superclass : #Object,
	#category : #'AOOD-Expressions'
}

{ #category : #arithmetic }
EExpression >> negated [
	^ ENegation new expression: self
]
