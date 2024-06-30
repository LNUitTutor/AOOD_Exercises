Class {
	#name : #LNWorkstation,
	#superclass : #LNNode,
	#category : #SimpleLAN
}

{ #category : #'send-receive' }
LNWorkstation >> accept: aPacket [

	aPacket addresseeName == self name
		ifTrue: [
			self name trace.
			' accepted a packet' traceCr ]
		ifFalse: [ super accept: aPacket ]
]

{ #category : #'send-receive' }
LNWorkstation >> emit: aLNPacket [
	"This is how LNPackets get inserted into the network.
This is a likely method to be rewritten to permit
LNPackets to be entered in various ways."

	aLNPacket originatorName: self name.
	self send: aLNPacket
]
