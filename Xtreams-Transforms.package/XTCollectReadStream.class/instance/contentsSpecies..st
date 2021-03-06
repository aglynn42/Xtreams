initialize-release
contentsSpecies: aClass
	contentsSpecies := aClass.
	cache ifNotNil: [ cache recycle ].
	cache := (direct := contentsSpecies == source contentsSpecies)
		ifTrue:	[nil]
		ifFalse:	[
			source contentsSpecies newRecycled: (
				(cache notNil and: [ cache size > 0 ])
					ifTrue: [cache size]
					ifFalse: [DefaultBufferSize])]