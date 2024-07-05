Class {
	#name : #Cheater,
	#superclass : #Player,
	#category : #'AOOD-Dice'
}

{ #category : #action }
Cheater >> roll [

	^ (handle dice collect: [ :die | die roll ]) max * handle diceNumber
]
