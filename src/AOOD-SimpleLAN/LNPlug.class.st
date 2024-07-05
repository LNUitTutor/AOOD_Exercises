Class {
	#name : #LNPlug,
	#superclass : #LNNode,
	#category : #'AOOD-SimpleLAN'
}

{ #category : #'send-receive' }
LNPlug >> accept: aPacket [

	^ self
]

{ #category : #initialization }
LNPlug >> initialize [

	self name: '/'
]

{ #category : #printing }
LNPlug >> printOn: aStream [

	aStream nextPutAll: '/PlugNode'
]

{ #category : #'send-receive' }
LNPlug >> treatPacket: aPacket [

	^ self
]
