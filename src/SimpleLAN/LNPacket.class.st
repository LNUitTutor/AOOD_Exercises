Class {
	#name : #LNPacket,
	#superclass : #Object,
	#instVars : [
		'contents',
		'addresseeName',
		'originatorName'
	],
	#category : #SimpleLAN
}

{ #category : #accessing }
LNPacket >> addresseeName [

	^ addresseeName
]

{ #category : #accessing }
LNPacket >> addresseeName: aSymbol [

	addresseeName := aSymbol
]

{ #category : #accessing }
LNPacket >> contents [

	^ contents
]

{ #category : #accessing }
LNPacket >> contents: aString [

	contents := aString
]

{ #category : #initialization }
LNPacket >> initialize [

	super initialize.
	self
		addresseeName: #/;
		originatorName: #/;
		contents: String empty
]

{ #category : #testing }
LNPacket >> isAddressedTo: aLNNode [ 
	^ self addresseeName == aLNNode name
]

{ #category : #accessing }
LNPacket >> originatorName [

	^ originatorName
]

{ #category : #accessing }
LNPacket >> originatorName: aSymbol [

	originatorName := aSymbol
]

{ #category : #printing }
LNPacket >> printOn: aStream [

	super printOn: aStream.
	aStream
		nextPutAll: ': ';
		nextPutAll: self contents;
		nextPutAll: ' sentTo: ';
		nextPutAll: addresseeName
]
