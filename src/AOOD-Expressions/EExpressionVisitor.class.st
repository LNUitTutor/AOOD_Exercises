Class {
	#name : #EExpressionVisitor,
	#superclass : #Object,
	#category : #'AOOD-Expressions'
}

{ #category : #'public access' }
EExpressionVisitor >> visitAddition: anAddition [

	^ self subclassResponsibility
]

{ #category : #'public access' }
EExpressionVisitor >> visitConstant: aConstant [

	^ self subclassResponsibility
]

{ #category : #'public access' }
EExpressionVisitor >> visitMultiplication: aMultiplication [

	^ self subclassResponsibility
]

{ #category : #'public access' }
EExpressionVisitor >> visitNegation: aNegation [

	^ self subclassResponsibility
]

{ #category : #'public access' }
EExpressionVisitor >> visitVariable: aVariable [

	^ self subclassResponsibility
]
