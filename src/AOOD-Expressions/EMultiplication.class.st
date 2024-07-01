Class {
	#name : #EMultiplication,
	#superclass : #EExpression,
	#instVars : [
		'left',
		'right'
	],
	#category : #'AOOD-Expressions'
}

{ #category : #'instance creation' }
EMultiplication class >> left: anInteger right: anInteger2 [

	^ self new
		  left: anInteger;
		  right: anInteger2;
		  yourself
]

{ #category : #'public access' }
EMultiplication >> evaluate [
	^ left evaluate * right evaluate
]

{ #category : #accessing }
EMultiplication >> left: anEConstant [ 
	left := anEConstant
]

{ #category : #printing }
EMultiplication >> printOn: aStream [

	aStream nextPutAll: '( '.
	left printOn: aStream.
	aStream nextPutAll: ' * '.
	right printOn: aStream.
	aStream nextPutAll: ' )'
]

{ #category : #accessing }
EMultiplication >> right: anEConstant [ 
	right := anEConstant
]
