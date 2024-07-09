Class {
	#name : #EMultiplication,
	#superclass : #EBinaryExpression,
	#category : #'AOOD-Expressions'
}

{ #category : #visiting }
EMultiplication >> acceptVisitor: aVisitor [

	^ aVisitor visitMultiplication: self
]

{ #category : #'public access' }
EMultiplication >> evaluateWith: aDictionary [

	^ (left evaluateWith: aDictionary)
	  * (right evaluateWith: aDictionary)
]

{ #category : #printing }
EMultiplication >> operatorString [

	^ ' * '
]
