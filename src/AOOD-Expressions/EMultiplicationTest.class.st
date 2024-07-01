Class {
	#name : #EMultiplicationTest,
	#superclass : #TestCase,
	#category : #'AOOD-Expressions'
}

{ #category : #tests }
EMultiplicationTest >> testEvaluate [

	| ep1 ep2 |
	ep1 := EConstant new value: 5.
	ep2 := EConstant new value: 3.
	self
		assert: (EMultiplication new
				 right: ep1;
				 left: ep2) evaluate
		equals: 15
]

{ #category : #tests }
EMultiplicationTest >> testEvaluateWithClassCreationMessage [

	| ep1 ep2 |
	ep1 := EConstant new value: 5.
	ep2 := EConstant new value: 3.
	self
		assert: (EMultiplication new
				 left: ep1;
				 right: ep2) evaluate
		equals: 15
]

{ #category : #tests }
EMultiplicationTest >> testNegated [

	| ep1 ep2 |
	ep1 := EConstant new value: 5.
	ep2 := EConstant new value: 3.
	self
		assert: (EMultiplication new
				 right: ep1;
				 left: ep2) negated evaluate
		equals: -15
]

{ #category : #tests }
EMultiplicationTest >> testPrinting [

	self
		assert:
			(EMultiplication left: EConstant constant5 right: (EConstant value: 3))
				printString
		equals: '( 5 * 3 )'.
	self
		assert:
			(EMultiplication left: EConstant constant5 right: (EConstant value: 3))
				negated printString
		equals: '- ( 5 * 3 )'
]
