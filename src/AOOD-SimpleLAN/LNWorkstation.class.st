Class {
	#name : #LNWorkstation,
	#superclass : #LNNode,
	#category : #'AOOD-SimpleLAN'
}

{ #category : #'send-receive' }
LNWorkstation >> emit: aLNPacket [
	"This is how LNPackets get inserted into the network.
This is a likely method to be rewritten to permit
LNPackets to be entered in various ways."

	aLNPacket originatorName: self name.
	self send: aLNPacket
]

{ #category : #'send-receive' }
LNWorkstation >> treatPacket: aPacket [

	self name trace.
	' accepted a packet' traceCr
]
