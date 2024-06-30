Class {
	#name : #LNPrinter,
	#superclass : #LNNode,
	#category : #SimpleLAN
}

{ #category : #'send-receive' }
LNPrinter >> accept: aPacket [

	aPacket addresseeName == self name
		ifTrue: [ aPacket contents traceCr ]
		ifFalse: [ super accept: aPacket ]
]
