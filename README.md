# PolishCalculator

Here is a test:
```Smalltalk
testBasic
	| c |
	c := PolishCalculator new.
	c one.
	self assert: c top equals: 1.
	
	c two.
	c add.
	self assert: c top equals: 3.
```
