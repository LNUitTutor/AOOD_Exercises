Class {
	#name : #LNStar,
	#superclass : #LNNode,
	#category : #'AOOD-SimpleLAN'
}

{ #category : #adding }
LNStar >> add: aNode [

	nextNode add: aNode
]

{ #category : #testing }
LNStar >> countOfSubNodes [

	^ self nextNode size
]

{ #category : #testing }
LNStar >> hasNextNode [
	^self countOfSubNodes > 0
]

{ #category : #initialization }
LNStar >> initializeNextnode [

	nextNode := OrderedCollection new
]

{ #category : #printing }
LNStar >> printOn: aStream [

	aStream
		nextPutAll: self name;
		nextPutAll: ' -> Nodes( '.
	self nextNode do: [ :node |
		node printOn: aStream.
		aStream nextPutAll: '; ' ].
	aStream nextPut: $)
]

{ #category : #adding }
LNStar >> remove: aNode [

	nextNode remove: aNode ifAbsent: [ ]
]

{ #category : #'send-receive' }
LNStar >> send: aPacket [

	self hasNextNode ifFalse: [ ^ self ].
	self name trace.
	' sends a packet to: (' trace.
	nextNode do: [ :node | ' ' trace. node name trace ].
	' )' traceCr.
	nextNode do: [ :node | node send: aPacket ]
]

{ #category : #'send-receive' }
LNStar >> treatPacket: aPacket [

	(String streamContents: [ :stream |
		stream nextPutAll: 'Star node '.
		self printOn: stream.
		stream nextPutAll: ' received '.
		aPacket printOn: stream ]) traceCr
]
