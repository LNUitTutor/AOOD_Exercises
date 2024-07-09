Class {
	#name : #EPrinter,
	#superclass : #EExpressionVisitor,
	#instVars : [
		'stream'
	],
	#category : #'AOOD-Expressions'
}

{ #category : #initialization }
EPrinter >> initialize [

	super initialize.
	stream := WriteStream on: (String new: 16)
]

{ #category : #printing }
EPrinter >> print: anExpression [

	anExpression acceptVisitor: self.
	^ stream contents
]

{ #category : #'public access' }
EPrinter >> visitAddition: anAddition [

	stream nextPutAll: '( '.
	anAddition left acceptVisitor: self.
	stream nextPutAll: ' + '.
	anAddition right acceptVisitor: self.
	stream nextPutAll: ' )'
]

{ #category : #'public access' }
EPrinter >> visitConstant: aConstant [

	aConstant value printOn: stream
]

{ #category : #'public access' }
EPrinter >> visitMultiplication: aMultiplication [

	stream nextPutAll: '( '.
	aMultiplication left acceptVisitor: self.
	stream nextPutAll: ' * '.
	aMultiplication right acceptVisitor: self.
	stream nextPutAll: ' )'
]

{ #category : #'public access' }
EPrinter >> visitNegation: aNegation [

	stream nextPutAll: '- '.
	aNegation expression acceptVisitor: self
]

{ #category : #'public access' }
EPrinter >> visitVariable: aVariable [

	stream nextPutAll: aVariable id asString
]
