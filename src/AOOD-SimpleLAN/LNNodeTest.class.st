Class {
	#name : #LNNodeTest,
	#superclass : #TestCase,
	#category : #'AOOD-SimpleLAN'
}

{ #category : #tests }
LNNodeTest >> testHasNextNode [

	"self deny: LNNode new hasNextNode"
	self assert: LNNode new hasNextNode.
	self assert: (LNNode new nextNode isMemberOf: LNPlug)
]

{ #category : #tests }
LNNodeTest >> testName [

	| node |
	node := LNNode new.
	node name: #PC1.
	self assert: node name equals: #PC1
]

{ #category : #tests }
LNNodeTest >> testPlugNodeCreated [

	| plug |
	plug := LNPlug new.
	self assert: plug name equals: '/'.
	self deny: plug hasNextNode
]

{ #category : #tests }
LNNodeTest >> testPrintingJustInitializedNode [

	self assert: LNNode new printString equals: 'Unnamed -> /'
]

{ #category : #tests }
LNNodeTest >> testPrintingPlug [

	self assert: LNPlug new printString equals: '/PlugNode'
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

{ #category : #tests }
LNNodeTest >> testStarAddRemoveNode [

	| star node station |
	star := LNStar new.
	node := LNNode new.
	station := LNWorkstation new.
	star
		add: node;
		add: station.
	self assert: (star nextNode includes: node).
	self assert: (star nextNode includes: station).
	star remove: node.
	self deny: (star nextNode includes: node).
	self assert: (star nextNode includes: station).
	star remove: (LNWorkstation new).
	self assert: (star nextNode includes: station).
]

{ #category : #tests }
LNNodeTest >> testStarCountOfSubnodes [

   | star |
   star := LNStar new.
	self assert: star countOfSubNodes equals: 0.
	star add: (LNNode new).
	self assert: star countOfSubNodes equals: 1.
	star add: (LNWorkstation new).
	self assert: star countOfSubNodes equals: 2.
]

{ #category : #tests }
LNNodeTest >> testStarHasNextNode [

   | star |
   star := LNStar new.
	self deny: star hasNextNode.
	star add: (LNNode new).
	self assert: star hasNextNode.
]

{ #category : #tests }
LNNodeTest >> testStartNodeCreated [

	| star |
	star := LNStar new.
	self assert: star name equals: 'Unnamed'.
	self assert: (star nextNode isMemberOf: OrderedCollection).
	self assert: star nextNode size equals: 0
]
