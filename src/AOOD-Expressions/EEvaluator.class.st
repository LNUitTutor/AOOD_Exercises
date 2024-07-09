Class {
	#name : #EEvaluator,
	#superclass : #EExpressionVisitor,
	#instVars : [
		'bindingDictionary'
	],
	#category : #'AOOD-Expressions'
}

{ #category : #'instance creation' }
EEvaluator class >> newWithDictionary: aDictionary [

	^ self basicNew bindingDictionary: aDictionary
]

{ #category : #accessing }
EEvaluator >> bindingDictionary [

	^ bindingDictionary
]

{ #category : #accessing }
EEvaluator >> bindingDictionary: aDictionary [
	bindingDictionary := aDictionary
]

{ #category : #'public access' }
EEvaluator >> evaluate: anExpression [

	^ anExpression acceptVisitor: self
]

{ #category : #initialization }
EEvaluator >> initialize [

	bindingDictionary := Dictionary new
]

{ #category : #'public access' }
EEvaluator >> visitAddition: anAddition [

	^ (anAddition left acceptVisitor: self)
	  + (anAddition right acceptVisitor: self)
]

{ #category : #'public access' }
EEvaluator >> visitConstant: aConstant [

	^ aConstant value
]

{ #category : #'public access' }
EEvaluator >> visitMultiplication: aMultiplication [

	^ (aMultiplication left acceptVisitor: self)
	  * (aMultiplication right acceptVisitor: self)
]

{ #category : #'public access' }
EEvaluator >> visitNegation: aNegation [

	^ (aNegation expression acceptVisitor: self) negated
]

{ #category : #'public access' }
EEvaluator >> visitVariable: aVariable [

	^ bindingDictionary at: aVariable id
]
