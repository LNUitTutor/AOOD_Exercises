Class {
	#name : #EConstant,
	#superclass : #EExpression,
	#instVars : [
		'value'
	],
	#category : #'AOOD-Expressions'
}

{ #category : #'public access' }
EConstant >> evaluate [

	^ value
]

{ #category : #accessing }
EConstant >> value: anInteger [

	value := anInteger
]
