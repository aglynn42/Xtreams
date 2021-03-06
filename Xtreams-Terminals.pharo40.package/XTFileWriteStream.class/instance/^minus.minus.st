seeking
-- anInteger
	| count |
	self isPositionable ifFalse: [self error: 'This stream is not positionable.'].
	anInteger < 0 ifTrue: [ ^self ++ anInteger negated ].
	count := position min: anInteger.
	position := position - count.
	destination seekTo: position.
	anInteger = count ifTrue: [^anInteger].
	(Incomplete count: count) raise