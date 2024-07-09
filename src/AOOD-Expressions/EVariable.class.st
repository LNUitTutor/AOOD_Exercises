Class {
	#name : #EVariable,
	#superclass : #EExpression,
	#instVars : [
		'id'
	],
	#category : #'AOOD-Expressions'
}

{ #category : #visiting }
EVariable >> acceptVisitor: aVisitor [

	^ aVisitor visitVariable: self
]

{ #category : #action }
EVariable >> evaluateWith:  aBindingDictionary [
    ^ aBindingDictionary at: id
]

{ #category : #accessing }
EVariable >> id [

	^ id
]

{ #category : #accessing }
EVariable >> id: aSymbol [

	id := aSymbol
]

{ #category : #printing }
EVariable >> polishPrintOn: aStream [

	self printOn: aStream
]

{ #category : #printing }
EVariable >> printOn: aStream [

	aStream nextPutAll: id asString
]
