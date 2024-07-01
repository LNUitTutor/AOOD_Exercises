Class {
	#name : #EMultiplication,
	#superclass : #EBinaryExpression,
	#category : #'AOOD-Expressions'
}

{ #category : #'public access' }
EMultiplication >> evaluate [
	^ left evaluate * right evaluate
]

{ #category : #printing }
EMultiplication >> operatorString [

	^ ' * '
]
