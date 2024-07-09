Class {
	#name : #EBinaryExpression,
	#superclass : #EExpression,
	#instVars : [
		'left',
		'right'
	],
	#category : #'AOOD-Expressions'
}

{ #category : #'instance creation' }
EBinaryExpression class >> left: anInteger right: anInteger2 [

	^ self new
		  left: anInteger;
		  right: anInteger2;
		  yourself
]

{ #category : #accessing }
EBinaryExpression >> left [

	^ left
]

{ #category : #accessing }
EBinaryExpression >> left: anExpression [ 
	left := anExpression
]

{ #category : #printing }
EBinaryExpression >> operatorString [

	^ self subclassResponsibility
]

{ #category : #printing }
EBinaryExpression >> polishPrintOn: aStream [

	aStream nextPutAll: self operatorString.
	left polishPrintOn: aStream.
	aStream nextPut: Character space.
	right polishPrintOn: aStream

]

{ #category : #printing }
EBinaryExpression >> printOn: aStream [

	aStream nextPutAll: '( '.
	left printOn: aStream.
	aStream nextPutAll: self operatorString.
	right printOn: aStream.
	aStream nextPutAll: ' )'
]

{ #category : #accessing }
EBinaryExpression >> right [

	^ right
]

{ #category : #accessing }
EBinaryExpression >> right: anExpression [ 
	right := anExpression
]
