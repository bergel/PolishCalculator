Class {
	#name : #PolishCalculatorTest,
	#superclass : #TestCase,
	#category : #PolishCalculator
}

{ #category : #tests }
PolishCalculatorTest >> testBasic [
	| c |
	c := PolishCalculator new.
	c one.
	self assert: c top equals: 1.
	
	c two.
	c add.
	self assert: c top equals: 3.
]
