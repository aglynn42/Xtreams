printing
streamingPrintOn: aStream
	aStream write: self class name;
		space; write: 'data: '; print: dataLength;
		space; write: 'read: '; print: self readPosition;
		space; write: 'write: '; print: self writePosition