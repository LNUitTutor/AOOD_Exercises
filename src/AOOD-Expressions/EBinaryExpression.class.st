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

{ #category : #accessing }
EBinaryExpression >> right: anExpression [ 
	right := anExpression
]
