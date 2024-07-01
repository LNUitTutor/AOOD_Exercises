Class {
	#name : #EAddition,
	#superclass : #EBinaryExpression,
	#category : #'AOOD-Expressions'
}

{ #category : #'public access' }
EAddition >> evaluate [
	^ left evaluate + right evaluate
]

{ #category : #printing }
EAddition >> printOn: aStream [

	aStream nextPutAll: '( '.
	left printOn: aStream.
	aStream nextPutAll: ' + '.
	right printOn: aStream.
	aStream nextPutAll: ' )'
]
