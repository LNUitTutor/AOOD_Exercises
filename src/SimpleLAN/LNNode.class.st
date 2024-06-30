Class {
	#name : #LNNode,
	#superclass : #Object,
	#instVars : [
		'name',
		'nextNode'
	],
	#category : #SimpleLAN
}

{ #category : #'send-receive' }
LNNode >> accept: aPacket [
	"Having received aPacket, send it on. This is the default
behavior. My subclasses may override me to do something special."

	self send: aPacket
]

{ #category : #testing }
LNNode >> hasNextNode [
	^self nextNode notNil
]

{ #category : #initialization }
LNNode >> initialize [

	super initialize.
	self name: #Unnamed
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
		nextPutAll: ' -> '.
	nextNode
		ifNil: [ aStream nextPutAll: '/' ]
		ifNotNil: [ aStream nextPutAll: nextNode name ]
]

{ #category : #'send-receive' }
LNNode >> send: aPacket [

	nextNode ifNotNil: [
		self name trace.
		' sends a packet to: ' trace.
		nextNode name traceCr.
		nextNode accept: aPacket ]
]
