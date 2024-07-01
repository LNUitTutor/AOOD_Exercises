Class {
	#name : #EMultiplication,
	#superclass : #EExpression,
	#instVars : [
		'left',
		'right'
	],
	#category : #'AOOD-Expressions'
}

{ #category : #'public access' }
EMultiplication >> evaluate [
	^ left evaluate * right evaluate
]

{ #category : #accessing }
EMultiplication >> left: anEConstant [ 
	left := anEConstant
]

{ #category : #accessing }
EMultiplication >> right: anEConstant [ 
	right := anEConstant
]
