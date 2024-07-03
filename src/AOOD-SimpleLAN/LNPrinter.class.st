Class {
	#name : #LNPrinter,
	#superclass : #LNNode,
	#category : #'AOOD-SimpleLAN'
}

{ #category : #'send-receive' }
LNPrinter >> accept: aPacket [

	(aPacket isAddressedTo: self)
		ifTrue: [
			('Node ' , aPacket originatorName , ' sent to printer: '
			, aPacket contents) traceCr ]
		ifFalse: [ super accept: aPacket ]
]
