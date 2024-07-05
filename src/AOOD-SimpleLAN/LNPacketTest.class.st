Class {
	#name : #LNPacketTest,
	#superclass : #TestCase,
	#category : #'AOOD-SimpleLAN'
}

{ #category : #tests }
LNPacketTest >> testInitialized [

	| p |
	p := LNPacket new.
	self assert: p addresseeName equals: '/'.
	self assert: p originatorName equals: '/'.
	self assert: p contents equals: ''
]

{ #category : #tests }
LNPacketTest >> testIsAddressedTo [

	self assert: ((LNPacket new addresseeName: #Mac) isAddressedTo:
			 (LNNode new name: #Mac))
]

{ #category : #tests }
LNPacketTest >> testPrintString [

	self
		assert: (LNPacket new
				 addresseeName: #Mac;
				 contents: 'Pharo is cool';
				 yourself) printString
		equals: 'a LNPacket: Pharo is cool sentTo: Mac'
]
