Class {
	#name : #PolishCalculator,
	#superclass : #Object,
	#instVars : [
		'stack'
	],
	#category : #PolishCalculator
}

{ #category : #'accessing structure variables' }
PolishCalculator >> add [
	self push: (self pop + self pop)
]

{ #category : #'accessing structure variables' }
PolishCalculator >> div [
	| t2 t1 |
	t2 := self pop.
	t1 := self pop.
	self push: t1 / t2
]

{ #category : #initialization }
PolishCalculator >> initialize [
	super initialize.
	stack := OrderedCollection new
]

{ #category : #'accessing structure variables' }
PolishCalculator >> one [
	self push: 1
]

{ #category : #'accessing structure variables' }
PolishCalculator >> pop [
	| last |
	last := self top.
	self removeTop.
	^ last
]

{ #category : #'accessing structure variables' }
PolishCalculator >> push: aValue [
	stack add: aValue
]

{ #category : #removing }
PolishCalculator >> removeTop [
	stack removeLast
]

{ #category : #'accessing structure variables' }
PolishCalculator >> sub [
	| t2 t1 |
	t2 := self pop.
	t1 := self pop.
	self push: t1 - t2
]

{ #category : #'accessing structure variables' }
PolishCalculator >> three [
	self push: 3
]

{ #category : #accessing }
PolishCalculator >> top [
	^ stack last
]

{ #category : #'accessing structure variables' }
PolishCalculator >> two [
	self push: 2
]
