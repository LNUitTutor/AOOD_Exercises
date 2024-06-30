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
