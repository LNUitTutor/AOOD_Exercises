Class {
	#name : #LNNodeTest,
	#superclass : #TestCase,
	#category : #SimpleLAN
}

{ #category : #tests }
LNNodeTest >> testHasNextNode [

	self deny: LNNode new hasNextNode
]

{ #category : #tests }
LNNodeTest >> testName [

	| node |
	node := LNNode new.
	node name: #PC1.
	self assert: node name equals: #PC1
]

{ #category : #tests }
LNNodeTest >> testPrintingJustInitializedNode [

	self assert: LNNode new printString equals: 'Unnamed -> /'
]

{ #category : #tests }
LNNodeTest >> testPrintingWithANextNode [

	self
		assert: (LNNode new
				 name: #Mac;
				 nextNode: (LNNode new name: #PC1)) printString
		equals: 'Mac -> PC1'
]

{ #category : #tests }
LNNodeTest >> testPrintingWithoutNextNode [

	self
		assert: (LNNode new
				 name: #Mac;
				 printString)
		equals: 'Mac -> /'
]
