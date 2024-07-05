Class {
	#name : #LNNode,
	#superclass : #Object,
	#instVars : [
		'name',
		'nextNode'
	],
	#category : #'AOOD-SimpleLAN'
}

{ #category : #'as yet unclassified' }
LNNode class >> simpleLan [

	<script>
	| mac pc node1 node2 node3 igPrinter packet |
	"create the nodes, workstations and printers"
	mac := LNWorkstation new name: 'mac'.
	pc := LNWorkstation new name: 'pc'.
	node1 := LNNode new name: 'Node1'.
	node2 := LNNode new name: 'Node2'.
	node3 := LNNode new name: 'Node3'.
	igPrinter := LNPrinter new name: 'IGPrinter'.

	"connect the different LNNodes."
	mac nextNode: node1.
	node1 nextNode: node2.
	node2 nextNode: igPrinter.
	igPrinter nextNode: node3.
	node3 nextNode: pc.
	pc nextNode: mac.

	"create a LNPacket and start simulation"
	packet := LNPacket new
		          addresseeName: 'IGPrinter';
		          contents: 'This LNPacket travelled around to the printer IGPrinter'.

	mac emit: packet
]

{ #category : #'as yet unclassified' }
LNNode class >> starLan [

	<script>
	| mac pc node1 node2 node3 printer star packet |
	"create the nodes, workstations and printers"
	mac := LNWorkstation new name: #Mac.
	pc := LNWorkstation new name: #PC.
	node1 := LNNode new name: #Node1.
	node2 := LNNode new name: #Node2.
	node3 := LNNode new name: #Node3.
	printer := LNPrinter new name: #Printer.
	star := LNStar new name: #CrossNode.

	"connect the different LNNodes."
	mac nextNode: node1.
	node1 nextNode: star.
	star
		add: pc;
		add: node2;
		add: node3.
	node2 nextNode: printer.
	printer nextNode: mac.
	pc nextNode: (LNWorkstation new
			 name: #Work;
			 nextNode: printer).

	"create a LNPacket and start simulation"
	packet := LNPacket new
		          addresseeName: 'IGPrinter';
		          contents:
			          'This bulk message propagated across the net to the printer'.

	mac emit: packet
]

{ #category : #'send-receive' }
LNNode >> accept: aPacket [
	"Having received aPacket, send it on. This is the default
behavior. My subclasses may override me to do something special."

	"self send: aPacket"
	(aPacket isAddressedTo: self)
		ifTrue: [ self treatPacket: aPacket ]
		ifFalse: [ self send: aPacket ]
]

{ #category : #testing }
LNNode >> hasNextNode [
	^self nextNode notNil
]

{ #category : #initialization }
LNNode >> initialize [

	super initialize.
	self name: #Unnamed.
	self initializeNextnode
]

{ #category : #initialization }
LNNode >> initializeNextnode [

	nextNode := LNPlug new
]

{ #category : #accessing }
LNNode >> name [

	^ name
]

{ #category : #accessing }
LNNode >> name: aSymbol [

	name := aSymbol
]

{ #category : #accessing }
LNNode >> nextNode [

	^ nextNode
]

{ #category : #accessing }
LNNode >> nextNode: aLNNode [

	nextNode := aLNNode
]

{ #category : #printing }
LNNode >> printOn: aStream [

	aStream
		nextPutAll: self name;
		nextPutAll: ' -> ';
		nextPutAll: nextNode name.
	"nextNode
		ifNil: [ aStream nextPutAll: '/' ]
		ifNotNil: [ aStream nextPutAll: nextNode name ]"
]

{ #category : #'send-receive' }
LNNode >> send: aPacket [

	self hasNextNode ifFalse: [ ^ self ].
	self name trace.
	' sends a packet to: ' trace.
	nextNode name traceCr.
	nextNode accept: aPacket
]

{ #category : #'send-receive' }
LNNode >> treatPacket: aPacket [

	^ self subclassResponsibility
]
