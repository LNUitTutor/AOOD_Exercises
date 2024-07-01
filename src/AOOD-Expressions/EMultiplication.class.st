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
EMultiplication >> printOn: aStream [

	aStream nextPutAll: '( '.
	left printOn: aStream.
	aStream nextPutAll: ' * '.
	right printOn: aStream.
	aStream nextPutAll: ' )'
]
