accessing
read: anInteger into: aSequenceableCollection at: startIndex
	| count |
	count := 0.
	[[count < anInteger] whileTrue:
		[aSequenceableCollection at: startIndex + count put: self get.
		count := count + 1]]
			on: Incomplete do: [(Incomplete on: aSequenceableCollection count: count at: startIndex) raise].
	^anInteger