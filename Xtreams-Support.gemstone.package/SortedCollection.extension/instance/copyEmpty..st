*Xtreams-Support
copyEmpty: aSize
	"Answer a copy of the receiver that contains no elements.

	This method should be redefined in subclasses that add
	instance variables, so that the state of those variables
	is preserved"

	^(super copyEmpty: aSize) sortBlock: sortBlock