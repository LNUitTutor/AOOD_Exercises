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
EAddition >> operatorString [

	^ ' + '
]
