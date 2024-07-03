Class {
	#name : #LNPrinter,
	#superclass : #LNNode,
	#category : #'AOOD-SimpleLAN'
}

{ #category : #'send-receive' }
LNPrinter >> treatPacket: aPacket [

	('Node ' , aPacket originatorName , ' sent to printer: '
	 , aPacket contents) traceCr
]
