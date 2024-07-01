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
EBinaryExpression >> left: anExpression [ 
	left := anExpression
]

{ #category : #printing }
EBinaryExpression >> operatorString [

	^ self subclassResponsibility
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
EBinaryExpression >> right: anExpression [ 
	right := anExpression
]
