Class {
	#name : #EAddition,
	#superclass : #EBinaryExpression,
	#category : #'AOOD-Expressions'
}

{ #category : #'public access' }
EAddition >> evaluateWith: aDictionary [

	^ (left evaluateWith: aDictionary)
	  + (right evaluateWith: aDictionary)
]

{ #category : #printing }
EAddition >> operatorString [

	^ ' + '
]
