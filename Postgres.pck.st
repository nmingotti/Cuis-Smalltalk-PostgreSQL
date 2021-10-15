'From Cuis 5.0 [latest update: #4928] on 15 October 2021 at 6:38:42 pm'!
'Description '!
!provides: 'Postgres' 1 1!
!requires: 'Cuis-Base' 50 4928 nil!
SystemOrganization addCategory: 'Postgres'!


!classDefinition: #PGUnsupportedAuthentication category: 'Postgres'!
Error subclass: #PGUnsupportedAuthentication
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Postgres'!
!classDefinition: 'PGUnsupportedAuthentication class' category: 'Postgres'!
PGUnsupportedAuthentication class
	instanceVariableNames: ''!

!classDefinition: #PGActiveObject category: 'Postgres'!
Object subclass: #PGActiveObject
	instanceVariableNames: 'trace state events'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Postgres'!
!classDefinition: 'PGActiveObject class' category: 'Postgres'!
PGActiveObject class
	instanceVariableNames: 'stateTransitionTable'!

!classDefinition: #PGConnection category: 'Postgres'!
PGActiveObject subclass: #PGConnection
	instanceVariableNames: 'socket readBuffer readIndex lastReadIndex writeBuffer processId secretKey sql functionCallOid functionCallArgs copyStream result connectionArgs notificationSubscribers fieldConverters'
	classVariableNames: 'DefaultConnectionArgs DefaultTraceLevel'
	poolDictionaries: ''
	category: 'Postgres'!
!classDefinition: 'PGConnection class' category: 'Postgres'!
PGConnection class
	instanceVariableNames: ''!

!classDefinition: #PGNotificationSubscriber category: 'Postgres'!
PGActiveObject subclass: #PGNotificationSubscriber
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Postgres'!
!classDefinition: 'PGNotificationSubscriber class' category: 'Postgres'!
PGNotificationSubscriber class
	instanceVariableNames: ''!

!classDefinition: #PGConnectionArgs category: 'Postgres'!
Object subclass: #PGConnectionArgs
	instanceVariableNames: 'hostname portno databaseName userName password extraArgs debugTty'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Postgres'!
!classDefinition: 'PGConnectionArgs class' category: 'Postgres'!
PGConnectionArgs class
	instanceVariableNames: ''!

!classDefinition: #PGPacket category: 'Postgres'!
Object subclass: #PGPacket
	instanceVariableNames: ''
	classVariableNames: 'PacketClasses'
	poolDictionaries: ''
	category: 'Postgres'!
!classDefinition: 'PGPacket class' category: 'Postgres'!
PGPacket class
	instanceVariableNames: ''!

!classDefinition: #PGAbstractStringResponse category: 'Postgres'!
PGPacket subclass: #PGAbstractStringResponse
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Postgres'!
!classDefinition: 'PGAbstractStringResponse class' category: 'Postgres'!
PGAbstractStringResponse class
	instanceVariableNames: ''!

!classDefinition: #PGCompletedResponse category: 'Postgres'!
PGAbstractStringResponse subclass: #PGCompletedResponse
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Postgres'!
!classDefinition: 'PGCompletedResponse class' category: 'Postgres'!
PGCompletedResponse class
	instanceVariableNames: ''!

!classDefinition: #PGCursorResponse category: 'Postgres'!
PGAbstractStringResponse subclass: #PGCursorResponse
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Postgres'!
!classDefinition: 'PGCursorResponse class' category: 'Postgres'!
PGCursorResponse class
	instanceVariableNames: ''!

!classDefinition: #PGEmptyQueryResponse category: 'Postgres'!
PGAbstractStringResponse subclass: #PGEmptyQueryResponse
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Postgres'!
!classDefinition: 'PGEmptyQueryResponse class' category: 'Postgres'!
PGEmptyQueryResponse class
	instanceVariableNames: ''!

!classDefinition: #PGErrorResponse category: 'Postgres'!
PGAbstractStringResponse subclass: #PGErrorResponse
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Postgres'!
!classDefinition: 'PGErrorResponse class' category: 'Postgres'!
PGErrorResponse class
	instanceVariableNames: ''!

!classDefinition: #PGNoticeResponse category: 'Postgres'!
PGAbstractStringResponse subclass: #PGNoticeResponse
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Postgres'!
!classDefinition: 'PGNoticeResponse class' category: 'Postgres'!
PGNoticeResponse class
	instanceVariableNames: ''!

!classDefinition: #PGAsciiRow category: 'Postgres'!
PGPacket subclass: #PGAsciiRow
	instanceVariableNames: 'description nullFields rawData'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Postgres'!
!classDefinition: 'PGAsciiRow class' category: 'Postgres'!
PGAsciiRow class
	instanceVariableNames: ''!

!classDefinition: #PGBinaryRow category: 'Postgres'!
PGAsciiRow subclass: #PGBinaryRow
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Postgres'!
!classDefinition: 'PGBinaryRow class' category: 'Postgres'!
PGBinaryRow class
	instanceVariableNames: ''!

!classDefinition: #PGAuthentication category: 'Postgres'!
PGPacket subclass: #PGAuthentication
	instanceVariableNames: 'type salt'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Postgres'!
!classDefinition: 'PGAuthentication class' category: 'Postgres'!
PGAuthentication class
	instanceVariableNames: ''!

!classDefinition: #PGBackendKeyData category: 'Postgres'!
PGPacket subclass: #PGBackendKeyData
	instanceVariableNames: 'processId secretKey'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Postgres'!
!classDefinition: 'PGBackendKeyData class' category: 'Postgres'!
PGBackendKeyData class
	instanceVariableNames: ''!

!classDefinition: #PGCancelRequest category: 'Postgres'!
PGPacket subclass: #PGCancelRequest
	instanceVariableNames: 'processId secretKey'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Postgres'!
!classDefinition: 'PGCancelRequest class' category: 'Postgres'!
PGCancelRequest class
	instanceVariableNames: ''!

!classDefinition: #PGColumnDescription category: 'Postgres'!
PGPacket subclass: #PGColumnDescription
	instanceVariableNames: 'fieldName typeOid typeSize typeModifier'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Postgres'!
!classDefinition: 'PGColumnDescription class' category: 'Postgres'!
PGColumnDescription class
	instanceVariableNames: ''!

!classDefinition: #PGCopyInResponse category: 'Postgres'!
PGPacket subclass: #PGCopyInResponse
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Postgres'!
!classDefinition: 'PGCopyInResponse class' category: 'Postgres'!
PGCopyInResponse class
	instanceVariableNames: ''!

!classDefinition: #PGCopyOutResponse category: 'Postgres'!
PGPacket subclass: #PGCopyOutResponse
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Postgres'!
!classDefinition: 'PGCopyOutResponse class' category: 'Postgres'!
PGCopyOutResponse class
	instanceVariableNames: ''!

!classDefinition: #PGFunctionCall category: 'Postgres'!
PGPacket subclass: #PGFunctionCall
	instanceVariableNames: 'oid arguments'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Postgres'!
!classDefinition: 'PGFunctionCall class' category: 'Postgres'!
PGFunctionCall class
	instanceVariableNames: ''!

!classDefinition: #PGFunctionResultResponse category: 'Postgres'!
PGPacket subclass: #PGFunctionResultResponse
	instanceVariableNames: 'result'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Postgres'!
!classDefinition: 'PGFunctionResultResponse class' category: 'Postgres'!
PGFunctionResultResponse class
	instanceVariableNames: ''!

!classDefinition: #PGNotificationResponse category: 'Postgres'!
PGPacket subclass: #PGNotificationResponse
	instanceVariableNames: 'processId conditionName'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Postgres'!
!classDefinition: 'PGNotificationResponse class' category: 'Postgres'!
PGNotificationResponse class
	instanceVariableNames: ''!

!classDefinition: #PGPasswordPacket category: 'Postgres'!
PGPacket subclass: #PGPasswordPacket
	instanceVariableNames: 'password'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Postgres'!
!classDefinition: 'PGPasswordPacket class' category: 'Postgres'!
PGPasswordPacket class
	instanceVariableNames: ''!

!classDefinition: #PGQuery category: 'Postgres'!
PGPacket subclass: #PGQuery
	instanceVariableNames: 'queryString'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Postgres'!
!classDefinition: 'PGQuery class' category: 'Postgres'!
PGQuery class
	instanceVariableNames: ''!

!classDefinition: #PGReadyForQuery category: 'Postgres'!
PGPacket subclass: #PGReadyForQuery
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Postgres'!
!classDefinition: 'PGReadyForQuery class' category: 'Postgres'!
PGReadyForQuery class
	instanceVariableNames: ''!

!classDefinition: #PGRowDescription category: 'Postgres'!
PGPacket subclass: #PGRowDescription
	instanceVariableNames: 'resultSet numberOfColumns columnDescriptions'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Postgres'!
!classDefinition: 'PGRowDescription class' category: 'Postgres'!
PGRowDescription class
	instanceVariableNames: ''!

!classDefinition: #PGStartupPacket category: 'Postgres'!
PGPacket subclass: #PGStartupPacket
	instanceVariableNames: 'version databaseName userName extraArgs debugTty'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Postgres'!
!classDefinition: 'PGStartupPacket class' category: 'Postgres'!
PGStartupPacket class
	instanceVariableNames: ''!

!classDefinition: #PGTerminate category: 'Postgres'!
PGPacket subclass: #PGTerminate
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Postgres'!
!classDefinition: 'PGTerminate class' category: 'Postgres'!
PGTerminate class
	instanceVariableNames: ''!

!classDefinition: #PGResult category: 'Postgres'!
Object subclass: #PGResult
	instanceVariableNames: 'connection resultSets errorResponse functionResult'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Postgres'!
!classDefinition: 'PGResult class' category: 'Postgres'!
PGResult class
	instanceVariableNames: ''!

!classDefinition: #PGResultSet category: 'Postgres'!
Object subclass: #PGResultSet
	instanceVariableNames: 'result completedResponse rowDescription rows'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Postgres'!
!classDefinition: 'PGResultSet class' category: 'Postgres'!
PGResultSet class
	instanceVariableNames: ''!

!classDefinition: #TestPGConnection category: 'Postgres'!
TestCase subclass: #TestPGConnection
	instanceVariableNames: 'useConnectionDefaults notificationSubscriberCount'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Postgres'!
!classDefinition: 'TestPGConnection class' category: 'Postgres'!
TestPGConnection class
	instanceVariableNames: ''!


!PGConnection commentStamp: 'yj 4/24/2003 23:05' prior: 0!
Copyright (c) 2001-2003 by Yanni Chiu. All Rights Reserved.

Instances of PGConnection implement a client interface to a PostgreSQL backend.
See the "Frontend/Backend Protocol" chapter in the "PostgreSQL Programmer's Guide" for more information.!

!PGPacket methodsFor: 'printing' stamp: 'yj 4/24/2003 23:01'!
printOn: aStream

	aStream nextPutAll: self class name.
! !

!PGAbstractStringResponse methodsFor: 'printing' stamp: 'yj 4/24/2003 23:01'!
printOn: aStream

	super printOn: aStream.
	aStream
		nextPutAll: '(';
		nextPutAll: 'value='; nextPutAll: value printString;
		nextPutAll: ')'
! !

!PGAsciiRow methodsFor: 'printing' stamp: 'yj 4/24/2003 23:01'!
printOn: aStream

	super printOn: aStream.
	aStream nextPutAll: '('.
	rawData do: [:each | each printOn: aStream. aStream nextPut: $,].
	aStream nextPutAll: ')'.
! !

!PGAuthentication methodsFor: 'printing' stamp: 'yj 4/24/2003 23:01'!
printOn: aStream

	super printOn: aStream.
	aStream
		nextPutAll: '(';
		nextPutAll: 'type='; nextPutAll: type printString;
		nextPutAll: ',salt='; nextPutAll: salt printString;
		nextPutAll: ')'
! !

!PGBackendKeyData methodsFor: 'printing' stamp: 'yj 4/24/2003 23:01'!
printOn: aStream

	super printOn: aStream.
	aStream
		nextPutAll: '(';
		nextPutAll: 'processId='; nextPutAll: processId printString;
		nextPutAll: ',secretKey='; nextPutAll: secretKey printString;
		nextPutAll: ')'
! !

!PGColumnDescription methodsFor: 'printing' stamp: 'yj 4/24/2003 23:01'!
printOn: aStream

	super printOn: aStream.
	aStream
		nextPutAll: '(';
		nextPutAll: 'fieldName='; nextPutAll: fieldName printString;
		nextPutAll: ',typeOid='; nextPutAll: typeOid printString;
		nextPutAll: ',typeSize='; nextPutAll: typeSize printString;
		nextPutAll: ',typeModifier='; nextPutAll: typeModifier printString;
		nextPutAll: ')'
! !

!PGFunctionCall methodsFor: 'printing' stamp: 'yj 4/24/2003 23:01'!
printOn: aStream

	super printOn: aStream.
	aStream
		nextPutAll: '(';
		nextPutAll: 'oid='; nextPutAll: oid printString;
		nextPutAll: ',arguments='; nextPutAll: arguments printString;
		nextPutAll: ')'! !

!PGFunctionResultResponse methodsFor: 'printing' stamp: 'yj 4/24/2003 23:01'!
printOn: aStream

	super printOn: aStream.
	aStream
		nextPutAll: '(';
		nextPutAll: 'result='; nextPutAll: result printString;
		nextPutAll: ')'! !

!PGPasswordPacket methodsFor: 'printing' stamp: 'yj 4/24/2003 23:01'!
printOn: aStream

	super printOn: aStream.
	aStream
		nextPutAll: '(';
		nextPutAll: 'password='; nextPutAll: password printString;
		nextPutAll: ')'! !

!PGQuery methodsFor: 'printing' stamp: 'yj 4/24/2003 23:01'!
printOn: aStream

	super printOn: aStream.
	aStream
		nextPutAll: '(';
		nextPutAll: 'queryString='; nextPutAll: queryString printString;
		nextPutAll: ')'! !

!PGRowDescription methodsFor: 'printing' stamp: 'yj 4/24/2003 23:01'!
printOn: aStream

	super printOn: aStream.
	aStream nextPutAll: '('; cr.
	columnDescriptions do: [:each | each printOn: aStream. aStream cr].
	aStream nextPutAll: ')'.
! !

!PGStartupPacket methodsFor: 'printing' stamp: 'yj 4/24/2003 23:01'!
printOn: aStream

	super printOn: aStream.
	aStream
		nextPutAll: '(';
		nextPutAll: 'databaseName='; nextPutAll: databaseName printString;
		nextPutAll: ',userName='; nextPutAll: userName printString;
		nextPutAll: ',extraArgs='; nextPutAll: extraArgs printString;
		nextPutAll: ',debugTty='; nextPutAll: debugTty printString;
		nextPutAll: ',version='; nextPutAll: version printString;
		nextPutAll: ')'
! !

!PGActiveObject methodsFor: 'private-sa' stamp: 'yj 4/24/2003 23:01'!
generateEvent: event to: receiver

	^self == receiver
		ifTrue: [self processEvent: event]
		ifFalse: [receiver queueEvent: event].
! !

!PGActiveObject methodsFor: 'private-sa' stamp: 'yj 4/24/2003 23:01'!
nextEvent

	^ #CantHappen
! !

!PGActiveObject methodsFor: 'private-sa' stamp: 'yj 11/12/2004 18:20'!
processEvent: event

	| nextState eventName eventNameString traceText |

	eventName := event isSymbol ifTrue: [event] ifFalse: [event eventName].
	nextState := (self stateTransitionTable at: state)
		at: eventName
		ifAbsent: [ #CantHappen ].

	trace >= 8 ifTrue: [
		eventNameString := event isSymbol ifTrue: [event asString] ifFalse: [event eventName].
		traceText := nextState = #EventIgnored
			ifTrue: [ state asString, ' IGNORE ', eventNameString ]
			ifFalse: [ state asString, '-->', nextState asString, ' on ', eventNameString ].
		self log: 'processEvent' text: traceText.
	].

	nextState = #EventIgnored
		ifFalse: [
			state := nextState.
			self perform: ('st', state asString, ':') asSymbol with: event.
		].
! !

!PGActiveObject methodsFor: 'private-sa' stamp: 'yj 4/24/2003 23:01'!
queueEvent: event

	events addLast: event.
! !

!PGActiveObject methodsFor: 'private-sa' stamp: 'yj 4/24/2003 23:01'!
saProcessEventsUntil: newStates

	[
		[events size > 0] whileTrue: [
			self processEvent: events removeFirst.
		].
		(newStates includes: state) 
			ifFalse: [self generateEvent: self nextEvent to: self].
		(newStates includes: state) not
	] whileTrue.
! !

!PGActiveObject methodsFor: 'private-sa' stamp: 'yj 4/24/2003 23:01'!
stCantHappen: event
	"Handle a defective state machine."

	self error: self class name, ' has a defective state machine'.
! !

!PGActiveObject methodsFor: 'private-sa' stamp: 'yj 4/24/2003 23:01'!
stateTransitionTable

	^ self class stateTransitionTable
! !

!PGActiveObject methodsFor: 'initialize/release' stamp: 'yj 4/24/2003 23:01'!
initialize

	state := #Created.
	events := OrderedCollection new.
	^self
! !

!PGActiveObject methodsFor: 'trace' stamp: 'yj 4/24/2003 23:01'!
log: where text: text

	self logInfo: where, ': ', text.
! !

!PGActiveObject methodsFor: 'trace' stamp: 'yj 4/24/2003 23:01'!
logIdString

	^ self class name, '(', self hash printString, ')'.
! !

!PGActiveObject methodsFor: 'trace' stamp: 'yj 4/24/2003 23:01'!
logInfo: text

	Transcript
		nextPut: $[;
		nextPutAll: self logIdString;
		nextPut: $];
		space;
		nextPutAll: text;
		cr;
		flush.
! !

!PGActiveObject methodsFor: 'trace' stamp: 'yj 4/24/2003 23:01'!
trace
	^trace! !

!PGActiveObject methodsFor: 'trace' stamp: 'yj 4/24/2003 23:01'!
trace: anInteger
	trace := anInteger! !

!PGActiveObject class methodsFor: 'stt' stamp: 'yj 4/24/2003 23:01'!
buildStateTransitionTable

	^ Dictionary new
! !

!PGActiveObject class methodsFor: 'stt' stamp: 'yj 4/24/2003 23:01'!
resetStateTransitionTable

	stateTransitionTable := nil
! !

!PGActiveObject class methodsFor: 'stt' stamp: 'yj 4/24/2003 23:01'!
stateTransitionTable

	stateTransitionTable == nil ifTrue: [stateTransitionTable := self buildStateTransitionTable].
	^ stateTransitionTable
! !

!PGConnection methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
addNotificationSubscriber: aNotificationSubscriber

	^ self notificationSubscribers add: aNotificationSubscriber
! !

!PGConnection methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
connectionArgs
	^connectionArgs! !

!PGConnection methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
connectionArgs: aConnectionArgs
	connectionArgs := aConnectionArgs! !

!PGConnection methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
copyStream
	^copyStream! !

!PGConnection methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
copyStream: aStream
	copyStream := aStream! !

!PGConnection methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
fieldConverterAt: typeOid
	^ fieldConverters at: typeOid ifAbsent: [nil]
! !

!PGConnection methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
fieldConverterAt: typeOid put: converter
	fieldConverters at: typeOid put: converter
! !

!PGConnection methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
fieldConverters
	^ fieldConverters! !

!PGConnection methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
fieldConverters: anObject
	fieldConverters := anObject! !

!PGConnection methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
isConnected
	^ socket notNil and: [ socket isConnected]! !

!PGConnection methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
notificationSubscribers

	notificationSubscribers isNil ifTrue: [ notificationSubscribers := OrderedCollection new ].
	^ notificationSubscribers
! !

!PGConnection methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
result
	^result! !

!PGConnection methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
result: aResult
	result := aResult! !

!PGConnection methodsFor: 'api' stamp: 'yj 4/24/2003 23:01'!
cancelRequest
	"Issue a cancel request. Open a new connection to the server and send a CancelRequest message."

	self sendCancel.
! !

!PGConnection methodsFor: 'api' stamp: 'yj 4/24/2003 23:01'!
copy: copySql withStream: aStream

	"The syntax of a COPY command is:

	COPY [ BINARY ] table [ WITH OIDS ]
		FROM { 'filename' | stdin }
		[ [USING] DELIMITERS 'delimiter' ]
		[ WITH NULL AS 'null string' ]

	COPY [ BINARY ] table [ WITH OIDS ]
		TO { 'filename' | stdout }
		[ [USING] DELIMITERS 'delimiter' ]
		[ WITH NULL AS 'null string' ]

	The 'stdin' or 'stdout' option must be used, not the 'filename' option.
	'aStream' will supply the COPY...FROM input.
	'aStream' will received the COPY...TO output.
	"

	sql := copySql.
	copyStream := aStream.
	self queueEvent: #Query.
	self saProcessEventsUntil: #(ReadyForQuery ConnectionFailed).
	^ result
! !

!PGConnection methodsFor: 'api' stamp: 'yj 4/13/2004 17:16'!
execute: sqlString

	trace >= 2 ifTrue: [self log: 'execute' text: sqlString].

	self isConnected ifFalse: [ self error: 'Connection not valid' ].

	sql := sqlString.
	self queueEvent: #Query.
	self saProcessEventsUntil: #(ReadyForQuery ConnectionFailed).

	"There's an extra result set, so nuke it here."
	result resultSets size > 0
		ifTrue: [ result resultSets removeLast ].

	^ result
! !

!PGConnection methodsFor: 'api' stamp: 'yj 4/24/2003 23:01'!
functionCall: oid arguments: arguments

	functionCallOid := oid.
	functionCallArgs := arguments.
	self queueEvent: #FunctionCall.
	self saProcessEventsUntil: #(ReadyForQuery ConnectionFailed).
	^ result
! !

!PGConnection methodsFor: 'api' stamp: 'yj 1/31/2006 22:45'!
startup

	self connectionArgs isNil ifTrue: [
		self connectionArgs: self class defaultConnectionArgs.
	].
	self queueEvent: #Startup.
	self saProcessEventsUntil: #(ReadyForQuery ConnectionFailed TerminalError UnsupportedAuthentication).
	^ result
! !

!PGConnection methodsFor: 'api' stamp: 'yj 4/24/2003 23:01'!
terminate

	self queueEvent: #Terminate.
	self saProcessEventsUntil: #(Terminated ConnectionFailed).
! !

!PGConnection methodsFor: 'private-actions' stamp: 'yj 4/24/2003 23:01'!
closeSocket

	self closeSocket: socket
! !

!PGConnection methodsFor: 'private-actions' stamp: 'yj 4/24/2003 23:01'!
closeSocket: aSocket

	trace >= 2
		ifTrue: [ self log: 'closeSocket' text: 'hostname: ', connectionArgs hostname, ':', connectionArgs portno printString ].
	trace >= 2
		ifTrue: [ self log: 'closeSocket' text: 'socket: ', aSocket printString ].

	aSocket closeAndDestroy.

	trace >= 2
		ifTrue: [ self log: 'closeSocket' text: 'socket: ', aSocket printString ].
! !

!PGConnection methodsFor: 'private-actions' stamp: 'yj 4/24/2003 23:01'!
copyInDataRows
	"copyStream is initially positioned at the start of a data rows stream.
	The contents are sent down the socket.

	In a stream of data rows, each row is terminatated by a Byte1('\n').
	A sequence of Byte1('\\'), Byte1('.'), Byte1('\n') is the last line.
	"

	trace >= 8
		ifTrue: [ self log: 'copyInDataRows' text: copyStream contents printString ].

	socket sendData: copyStream contents.
	"socket sendData: (String with: $\ with: $. with: Character lf)."
! !

!PGConnection methodsFor: 'private-actions' stamp: 'yj 4/24/2003 23:01'!
copyOutDataRows

	| ch lf notDone pch ppch |
	lf := Character lf.
	notDone := true.
	pch := $x.
	ch := $x.
	[notDone] whileTrue: [
		ppch := pch.
		pch := ch.
		ch := self next.
		copyStream nextPut: ch.
		((ch = lf and: [pch = $.]) and: [ppch = $\])
			ifTrue: [notDone := false].
	].

! !

!PGConnection methodsFor: 'private-actions' stamp: 'yj 10/16/2003 10:58'!
next
	readIndex >= lastReadIndex 
		ifTrue: 
			[trace >= 10 
				ifTrue: [self log: 'next' text: '**** filling read buffer ****'].
			"(Delay forMilliseconds: 500) wait."
			socket waitForDataFor: Socket standardTimeout.
			
			[(lastReadIndex := socket receiveDataInto: readBuffer) = 0 
				ifTrue: 
					[trace >= 10 
						ifTrue: [self log: 'next' text: '**** zero length received from socket ****'].
					(Delay forMilliseconds: 100) wait].
			lastReadIndex = 0] 
					whileTrue.
			readIndex := 0.
			trace >= 10 
				ifTrue: 
					[self log: 'next' text: '**** read ' , lastReadIndex printString , ' ****']].
	readIndex := readIndex + 1.
	trace >= 10 
		ifTrue: 
			[self log: 'next'
				text: 'readIndex=' , readIndex printString , ',lastReadIndex=' 
						, lastReadIndex printString , ',ch=' 
						, (readBuffer at: readIndex) printString].
	^readBuffer at: readIndex! !

!PGConnection methodsFor: 'private-actions' stamp: 'yj 4/24/2003 23:01'!
nextEvent

	| pkt noticeFlag |

	[
		pkt := self receivePacket.
		(noticeFlag := #(NoticeResponse NotificationResponse) includes: pkt eventName)
			ifTrue: [ self notifySubscribers: pkt ].
		noticeFlag.
	] whileTrue.
	^ pkt
! !

!PGConnection methodsFor: 'private-actions' stamp: 'yj 4/24/2003 23:01'!
notifySubscribers: pkt

	notificationSubscribers isNil
		ifTrue: [ self logInfo: 'NOTIFICATION: ', pkt printString ]
		ifFalse: [ notificationSubscribers do: [:each | each receive: pkt from: self ]].
! !

!PGConnection methodsFor: 'private-actions' stamp: 'yj 10/16/2003 10:58'!
openSocket
	| newSocket |
	trace >= 2 
		ifTrue: 
			[self log: 'openSocket'
				text: 'hostname: ' , connectionArgs hostname , ':' 
						, connectionArgs portno printString].
	Socket initializeNetwork.
	newSocket := Socket newTCP.
	newSocket 
		connectTo: (NetNameResolver addressForName: connectionArgs hostname
				timeout: 15)
		port: connectionArgs portno.
	newSocket waitForConnectionFor: Socket standardTimeout ifTimedOut: [newSocket := nil].
	trace >= 2 
		ifTrue: [self log: 'openSocket' text: 'socket: ' , newSocket printString].
	^newSocket! !

!PGConnection methodsFor: 'private-actions' stamp: 'yj 11/12/2004 18:27'!
receivePacket

	| typeCode packet |

	typeCode := self next.
	trace >= 5
		ifTrue: [ self log: 'packet typeCode=' text: typeCode printString ].

	packet := PGPacket newPacket: typeCode.

	packet == nil
		ifTrue: [packet := #UnknownPacket]
		ifFalse: [packet receiveFrom: self ].

	trace >= 5
		ifTrue: [ self log: 'receivePacket' text: packet printString ].

	^ packet
! !

!PGConnection methodsFor: 'private-actions' stamp: 'yj 4/24/2003 23:01'!
resetResult
	"Clear the result, a new query or function call will follow."

	result
		reset;
		addResultSet.
! !

!PGConnection methodsFor: 'private-actions' stamp: 'yj 4/24/2003 23:01'!
sendCancel

	| cancelRequestSocket |

	trace >= 2
		ifTrue: [ self log: 'sendCancel' text: 'processId=', processId printString ].

	cancelRequestSocket := self openSocket.
	self sendPacket: (PGCancelRequest processId: processId secretKey: secretKey) on: cancelRequestSocket.
	self closeSocket: cancelRequestSocket.
! !

!PGConnection methodsFor: 'private-actions' stamp: 'yj 4/24/2003 23:01'!
sendPacket: aPacket on: aSocket

	| s |
	s := WriteStream on: String new.
	aPacket writeOn: s.

	trace >= 5
		ifTrue: [
			self log: 'sendPacket' text: aPacket printString.
			trace >= 10 ifTrue: [self log: 'sendPacket' text: s contents printString].
		].

	aSocket sendData: s contents.
! !

!PGConnection methodsFor: 'private-actions' stamp: 'yj 4/24/2003 23:01'!
sendStartup

	self sendPacket: (PGStartupPacket databaseName: connectionArgs databaseName userName: connectionArgs userName) on: socket.
! !

!PGConnection methodsFor: 'private-actions' stamp: 'yj 4/24/2003 23:01'!
sendTerminate

	self sendPacket: PGTerminate new on: socket.
! !

!PGConnection methodsFor: 'initialize/release' stamp: 'yj 4/24/2003 23:01'!
initialize

	| readBufferSize |

	super initialize.

	trace := self class defaultTraceLevel.
	readBufferSize := 8096.
	readBuffer := String new: readBufferSize.
	readIndex := readBufferSize + 1.
	lastReadIndex := readBufferSize.

	self fieldConverters: self class buildDefaultFieldConverters.
	result := PGResult on: self.

	"^ self"
! !

!PGConnection methodsFor: 'private-states' stamp: 'yj 4/24/2003 23:01'!
stAuthenticationOk: event

	"Do nothing"
! !

!PGConnection methodsFor: 'private-states' stamp: 'yj 4/24/2003 23:01'!
stCantHappen: event
	"Try to send the terminate packet, then close the socket"

	self isConnected ifTrue: [ self sendTerminate ].
	socket isNil ifFalse: [ self closeSocket ].
	super stCantHappen: event.
! !

!PGConnection methodsFor: 'private-states' stamp: 'yj 4/24/2003 23:01'!
stConnectionFailed: event

	"Do nothing"
! !

!PGConnection methodsFor: 'private-states' stamp: 'yj 4/24/2003 23:01'!
stErrorResponse: event

	result errorResponse: event.
! !

!PGConnection methodsFor: 'private-states' stamp: 'yj 4/24/2003 23:01'!
stFunctionCall: event

	self resetResult.
	self sendPacket: (PGFunctionCall oid: functionCallOid arguments: functionCallArgs) on: socket.
! !

!PGConnection methodsFor: 'private-states' stamp: 'yj 4/24/2003 23:01'!
stGotBackendKeyData: backendKeyData
	"event is a BackendKeyData packet."

	processId := backendKeyData processId.
	secretKey := backendKeyData secretKey.
! !

!PGConnection methodsFor: 'private-states' stamp: 'yj 4/24/2003 23:01'!
stGotCompleted: event

	result completedResponse: event.

	"This causes an extra result set to be added.
	But a result set has to be available at this point,
	given the current state machine.
	"
	result addResultSet.
! !

!PGConnection methodsFor: 'private-states' stamp: 'yj 4/24/2003 23:01'!
stGotCopyIn: event

	self copyInDataRows.
! !

!PGConnection methodsFor: 'private-states' stamp: 'yj 4/24/2003 23:01'!
stGotCopyOut: event

	self copyOutDataRows.
! !

!PGConnection methodsFor: 'private-states' stamp: 'yj 4/24/2003 23:01'!
stGotCursor: event

	"Do nothing"
! !

!PGConnection methodsFor: 'private-states' stamp: 'yj 4/24/2003 23:01'!
stGotFunctionResult: event

	result functionResult: event.
! !

!PGConnection methodsFor: 'private-states' stamp: 'yj 4/24/2003 23:01'!
stGotRow: event

	result rows add: event.
! !

!PGConnection methodsFor: 'private-states' stamp: 'yj 4/24/2003 23:01'!
stGotRowDescription: event

	result rowDescription: event.
! !

!PGConnection methodsFor: 'private-states' stamp: 'yj 4/24/2003 23:01'!
stQuerying: event

	self resetResult.
	self sendPacket: (PGQuery sql: sql) on: socket.
! !

!PGConnection methodsFor: 'private-states' stamp: 'yj 4/24/2003 23:01'!
stReadyForQuery: event

	"Do nothing"
! !

!PGConnection methodsFor: 'private-states' stamp: 'yj 4/24/2003 23:01'!
stSendingCleartextPassword: event

	self sendPacket: (PGPasswordPacket password: connectionArgs password) on: socket.
! !

!PGConnection methodsFor: 'private-states' stamp: 'yj 1/31/2006 18:57'!
stSendingMD5Password: event 
	"MD5 authentication as explain in http://archives.postgresql.org/pgsql-novice/2003-05/msg00305.php"
	| hashedCredentials hashedMessage |

	hashedCredentials := (MD5 hashMessage: (connectionArgs password, connectionArgs userName)) hex asLowercase.
	hashedMessage := 'md5', (MD5 hashMessage: (hashedCredentials, event salt asString)) hex asLowercase.

	self	sendPacket: (PGPasswordPacket password: hashedMessage) on: socket.
! !

!PGConnection methodsFor: 'private-states' stamp: 'yj 4/24/2003 23:01'!
stStartup: event

	self resetResult.
	socket := self openSocket.
	socket isNil
		ifTrue: [ self generateEvent: #ConnectionFailed to: self ]
		ifFalse: [ self sendStartup ].
! !

!PGConnection methodsFor: 'private-states' stamp: 'yj 4/24/2003 23:01'!
stTerminalError: event

	result errorResponse: event.
	self closeSocket: socket.
	socket := nil.
! !

!PGConnection methodsFor: 'private-states' stamp: 'yj 4/24/2003 23:01'!
stTerminated: event

	self sendTerminate.
	self closeSocket: socket.
	socket := nil.
! !

!PGConnection methodsFor: 'private-states' stamp: 'yj 1/31/2006 22:52'!
stUnsupportedAuthentication: event

	"result errorResponse: 'Unsupported authentication method: ', event eventName."

	PGUnsupportedAuthentication signal: 'Unsupported authentication method: ', event eventName.
! !

!PGConnection class methodsFor: 'initialization' stamp: 'yj 2/1/2006 10:57'!
buildDefaultConnectionArgs

	^ PGConnectionArgs
		hostname: 'localhost'
		portno: 5432
		databaseName: 'test'
		userName: 'postgres'
		password: 'secret'
! !

!PGConnection class methodsFor: 'initialization' stamp: 'yj 2/1/2006 11:37'!
buildDefaultFieldConverters
	"The type oid's can be found using:
		SELECT oid,typname from pg_type
	Also, see the source code file:
		.../src/include/catalog/pg_type.h
	"
	| converters dateBlock timestampBlock timetzBlock timestamptzBlock |

	converters := IdentityDictionary new.

	#(16 "bool" 1000 "_bool")
		do: [:each | converters at: each put: [:s | s = 't' or: [s = 'T']]].

	#(18 "char" 1002 "_char" 1042 "bpchar")
		do: [:each | converters at: each put: [:s | s]].

	#(20 "int8" 21 "int2" 23 "int4" 1005 "_int2" 1007 "_int4" 1016 "_int8")
		do: [:each | converters at: each put: [:s | Number readFrom: (ReadStream on: s)]].

	#(700 "float4" 701 "float8" 1021 "_float4" 1022 "_float8" 1700 "numeric")
		do: [:each | converters at: each put: [:s | (Number readFrom: (ReadStream on: s)) asFloat]].

	dateBlock :=
		[:s | Date
				newDay: (s copyFrom: 9 to: 10) asInteger
				month: (s copyFrom: 6 to: 7) asInteger
				year: (s copyFrom: 1 to: 4) asInteger].
	#(1082 "date" 1182 "_date")
		do: [:each | converters at: each put: dateBlock].

	#(1083 "time" 1183 "_time")
		do: [:each | converters at: each put: [:s | Time readFrom: (ReadStream on: s)]].

	timestampBlock :=
		[:s |	DateAndTime
				year: (s copyFrom: 1 to: 4) asInteger
				month: (s copyFrom: 6 to: 7) asInteger
				day: (s copyFrom: 9 to: 10) asInteger
				hour: (s copyFrom: 12 to: 13) asInteger
				minute: (s copyFrom: 15 to: 16) asInteger
				second: (s copyFrom: 18 to: 19) asInteger].
	#(1114 "timestamp" 1115 "_timestamp")
		do: [:each | converters at: each put: timestampBlock].

	timetzBlock :=
		[:s | | list |
			list := (s subStrings: ':') collect:[:i | i asInteger].
			Time fromSeconds: ((list at: 1) * 3600) + ((list at: 2) * 60) + (list at: 3)].
	#(1266 "timetz" 1270 "_timetz")
		do: [:each | converters at: each put: timetzBlock].

	timestamptzBlock :=
		[:s | | direction offset |
			direction := (s charAt: 23) = $- ifTrue: [-1] ifFalse: [1].
			offset := Duration
				days: 0
				hours: (s copyFrom: 21 to: 22) asInteger * direction
				minutes: (s copyFrom: 24 to: 25) asInteger * direction
				seconds: 0.
			DateAndTime
				year: (s copyFrom: 1 to: 4) asInteger
				month: (s copyFrom: 6 to: 7) asInteger
				day: (s copyFrom: 9 to: 10) asInteger
				hour: (s copyFrom: 12 to: 13) asInteger
				minute: (s copyFrom: 15 to: 16) asInteger
				second: (s copyFrom: 18 to: 19) asInteger
				offset: offset].
	#(1184 "timestamptz " 1185 "_timestamptz")
		do: [:each | converters at: each put: timestamptzBlock].

	^ converters
! !

!PGConnection class methodsFor: 'initialization' stamp: 'yj 1/31/2006 22:47'!
buildStateTransitionTable
	"self resetStateTransitionTable"

	^#(
	(Created (
		(Startup Startup)))
	(Startup (
		(AuthenticationKerberosV4 UnsupportedAuthentication)
		(AuthenticationKerberosV5 UnsupportedAuthentication)
		(AuthenticationCleartextPassword SendingCleartextPassword)
		(AuthenticationCryptPassword UnsupportedAuthentication)
		(AuthenticationMD5Password	SendingMD5Password)
		(AuthenticationSCMCredential UnsupportedAuthentication)
		(AuthenticationOk AuthenticationOk)
		(ConnectionFailed ConnectionFailed)
		(Terminate Terminated)
		(ErrorResponse TerminalError)))
	(SendingCleartextPassword (
		(AuthenticationOk AuthenticationOk)
		(Terminate Terminated)
		(ErrorResponse TerminalError)))
	(SendingMD5Password (
		(AuthenticationOk AuthenticationOk)
		(Terminate Terminated)
		(ErrorResponse TerminalError)))
	(UnsupportedAuthentication (
		(Terminate Terminated)))
	(AuthenticationOk (
		(BackendKeyData GotBackendKeyData)
		(Terminate Terminated)
		(ErrorResponse TerminalError)))
	(GotBackendKeyData (
		(ReadyForQuery ReadyForQuery)
		(Terminate Terminated)
		(ErrorResponse ErrorResponse)))
	(ReadyForQuery (
		(Query Querying)
		(FunctionCall FunctionCall)
		(Terminate Terminated)
		(ErrorResponse ErrorResponse)))
	(Querying (
		(CursorResponse GotCursor)
		(CopyOutResponse GotCopyOut)
		(CopyInResponse GotCopyIn)
		(CompletedResponse GotCompleted)
		(Terminate Terminated)
		(ErrorResponse ErrorResponse)))
	(FunctionCall (
		(FunctionResultResponse GotFunctionResult)
		(Terminate Terminated)
		(ErrorResponse ErrorResponse)))
	(GotCursor (
		(RowDescription GotRowDescription)
		(CompletedResponse GotCompleted)
		(Terminate Terminated)
		(ErrorResponse ErrorResponse)))
	(GotRowDescription (
		(AsciiRow GotRow)
		(BinaryRow GotRow)
		(CompletedResponse GotCompleted)
		(Terminate Terminated)
		(ErrorResponse ErrorResponse)))
	(GotRow (
		(AsciiRow GotRow)
		(BinaryRow GotRow)
		(CompletedResponse GotCompleted)
		(Terminate Terminated)
		(ErrorResponse ErrorResponse)))
	(GotCopyOut (
		(CompletedResponse GotCompleted)
		(Terminate Terminated)
		(ErrorResponse ErrorResponse)))
	(GotCopyIn (
		(CompletedResponse GotCompleted)
		(Terminate Terminated)
		(ErrorResponse ErrorResponse)))
	(GotFunctionResult (
		(ReadyForQuery ReadyForQuery)
		(CompletedResponse GotCompleted)
		(Terminate Terminated)
		(ErrorResponse ErrorResponse)))
	(GotCompleted (
		(ReadyForQuery ReadyForQuery)
		(CursorResponse GotCursor)
		(CompletedResponse GotCompleted)
		(Terminate Terminated)
		(ErrorResponse ErrorResponse)))
	(Terminated (
		(Startup Startup)))
	(ConnectionFailed (
		(Startup Startup)
		(Query EventIgnored)
		(FunctionCall EventIgnored)
		(Terminate EventIgnored)))
	(ErrorResponse (
		(Terminate Terminated)
		(ReadyForQuery ReadyForQuery)
		(CompletedResponse GotCompleted)))
	(TerminalError (
		))
	)
	inject: Dictionary new
	into: [:table :each |
		table
			at: (each at: 1)
			put: ((each at: 2)
					inject: Dictionary new
					into: [:stateTransitions :transition |
						stateTransitions at: (transition at: 1) put: (transition at: 2).
						stateTransitions]).
		table].
! !

!PGConnection class methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
defaultConnectionArgs
	DefaultConnectionArgs isNil ifTrue: [DefaultConnectionArgs := self buildDefaultConnectionArgs].
	^ DefaultConnectionArgs
! !

!PGConnection class methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
defaultConnectionArgs: aConnectionArgs
	"self defaultConnectionArgs: nil"

	DefaultConnectionArgs := aConnectionArgs
! !

!PGConnection class methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
defaultTraceLevel
	DefaultTraceLevel isNil ifTrue: [DefaultTraceLevel := 0].
	^DefaultTraceLevel! !

!PGConnection class methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
defaultTraceLevel: anInteger
	"
	PGConnection defaultTraceLevel: 0.
	PGConnection defaultTraceLevel: 2.
	PGConnection defaultTraceLevel: 5.
	PGConnection defaultTraceLevel: 8.
	PGConnection defaultTraceLevel: 10.
	"

	DefaultTraceLevel := anInteger! !

!PGConnection class methodsFor: 'instance creation' stamp: 'yj 4/24/2003 23:01'!
new

	^self basicNew initialize
! !

!PGNotificationSubscriber methodsFor: 'api' stamp: 'yj 4/24/2003 23:01'!
receive: notice from: aConnection

	self logInfo: notice printString, ' received from ', aConnection logIdString.
! !

!PGConnectionArgs methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
databaseName
	^databaseName! !

!PGConnectionArgs methodsFor: 'accessing' stamp: 'yj 11/28/2005 17:28'!
databaseName: anObject
	databaseName := anObject! !

!PGConnectionArgs methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
debugTty
	^debugTty! !

!PGConnectionArgs methodsFor: 'accessing' stamp: 'yj 11/28/2005 17:28'!
debugTty: anObject
	debugTty := anObject! !

!PGConnectionArgs methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
extraArgs
	^extraArgs! !

!PGConnectionArgs methodsFor: 'accessing' stamp: 'yj 11/28/2005 17:28'!
extraArgs: anObject
	extraArgs := anObject! !

!PGConnectionArgs methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
hostname
	^hostname! !

!PGConnectionArgs methodsFor: 'accessing' stamp: 'yj 11/28/2005 17:28'!
hostname: anObject
	hostname := anObject! !

!PGConnectionArgs methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
password
	^password! !

!PGConnectionArgs methodsFor: 'accessing' stamp: 'yj 11/28/2005 17:28'!
password: anObject
	password := anObject! !

!PGConnectionArgs methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
portno
	^portno! !

!PGConnectionArgs methodsFor: 'accessing' stamp: 'yj 11/28/2005 17:28'!
portno: anObject
	portno := anObject! !

!PGConnectionArgs methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
userName
	^userName! !

!PGConnectionArgs methodsFor: 'accessing' stamp: 'yj 11/28/2005 17:28'!
userName: anObject
	userName := anObject! !

!PGConnectionArgs methodsFor: 'private-initialize' stamp: 'yj 4/24/2003 23:01'!
setHostname: host portno: port databaseName: database userName: user password: pwd extraArgs: extra debugTty: debug

	hostname := host.
	portno := port.
	databaseName := database.
	userName := user.
	password := pwd.
	extraArgs := extra.
	debugTty := debug.
	^self! !

!PGConnectionArgs class methodsFor: 'instance creation' stamp: 'yj 11/28/2005 17:30'!
hostname: host portno: port databaseName: database userName: user password: pwd
	^(self new)
		hostname: host;
		portno: port;
		databaseName: database;
		userName: user;
		password: pwd;
		yourself! !

!PGConnectionArgs class methodsFor: 'instance creation' stamp: 'yj 11/28/2005 17:30'!
hostname: host portno: port databaseName: database userName: user password: pwd extraArgs: extra debugTty: debug
	^(self new)
		hostname: host;
		portno: port;
		databaseName: database;
		userName: user;
		password: pwd;
		extraArgs: extra;
		debugTty: debug;
		yourself! !

!PGPacket methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
eventName
	^self subclassResponsibility! !

!PGPacket methodsFor: 'receiving' stamp: 'yj 4/24/2003 23:01'!
readBitmap: nbits from: connection

	| nbytes bitmap |

	nbytes := (nbits + 7) // 8.
	bitmap := ByteArray new: nbytes.
	1 to: nbytes do: [:i |
		bitmap at: i put: connection next codePoint.
	].
	^bitmap
! !

!PGPacket methodsFor: 'receiving' stamp: 'yj 1/31/2006 18:15'!
readByteN: n from: connection

	| bytes |

	bytes := ByteArray new: n.
	1 to: n do: [:i | bytes byteAt: i put: connection next codePoint].
	^bytes! !

!PGPacket methodsFor: 'receiving' stamp: 'yj 4/24/2003 23:01'!
readFieldFrom: connection

	| n tmp |

	n := (self readInt32From: connection) - 4.
	tmp := WriteStream on: String new.
	1 to: n do: [:i |
		tmp nextPut: connection next.
	].
	^tmp contents
! !

!PGPacket methodsFor: 'receiving' stamp: 'yj 4/24/2003 23:01'!
readInt16From: connection

	| value |

	value := connection next codePoint.
	value := (value bitShift: 8) bitOr: connection next codePoint.
	^value
! !

!PGPacket methodsFor: 'receiving' stamp: 'yj 4/24/2003 23:01'!
readInt32From: connection

	| value |

	value := connection next codePoint.
	value := (value bitShift: 8) bitOr: connection next codePoint.
	value := (value bitShift: 8) bitOr: connection next codePoint.
	value := (value bitShift: 8) bitOr: connection next codePoint.
	^value
! !

!PGPacket methodsFor: 'receiving' stamp: 'yj 4/24/2003 23:01'!
readStringFrom: connection

	| tmp ch |
	tmp := WriteStream on: String new.
	[ (ch := connection next) codePoint ~= 0 ] whileTrue: [
		tmp nextPut: ch.
	].
	^tmp contents

! !

!PGPacket methodsFor: 'receiving' stamp: 'yj 4/24/2003 23:01'!
receiveFrom: connection

	"Read nothing, by default"
! !

!PGPacket methodsFor: 'sending' stamp: 'yj 4/24/2003 23:01'!
writeByte: aCharacter on: aStream

	aStream
		nextPut: aCharacter;
		yourself.

! !

!PGPacket methodsFor: 'sending' stamp: 'yj 4/24/2003 23:01'!
writeInt16: anInteger on: aStream

	aStream
		nextPut: (Character value: ((anInteger bitShift: -1*8) bitAnd: 16rFF));
		nextPut: (Character value: ((anInteger bitShift: 0*8) bitAnd: 16rFF));
		yourself.
! !

!PGPacket methodsFor: 'sending' stamp: 'yj 4/24/2003 23:01'!
writeInt32: anInteger on: aStream

	aStream
		nextPut: (Character value: ((anInteger bitShift: -3*8) bitAnd: 16rFF));
		nextPut: (Character value: ((anInteger bitShift: -2*8) bitAnd: 16rFF));
		nextPut: (Character value: ((anInteger bitShift: -1*8) bitAnd: 16rFF));
		nextPut: (Character value: ((anInteger bitShift: 0*8) bitAnd: 16rFF));
		yourself.
! !

!PGPacket methodsFor: 'sending' stamp: 'yj 4/24/2003 23:01'!
writeLimString: aString size: size on: aStream

	aString isNil ifTrue: [
		size timesRepeat: [ aStream nextPut: (Character value: 0) ].
		^aStream.
	].

	aString size < size
		ifTrue: [
			aStream nextPutAll: aString.
			(size - aString size max: 0) timesRepeat: [ aStream nextPut: (Character value: 0) ].
		]
		ifFalse: [
			aStream nextPutAll: (aString copyFrom: 1 to: size).
		].

	^aStream.
! !

!PGPacket methodsFor: 'sending' stamp: 'yj 4/24/2003 23:01'!
writeOn: aStream

	self subclassResponsiblity
! !

!PGPacket methodsFor: 'sending' stamp: 'yj 4/24/2003 23:01'!
writeString: aString on: aStream

	aStream
		nextPutAll: aString;
		nextPut: (Character value: 0);
		yourself.

! !

!PGPacket class methodsFor: 'initialize-release' stamp: 'yj 11/12/2004 18:04'!
initialize
	"PGPacket initialize"

	PacketClasses := IdentityDictionary new
		at: $K put: PGBackendKeyData;
		at: $R put: PGAuthentication;
		at: $C put: PGCompletedResponse;
		at: $G put: PGCopyInResponse;
		at: $H put: PGCopyOutResponse;
		at: $P put: PGCursorResponse;
		at: $I put: PGEmptyQueryResponse;
		at: $E put: PGErrorResponse;
		at: $V put: PGFunctionResultResponse;
		at: $N put: PGNoticeResponse;
		at: $A put: PGNotificationResponse;
		at: $Z put: PGReadyForQuery;
		at: $T put: PGRowDescription;
		at: $D put: PGAsciiRow;
		at: $B put: PGBinaryRow;
		yourself! !

!PGPacket class methodsFor: 'factory' stamp: 'yj 11/12/2004 18:12'!
newPacket: typeCode
	| packetClass |

	packetClass := PacketClasses at: typeCode ifAbsent: [nil].
	^packetClass isNil
		ifTrue: [nil]
		ifFalse: [packetClass new]! !

!PGAbstractStringResponse methodsFor: 'receiving' stamp: 'yj 4/24/2003 23:01'!
receiveFrom: aStream

	value := self readStringFrom: aStream.
! !

!PGAbstractStringResponse methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
value
	^value! !

!PGCompletedResponse methodsFor: 'printing' stamp: 'yj 4/24/2003 23:01'!
displayOn: aStream

	aStream nextPutAll: value.
! !

!PGCompletedResponse methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
eventName
	^#CompletedResponse! !

!PGCursorResponse methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
eventName
	^#CursorResponse! !

!PGEmptyQueryResponse methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
eventName
	^#EmptyQueryResponse! !

!PGErrorResponse methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
eventName
	^#ErrorResponse! !

!PGNoticeResponse methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
eventName
	^#NoticeResponse! !

!PGAsciiRow methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
data

	| converters converter data |

	converters := description resultSet result connection fieldConverters.
	data := OrderedCollection new.
	rawData with: description columnDescriptions do: [:each :aColumnDescription |
		data addLast: (
			each isNil
				ifTrue: [nil]
				ifFalse: [
					converter := converters at: aColumnDescription typeOid ifAbsent: [nil].
					converter isNil ifTrue: [ each ] ifFalse: [ converter value: each ].
				]).
	].
	^data
! !

!PGAsciiRow methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
dataKeyedByFieldName

	| d |

	d := Dictionary new.
	self data with: description columnDescriptions do: [:each :aColumnDescription |
		d at: aColumnDescription fieldName put: each.
	].
	^ d
! !

!PGAsciiRow methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
description: aRowDescription
	description := aRowDescription.
! !

!PGAsciiRow methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
eventName
	^#AsciiRow! !

!PGAsciiRow methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
rawData
	^ rawData! !

!PGAsciiRow methodsFor: 'printing' stamp: 'yj 4/24/2003 23:01'!
displayOn: aStream

	rawData withIndexDo: [:each :i |
		aStream nextPutAll: (each == nil ifTrue: ['0'] ifFalse: [each]).
		i < rawData size ifTrue: [aStream space].
	].
! !

!PGAsciiRow methodsFor: 'initialize' stamp: 'yj 4/24/2003 23:01'!
initialize

	rawData := OrderedCollection new.
	^self! !

!PGAsciiRow methodsFor: 'receiving' stamp: 'yj 4/24/2003 23:01'!
receiveFrom: connection

	| ncol |

	description := connection result rowDescription.
	ncol := description numberOfColumns.
	nullFields := self readBitmap: ncol from: connection.
	0 to: ncol - 1 do: [:i |
		((nullFields at: (i // 8) + 1) bitAnd: (2r10000000 bitShift: (i \\ 8) negated)) > 0
			ifTrue: [rawData add: (self readFieldFrom: connection)]
			ifFalse: [rawData add: nil].
	].
! !

!PGAsciiRow class methodsFor: 'instance creation' stamp: 'yj 4/24/2003 23:01'!
description: aRowDescription

	^self new
		description: aRowDescription;
		yourself.
! !

!PGAsciiRow class methodsFor: 'instance creation' stamp: 'yj 4/24/2003 23:01'!
new

	^self basicNew initialize.
! !

!PGBinaryRow methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
eventName
	^#BinaryRow! !

!PGAuthentication methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
eventName

	type > 6 ifTrue: [self error: 'Unknown authentication type'].

	^#(
		AuthenticationOk
		AuthenticationKerberosV4
		AuthenticationKerberosV5
		AuthenticationCleartextPassword
		AuthenticationCryptPassword
		AuthenticationMD5Password
		AuthenticationSCMCredential
	) at: (type + 1)
! !

!PGAuthentication methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
salt
	^salt! !

!PGAuthentication methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
salt: anInteger
	salt := anInteger! !

!PGAuthentication methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
type
	^type! !

!PGAuthentication methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
type: anInteger
	type := anInteger! !

!PGAuthentication methodsFor: 'receiving' stamp: 'yj 1/31/2006 22:27'!
receiveFrom: connection

	type := self readInt32From: connection.

	"AuthenticationCryptPassword"
	type == 4 ifTrue: [ salt := self readByteN: 2 from: connection ].

	"AuthenticationMD5Password"
	type == 5 ifTrue: [ salt := self readByteN: 4 from: connection ].

	"
	For documentation purposes here are the other authentication methods.
	There is no other packet data to read in these cases.

	type == 1 AuthenticationKerberosV4
	type == 2 AuthenticationKerberosV5
	type == 3 AuthenticationCleartextPassword
	type == 6 AuthenticationSCMCredential
	"
! !

!PGBackendKeyData methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
eventName
	^#BackendKeyData! !

!PGBackendKeyData methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
processId
	^processId! !

!PGBackendKeyData methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
processId: anInteger
	processId := anInteger! !

!PGBackendKeyData methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
secretKey
	^secretKey! !

!PGBackendKeyData methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
secretKey: anInteger
	secretKey := anInteger! !

!PGBackendKeyData methodsFor: 'receiving' stamp: 'yj 4/24/2003 23:01'!
receiveFrom: aStream

	processId := self readInt32From: aStream.
	secretKey := self readInt32From: aStream.
! !

!PGCancelRequest methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
eventName
	^#CancelRequest! !

!PGCancelRequest methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
processId
	^processId! !

!PGCancelRequest methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
processId: anInteger
	processId := anInteger! !

!PGCancelRequest methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
secretKey
	^secretKey! !

!PGCancelRequest methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
secretKey: anInteger
	secretKey := anInteger! !

!PGCancelRequest methodsFor: 'sending' stamp: 'yj 4/24/2003 23:01'!
writeOn: aStream
	"Write a cancel request on the stream."

	"80877102 - The cancel request code.
	The value is chosen to contain 1234 in the most significant 16 bits,
	and 5678 in the least 16 significant bits. (To avoid confusion,
	this code must not be the same as any protocol version number.)
	"

	self writeInt32: 16 on: aStream.
	self writeInt32: 80877102 on: aStream. "major=1234, minor=5678"
	self writeInt32: self processId on: aStream.
	self writeInt32: self secretKey on: aStream.
! !

!PGCancelRequest class methodsFor: 'instance creation' stamp: 'yj 4/24/2003 23:01'!
processId: pid secretKey: secretKey

	^self new
		processId: pid;
		secretKey: secretKey;
		yourself.
! !

!PGColumnDescription methodsFor: 'printing' stamp: 'yj 4/24/2003 23:01'!
displayOn: aStream

	aStream nextPutAll: fieldName.
! !

!PGColumnDescription methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
eventName
	^#ColumnDescription! !

!PGColumnDescription methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
fieldName
	^ fieldName! !

!PGColumnDescription methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
typeModifier
	^ typeModifier! !

!PGColumnDescription methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
typeOid
	^ typeOid! !

!PGColumnDescription methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
typeSize
	^ typeSize! !

!PGColumnDescription methodsFor: 'receiving' stamp: 'yj 4/24/2003 23:01'!
receiveFrom: connection

	fieldName := self readStringFrom: connection.
	typeOid := self readInt32From: connection.
	typeSize := self readInt16From: connection.
	typeModifier := self readInt32From: connection.
! !

!PGCopyInResponse methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
eventName
	^#CopyInResponse! !

!PGCopyOutResponse methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
eventName
	^#CopyOutResponse! !

!PGFunctionCall methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
arguments
	^arguments! !

!PGFunctionCall methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
arguments: value
	arguments := value! !

!PGFunctionCall methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
oid
	^oid! !

!PGFunctionCall methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
oid: value
	oid := value! !

!PGFunctionCall methodsFor: 'printing' stamp: 'yj 11/12/2004 18:18'!
writeOn: aStream

	self writeByte: $F on: aStream.
	self writeString: '' on: aStream.
	self writeInt32: self oid on: aStream.
	self writeInt32: self arguments size on: aStream.
	self arguments do: [:arg |
		self writeInt32: arg size on: aStream.
		arg do: [:b | self writeByte: (Character value: b) on: aStream].
	]! !

!PGFunctionCall methodsFor: 'private-initialize' stamp: 'yj 4/24/2003 23:01'!
setOid: anInteger arguments: anArray

	oid := anInteger.
	arguments := anArray! !

!PGFunctionCall class methodsFor: 'instance creation' stamp: 'yj 4/24/2003 23:01'!
oid: anInteger arguments: aCollection
	"Return a new instance of the receiver.

	'anInteger' specifies the object ID of the function to call. The object ID is a site specific PostgreSQL value.
	'aCollection' contains the arguments of the function call. It should contain String values, which may have non-printable characters (i.e. values 0..255).
	"

	^ self new setOid: anInteger arguments: aCollection
! !

!PGFunctionResultResponse methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
eventName
	^#FunctionResultResponse! !

!PGFunctionResultResponse methodsFor: 'accessing' stamp: 'yj 11/10/2004 23:07'!
result

	^result! !

!PGFunctionResultResponse methodsFor: 'receiving' stamp: 'yj 4/24/2003 23:01'!
receiveFrom: connection

	| emptyFlag resultSize |
	emptyFlag := connection next codePoint.
	emptyFlag == 71  "$G codePoint == 71 indicates non-void response"
		ifTrue: [
			resultSize := self readInt32From: connection.
			result := ByteArray new: resultSize.
			1 to: resultSize do: [:i | result at: i put: connection next codePoint].
			connection next. "toss the extra 0 byte"
	].
! !

!PGNotificationResponse methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
conditionName
	"Answer the value of conditionName"

	^ conditionName! !

!PGNotificationResponse methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
conditionName: anObject
	"Set the value of conditionName"

	conditionName := anObject! !

!PGNotificationResponse methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
eventName
	^#NotificationResponse! !

!PGNotificationResponse methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
processId
	"Answer the value of processId"

	^ processId! !

!PGNotificationResponse methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
processId: anObject
	"Set the value of processId"

	processId := anObject! !

!PGNotificationResponse methodsFor: 'receiving' stamp: 'yj 4/24/2003 23:01'!
receiveFrom: connection

	processId := self readInt32From: connection.
	conditionName := self readStringFrom: connection.
! !

!PGPasswordPacket methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
password
	^password! !

!PGPasswordPacket methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
password: aString
	password := aString! !

!PGPasswordPacket methodsFor: 'sending' stamp: 'yj 4/24/2003 23:01'!
writeOn: aStream

	"Add 5 for the 32bit size header, and add 1 for the '\0' after the string"

	self writeInt32: self password size + 5 on: aStream.
	self writeString: self password on: aStream.
! !

!PGPasswordPacket class methodsFor: 'instance creation' stamp: 'yj 4/24/2003 23:01'!
password: aString

	^self new
		password: aString;
		yourself.
! !

!PGQuery methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
eventName
	^#Query! !

!PGQuery methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
queryString
	^queryString! !

!PGQuery methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
queryString: aString
	queryString := aString! !

!PGQuery methodsFor: 'sending' stamp: 'yj 4/24/2003 23:01'!
writeOn: aStream

	self writeByte: $Q on: aStream.
	self writeString: self queryString on: aStream.
! !

!PGQuery class methodsFor: 'instance creation' stamp: 'yj 4/24/2003 23:01'!
sql: aString

	^self new
		queryString: aString;
		yourself.
! !

!PGReadyForQuery methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
eventName
	^#ReadyForQuery! !

!PGRowDescription methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
columnDescriptions
	^ columnDescriptions! !

!PGRowDescription methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
eventName
	^#RowDescription! !

!PGRowDescription methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
numberOfColumns
	^numberOfColumns! !

!PGRowDescription methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
resultSet
	^ resultSet! !

!PGRowDescription methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
resultSet: anObject
	resultSet := anObject! !

!PGRowDescription methodsFor: 'printing' stamp: 'yj 4/24/2003 23:01'!
displayOn: aStream

	columnDescriptions withIndexDo: [:each :i |
		each displayOn: aStream.
		i < columnDescriptions size ifTrue: [aStream space].
	].
! !

!PGRowDescription methodsFor: 'initialize' stamp: 'yj 4/24/2003 23:01'!
initialize

	numberOfColumns := 0.
	columnDescriptions := OrderedCollection new.
! !

!PGRowDescription methodsFor: 'receiving' stamp: 'yj 4/24/2003 23:01'!
receiveFrom: connection

	numberOfColumns := self readInt16From: connection.
	1 to: numberOfColumns do: [:i |
		columnDescriptions add: (PGColumnDescription new receiveFrom: connection; yourself).
	].
! !

!PGRowDescription class methodsFor: 'instance creation' stamp: 'yj 4/24/2003 23:01'!
new

	^self basicNew initialize.
! !

!PGStartupPacket methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
byteCount
	^296
! !

!PGStartupPacket methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
databaseName
	^databaseName
! !

!PGStartupPacket methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
databaseName: aString
	databaseName := aString
! !

!PGStartupPacket methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
debugTty
	^debugTty! !

!PGStartupPacket methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
debugTty: aString
	debugTty := aString! !

!PGStartupPacket methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
extraArgs
	^extraArgs! !

!PGStartupPacket methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
extraArgs: aString
	extraArgs := aString! !

!PGStartupPacket methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
userName
	^userName! !

!PGStartupPacket methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
userName: aString
	userName := aString! !

!PGStartupPacket methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
version
	^version
! !

!PGStartupPacket methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
version: anInteger
	version := anInteger
! !

!PGStartupPacket methodsFor: 'private-initialize' stamp: 'yj 4/24/2003 23:01'!
setDatabaseName: database userName: user

	^self
		version: (2 bitShift: 16); "major=2 minor=0"
		databaseName: database;
		userName: user;
		yourself! !

!PGStartupPacket methodsFor: 'sending' stamp: 'yj 4/24/2003 23:01'!
writeOn: aStream

	self writeInt32: self byteCount on: aStream.
	self writeInt32: self version on: aStream.
	self writeLimString: self databaseName size: 64 on: aStream.
	self writeLimString: self userName size: 32 on: aStream.
	self writeLimString: self extraArgs size: 64 on: aStream.
	self writeLimString: nil size: 64 on: aStream. "unused"
	self writeLimString: self debugTty size: 64 on: aStream.
! !

!PGStartupPacket class methodsFor: 'instance creation' stamp: 'yj 4/24/2003 23:01'!
databaseName: database userName: user

	^self new
		setDatabaseName: database userName: user;
		yourself! !

!PGTerminate methodsFor: 'sending' stamp: 'yj 4/24/2003 23:01'!
writeOn: aStream

	self writeByte: $X on: aStream.
! !

!PGResult methodsFor: 'accessing-convenience' stamp: 'yj 4/24/2003 23:01'!
addResultSet

	resultSets add: (PGResultSet on: self).
! !

!PGResult methodsFor: 'accessing-convenience' stamp: 'yj 4/24/2003 23:01'!
completedResponse

	^ self lastResultSet completedResponse! !

!PGResult methodsFor: 'accessing-convenience' stamp: 'yj 4/24/2003 23:01'!
completedResponse: value

	self lastResultSet completedResponse: value! !

!PGResult methodsFor: 'accessing-convenience' stamp: 'yj 4/24/2003 23:01'!
lastResultSet

	^ resultSets last! !

!PGResult methodsFor: 'accessing-convenience' stamp: 'yj 4/24/2003 23:01'!
rowDescription

	^ self lastResultSet rowDescription! !

!PGResult methodsFor: 'accessing-convenience' stamp: 'yj 4/24/2003 23:01'!
rowDescription: aRowDescription

	| rs |

	rs := self lastResultSet.
	rs rowDescription: aRowDescription.
	rs result: self.
	aRowDescription resultSet: rs.
! !

!PGResult methodsFor: 'accessing-convenience' stamp: 'yj 4/24/2003 23:01'!
rows

	^ self lastResultSet rows! !

!PGResult methodsFor: 'accessing-convenience' stamp: 'yj 4/24/2003 23:01'!
rows: value

	self lastResultSet rows: value! !

!PGResult methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
connection
	^ connection! !

!PGResult methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
connection: value
	connection := value! !

!PGResult methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
errorResponse
	^ errorResponse! !

!PGResult methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
errorResponse: value
	errorResponse := value! !

!PGResult methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
functionResult
	^ functionResult! !

!PGResult methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
functionResult: value
	functionResult := value! !

!PGResult methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
resultSets
	^ resultSets! !

!PGResult methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
resultSets: value
	resultSets := value! !

!PGResult methodsFor: 'printing' stamp: 'yj 4/24/2003 23:01'!
displayResultOn: aStream

	errorResponse isNil ifFalse: [
		aStream nextPutAll: errorResponse value.
		aStream cr].

	resultSets do: [:each | each displayResultSetOn: aStream].
! !

!PGResult methodsFor: 'initialize' stamp: 'yj 4/24/2003 23:01'!
initialize

	resultSets := OrderedCollection new.
! !

!PGResult methodsFor: 'initialize' stamp: 'yj 4/24/2003 23:01'!
reset
	"Clear the previous results in preparation to hold new query results."

	"There's an opportunity to tweak the code here for performance.
	If the result sets are cleared each time, then there's a lot of
	re-allocation. But, if the old results are just cleared, an earlier
	large result set may cause a large collection to remain in memory.
	Maybe it's just better to let GC handle it.
	"

	self errorResponse: nil.
	self functionResult: nil.
	resultSets := OrderedCollection new.
! !

!PGResult class methodsFor: 'instance creation' stamp: 'yj 4/24/2003 23:01'!
new
	^ self error: 'should not use'
! !

!PGResult class methodsFor: 'instance creation' stamp: 'yj 4/24/2003 23:01'!
on: aConnection

	^ self basicNew initialize
		connection: aConnection;
		yourself.
! !

!PGResultSet methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
completedResponse
	"Answer the value of completedResponse"

	^ completedResponse! !

!PGResultSet methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
completedResponse: anObject
	"Set the value of completedResponse"

	completedResponse := anObject! !

!PGResultSet methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
result
	"Answer the value of result"

	^ result! !

!PGResultSet methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
result: anObject
	"Set the value of result"

	result := anObject! !

!PGResultSet methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
rowDescription
	"Answer the value of rowDescription"

	^ rowDescription! !

!PGResultSet methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
rowDescription: anObject
	"Set the value of rowDescription"

	rowDescription := anObject! !

!PGResultSet methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
rows
	"Answer the value of rows"

	^ rows! !

!PGResultSet methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
rows: anObject
	"Set the value of rows"

	rows := anObject! !

!PGResultSet methodsFor: 'accessing' stamp: 'yj 4/24/2003 23:01'!
valueAt: fieldName

	| i |
	i := rowDescription columnDescriptions findFirst: [:each | each fieldName = fieldName].
	i = 0 ifTrue: [^ nil].
	rows == nil ifTrue: [^ nil].
	^ (rows at: 1) rawData at: i! !

!PGResultSet methodsFor: 'printing' stamp: 'yj 4/24/2003 23:01'!
displayResultSetOn: aStream

	completedResponse isNil ifFalse: [
		completedResponse displayOn: aStream.
		aStream cr.
	].
	rowDescription isNil ifFalse: [
		self displayRowDescriptionOn: aStream.
		aStream cr; nextPutAll: '----------'; cr.
		self displayRowsOn: aStream.
		aStream nextPut: $(.
		rows size printOn: aStream.
		aStream nextPutAll: ' row'.
		rows size > 1 ifTrue: [aStream nextPut: $s].
		aStream nextPut: $); cr; cr.
	].
! !

!PGResultSet methodsFor: 'printing' stamp: 'yj 4/24/2003 23:01'!
displayRowDescriptionOn: aStream

	rowDescription displayOn: aStream.
! !

!PGResultSet methodsFor: 'printing' stamp: 'yj 4/24/2003 23:01'!
displayRowsOn: aStream

	rows do: [:each | each displayOn: aStream. aStream cr.].
! !

!PGResultSet methodsFor: 'initialize' stamp: 'yj 4/24/2003 23:01'!
initialize

	rows := OrderedCollection new.! !

!PGResultSet class methodsFor: 'instance creation' stamp: 'yj 4/24/2003 23:01'!
new
	self error: 'should not use'! !

!PGResultSet class methodsFor: 'instance creation' stamp: 'yj 4/24/2003 23:01'!
on: aResult

	^ self basicNew initialize
		result: aResult;
		yourself.
! !

!TestPGConnection methodsFor: 'private' stamp: 'yj 11/10/2004 23:32'!
asFloat8Arg: aFloat
	"Convert aFloat to a ByteArray for use as a function call argument."

	| word1 word2 bigEndian arg tmp |

	word1 := aFloat basicAt: 1.
	word2 := aFloat basicAt: 2.
	bigEndian := false.
	bigEndian ifTrue: [
			tmp := word1.
			word1 := word2.
			word2 := tmp.
		].
	arg := ByteArray new: 8.
	arg at: 1 put: ((word1 bitShift: -24) bitAnd: 16rFF).
	arg at: 2 put: ((word1 bitShift: -16) bitAnd: 16rFF).
	arg at: 3 put: ((word1 bitShift: -8) bitAnd: 16rFF).
	arg at: 4 put: ((word1 bitShift: 0) bitAnd: 16rFF).
	arg at: 5 put: ((word2 bitShift: -24) bitAnd: 16rFF).
	arg at: 6 put: ((word2 bitShift: -16) bitAnd: 16rFF).
	arg at: 7 put: ((word2 bitShift: -8) bitAnd: 16rFF).
	arg at: 8 put: ((word2 bitShift: 0) bitAnd: 16rFF).
	^ arg
! !

!TestPGConnection methodsFor: 'private' stamp: 'yj 2/9/2005 21:51'!
asFloat8ArgVW: aFloat
	"Convert aFloat to a ByteArray for use as a function call argument."

	| arg |
	arg := ByteArray new: 8.
	1 to: 8 do: [:i | arg at: i put: (aFloat basicAt: 8 - i + 1)].
	^arg! !

!TestPGConnection methodsFor: 'private' stamp: 'yj 4/24/2003 23:01'!
copy: sql withStream: aStream

	| conn |
	conn := self newConnection.
	conn startup.
	conn copy: sql withStream: aStream.
	conn terminate.! !

!TestPGConnection methodsFor: 'private' stamp: 'yj 4/24/2003 23:01'!
execute: sql on: conn

	| result resultStream |

	resultStream := ReadWriteStream on: String new.
	result := conn execute: sql.
	result displayResultOn: resultStream.
	^ resultStream contents.
! !

!TestPGConnection methodsFor: 'private' stamp: 'yj 4/24/2003 23:01'!
executeAll: queries

	self executeAll: queries withDelayForMilliseconds: nil! !

!TestPGConnection methodsFor: 'private' stamp: 'yj 4/24/2003 23:01'!
executeAll: queries withDelayForMilliseconds: millisecondDelay

	| conn result |

	conn := self newConnection.
	conn startup.
	queries do: [:each |
		Transcript nextPutAll: 'QUERY: '; nextPutAll: each; cr; flush.
		result := conn execute: each.
		result displayResultOn: Transcript.
		Transcript flush.
		millisecondDelay isNil ifFalse: [
			Transcript nextPutAll: 'Delaying for ', millisecondDelay printString, ' ms...'; cr.
			(Delay forMilliseconds: millisecondDelay) wait.
			Transcript flush.
		].
	].
	conn terminate.! !

!TestPGConnection methodsFor: 'private' stamp: 'yj 11/10/2004 23:52'!
floatFromByteArray: aByteArray
	"Convert aByteArray to a Float."

	| word1 word2 aFloat |

	word1 := (aByteArray at: 1) bitShift: 24.
	word1 := word1 bitOr: ((aByteArray at: 2) bitShift: 16).
	word1 := word1 bitOr: ((aByteArray at: 3) bitShift: 8).
	word1 := word1 bitOr: ((aByteArray at: 4) bitShift: 0).
	word2 := (aByteArray at: 5) bitShift: 24.
	word2 := word2 bitOr: ((aByteArray at: 6) bitShift: 16).
	word2 := word2 bitOr: ((aByteArray at: 7) bitShift: 8).
	word2 := word2 bitOr: ((aByteArray at: 8) bitShift: 0).

	aFloat := 0.0.
	aFloat basicAt: 1 put: word1.
	aFloat basicAt: 2 put: word2.
	^aFloat! !

!TestPGConnection methodsFor: 'private' stamp: 'yj 2/9/2005 21:59'!
floatFromByteArrayVW: aByteArray
	"Convert aByteArray to a Float."

	| aFloat |
	aFloat := ByteArray new: 8.
	1 to: 8 do: [:i | aFloat at: 8 - i + 1 put: (aByteArray at: i)].
	aFloat changeClassTo: Double.
	^aFloat! !

!TestPGConnection methodsFor: 'private' stamp: 'yj 4/24/2003 23:01'!
functionCall: oid arguments: arguments

	| conn result |
	conn := self newConnection.
	conn startup.
	result := conn functionCall: oid arguments: arguments.
	conn terminate.
	^ result
! !

!TestPGConnection methodsFor: 'private' stamp: 'yj 4/24/2003 23:01'!
newConnection

	| conn |

	conn := PGConnection new.
	(useConnectionDefaults isNil or: [useConnectionDefaults not])
		ifTrue: [ conn connectionArgs: PGConnection buildDefaultConnectionArgs ]
		ifFalse: [ PGConnection defaultConnectionArgs: nil. conn connectionArgs: nil ].
	(notificationSubscriberCount notNil and: [notificationSubscriberCount > 0 ])
		ifTrue: [
			1 to: notificationSubscriberCount do: [:i |
				conn addNotificationSubscriber: PGNotificationSubscriber new]
		].
	^ conn
! !

!TestPGConnection methodsFor: 'private' stamp: 'yj 4/24/2003 23:01'!
tearDown

	PGConnection defaultConnectionArgs: nil.
! !

!TestPGConnection methodsFor: 'tests' stamp: 'yj 4/24/2003 23:01'!
createTestCopyInOutTable

	self executeAll: #(
			'CREATE TABLE TestCopyInOutTable (
				id integer,
				name text
			)'
		).
! !

!TestPGConnection methodsFor: 'tests' stamp: 'yj 4/24/2003 23:01'!
createTestFieldConverterTable

	self executeAll: #(
'CREATE TABLE TestFieldConverterTable (
aBool1 boolean,
aBool2 boolean,
aChar char,
aChar1 char(1),
aChar2 char(2),
anInt2 int2,
anInt4 int4,
anInt8 int8,
aFloat4 float4,
aFloat8 float8,
aNumeric numeric,
aDate date,
aTime time,
aText text
)'
		).
! !

!TestPGConnection methodsFor: 'tests' stamp: 'yj 4/24/2003 23:01'!
createTestTable

	self executeAll: #(
			'CREATE TABLE products (
				product_no integer,
				name text,
				price numeric
			)'
		).
! !

!TestPGConnection methodsFor: 'tests' stamp: 'yj 4/24/2003 23:01'!
dropTestCopyInOutTable

	self executeAll: #(
			'DROP TABLE TestCopyInOutTable'
		).
! !

!TestPGConnection methodsFor: 'tests' stamp: 'yj 4/24/2003 23:01'!
dropTestFieldConverterTable

	self executeAll: #(
			'DROP TABLE TestFieldConverterTable'
		).
! !

!TestPGConnection methodsFor: 'tests' stamp: 'yj 4/24/2003 23:01'!
dropTestTable

	self executeAll: #(
			'DROP TABLE products'
		).
! !

!TestPGConnection methodsFor: 'tests' stamp: 'yj 4/24/2003 23:01'!
makeCopyInOutEos
	"Answer the COPY IN/OUT end of stream code."

	^ String with: $\ with: $.with: Character lf
! !

!TestPGConnection methodsFor: 'tests' stamp: 'yj 4/24/2003 23:01'!
makeCopyInOutLine: aCollection

	| ws |
	ws := WriteStream on: (String new: 512).
	aCollection withIndexDo: [:each :i |
		ws nextPutAll: each.
		i < aCollection size ifTrue: [ws tab]
	].
	ws nextPut: Character lf.
	^ ws contents.
! !

!TestPGConnection methodsFor: 'tests' stamp: 'yj 4/24/2003 23:01'!
oidAbs
	"oid 1395 is abs(float8)"
	^ 1395
! !

!TestPGConnection methodsFor: 'tests' stamp: 'yj 4/24/2003 23:01'!
oidSqrt
	"oid 1344 is sqrt(float8)"
	^ 1344
! !

!TestPGConnection methodsFor: 'tests' stamp: 'yj 4/24/2003 23:01'!
oidTimenow

	^ 250
! !

!TestPGConnection methodsFor: 'tests' stamp: 'yj 4/24/2003 23:01'!
testCancelRequest
	"Test: CancelRequest.

	Set the debug level of the postmaster daemon to 1 or greater.
	Capture the postmaster output in a log file.
	Examine the log file for a cancel request with a matching process id.

	Example, an init.d script containing:
		su -l postgres -s /bin/sh -c ""/usr/bin/pg_ctl  -D $PGDATA -p /usr/bin/postmaster -o '-i -d 1' start  > /var/log/postgresql/log 2>&1"" < /dev/null
	yields a line in the log:
		/usr/bin/postmaster: processCancelRequest: sending SIGINT to process 13142
	"

	| conn |

	conn := self newConnection.
	conn startup.
	conn cancelRequest.
	conn terminate.
! !

!TestPGConnection methodsFor: 'tests' stamp: 'yj 4/24/2003 23:01'!
testConnection
	"Test: connect and disconnect, without any queries."

	self executeAll: #().
! !

!TestPGConnection methodsFor: 'tests' stamp: 'yj 4/24/2003 23:01'!
testCopyIn1

	| ws conn result |
	ws := WriteStream on: String new.
	ws nextPutAll: self makeCopyInOutEos.

	self dropTestCopyInOutTable.
	self createTestCopyInOutTable.

	conn := self newConnection.
	conn startup.
	conn copy: 'copy TestCopyInOutTable from stdin' withStream: ws.
	result := conn execute: 'select * from TestCopyInOutTable'.
	conn terminate.

	self assert: result rows size = 0.
! !

!TestPGConnection methodsFor: 'tests' stamp: 'yj 4/24/2003 23:01'!
testCopyIn2

	| ws result conn |

	self dropTestCopyInOutTable.
	self createTestCopyInOutTable.

	ws := WriteStream on: String new.
	ws nextPutAll: (self makeCopyInOutLine: (Array with: '77' with: 'abcde')).
	ws nextPutAll: self makeCopyInOutEos.

	conn := self newConnection.
	conn startup.
	conn copy: 'copy TestCopyInOutTable from stdin' withStream: ws.
	result := conn execute: 'select * from TestCopyInOutTable'.
	conn terminate.
	self assert: result rows size = 1.
! !

!TestPGConnection methodsFor: 'tests' stamp: 'yj 4/24/2003 23:01'!
testCopyOut1

	| ws |
	self dropTestCopyInOutTable.
	self createTestCopyInOutTable.
	ws := WriteStream on: (String new: 512).
	self copy: 'copy TestCopyInOutTable to stdout' withStream: ws.
	"Transcript show: ws contents printString; cr."
	self assert: ws contents = (String with: $\ with: $. with: Character lf).
! !

!TestPGConnection methodsFor: 'tests' stamp: 'yj 4/24/2003 23:01'!
testCopyOut2

	| ws rs |

	ws := WriteStream on: String new.
	ws nextPutAll: (self makeCopyInOutLine: (Array with: '77' with: 'abcde')).
	ws nextPutAll: self makeCopyInOutEos.

	self dropTestCopyInOutTable.
	self createTestCopyInOutTable.
	self executeAll: #('insert into TestCopyInOutTable values(77,''abcde'')').

	rs := WriteStream on: (String new: 512).
	self copy: 'copy TestCopyInOutTable to stdout' withStream: rs.

	self assert: rs contents = ws contents.
! !

!TestPGConnection methodsFor: 'tests' stamp: 'yj 4/24/2003 23:01'!
testCopyOut3

	| ws rs |

	ws := WriteStream on: String new.
	ws nextPutAll: (self makeCopyInOutLine: (Array with: '77' with: 'abcde')).
	ws nextPutAll: (self makeCopyInOutLine: (Array with: '88' with: 'vwxyz')).
	ws nextPutAll: self makeCopyInOutEos.

	self dropTestCopyInOutTable.
	self createTestCopyInOutTable.
	self executeAll: #('insert into TestCopyInOutTable values(77,''abcde'')').
	self executeAll: #('insert into TestCopyInOutTable values(88,''vwxyz'')').

	rs := WriteStream on: (String new: 512).
	self copy: 'copy TestCopyInOutTable to stdout' withStream: rs.

	self assert: rs contents = ws contents.
! !

!TestPGConnection methodsFor: 'tests' stamp: 'yj 4/24/2003 23:01'!
testExecute1

	self executeAll: #(
			'select timenow()'
			'select abs(-1)'
		).
! !

!TestPGConnection methodsFor: 'tests' stamp: 'yj 4/24/2003 23:01'!
testExecute2

	self executeAll: #(
			'select timenow(); select abs(-1)'
		).
! !

!TestPGConnection methodsFor: 'tests' stamp: 'yj 4/24/2003 23:01'!
testExecuteUsingConnectionDefaults

	useConnectionDefaults := true.
	self executeAll: #(
			'select timenow()'
			'select abs(-1)'
		).
! !

!TestPGConnection methodsFor: 'tests' stamp: 'yj 4/24/2003 23:01'!
testFieldConverter
	"Test: two different connections can have a different field converter for a given typeOid.

	This capability would be useful when using one image to connect to two different databases,
	where the same (custom) typeOid is defined differently in each database.
	"

	| conn1 result1 conn2 result2 newConverter |

	self dropTestTable.
	self createTestTable.

	conn1 := self newConnection.
	conn2 := self newConnection.
	conn1 startup.
	conn2 startup.

	result1 := conn1 execute: 'INSERT INTO products VALUES (1);'.
	result1 := conn1 execute: 'select * from products'.

	newConverter := [:value | value].
	conn2 fieldConverterAt: 20 put: newConverter.
	conn2 fieldConverterAt: 21 put: newConverter.
	conn2 fieldConverterAt: 23 put: newConverter.
	result2 := conn2 execute: 'select * from products'.

	conn1 terminate.
	conn2 terminate.

	self assert: result1 rows size = 1.
	self assert: result1 rows first data first = 1.

	self assert: result2 rows size = 1.
	self assert: result2 rows first data first = '1'.
! !

!TestPGConnection methodsFor: 'tests' stamp: 'yj 2/1/2006 11:37'!
testFieldConverter2

	| conn result data |

	self dropTestFieldConverterTable.
	self createTestFieldConverterTable.

	conn := self newConnection.
	conn startup.
	result := conn execute:
'INSERT INTO TestFieldConverterTable VALUES (TRUE,FALSE,''A'',''B'',''CD'',77,88,99,11.11,22.22,33.33,''2001-01-01'',''04:05:06'',''abcd'');'.
	result := conn execute: 'select * from TestFieldConverterTable'.
	conn terminate.

	self assert: result rows size = 1.
	data := result rows first data.
	"result rows first inspect."
	self assert: (data at: 1).
	self assert: (data at: 2) not.
	self assert: (data at: 3) = 'A'.
	self assert: (data at: 4) = 'B'.
	self assert: (data at: 5) = 'CD'.
	self assert: (data at: 6) = 77.
	self assert: (data at: 7) = 88.
	self assert: (data at: 8) = 99.
	self assert: ((data at: 9) - 11.11) abs < 0.0001.
	self assert: ((data at: 10) - 22.22) abs < 0.0001.
	self assert: ((data at: 11) - 33.33) abs < 0.0001.
	"self assert: (data at: 12) = (DateAndTime year: 2001 month: 1 day: 1 hour: 0 minute: 0 second: 0)."
	self assert: (data at: 12) = (Date newDay: 1 month: 1 year: 2001).
	self assert: (data at: 13) = (Time fromSeconds: (4*60*60) + (5*60) + 6).
	self assert: (data at: 14) = 'abcd'.
! !

!TestPGConnection methodsFor: 'tests' stamp: 'yj 2/1/2006 11:37'!
testFieldConverter3

	| conn result d |

	self dropTestFieldConverterTable.
	self createTestFieldConverterTable.

	conn := self newConnection.
	conn startup.
	result := conn execute:
'INSERT INTO TestFieldConverterTable VALUES (TRUE,FALSE,''A'',''B'',''CD'',77,88,99,11.11,22.22,33.33,''2001-01-01'',''04:05:06'',''abcd'');'.
	result := conn execute: 'select * from TestFieldConverterTable'.
	conn terminate.

	self assert: result rows size = 1.
	d := result rows first dataKeyedByFieldName.
	"result rows first inspect."
	self assert: (d at: 'aBool1' asLowercase).
	self assert: (d at: 'aBool2' asLowercase) not.
	self assert: (d at: 'aChar' asLowercase) = 'A'.
	self assert: (d at: 'aChar1' asLowercase) = 'B'.
	self assert: (d at: 'aChar2' asLowercase) = 'CD'.
	self assert: (d at: 'anInt2' asLowercase) = 77.
	self assert: (d at: 'anInt4' asLowercase) = 88.
	self assert: (d at: 'anInt8' asLowercase) = 99.
	self assert: ((d at: 'aFloat4' asLowercase) - 11.11) abs < 0.0001.
	self assert: ((d at: 'aFloat8' asLowercase) - 22.22) abs < 0.0001.
	self assert: ((d at: 'aNumeric' asLowercase) - 33.33) abs < 0.0001.
	"self assert: (d at: 'aDate' asLowercase) = (DateAndTime year: 2001 month: 1 day: 1 hour: 0 minute: 0 second: 0)."
	self assert: (d at: 'aDate' asLowercase) = (Date newDay: 1 month: 1 year: 2001).
	self assert: (d at: 'aTime' asLowercase) = (Time fromSeconds: (4*60*60) + (5*60) + 6).
	self assert: (d at: 'aText' asLowercase) = 'abcd'.
! !

!TestPGConnection methodsFor: 'tests' stamp: 'yj 4/24/2003 23:01'!
testFunctionCall
	"Test: make several function calls before terminating."

	| conn result arg |
	arg := self asFloat8Arg: 1.0.
	conn := self newConnection.
	conn startup.
	result := conn functionCall: self oidTimenow arguments: OrderedCollection new.
	result := conn functionCall: self oidAbs arguments: (OrderedCollection with: arg).
	result := conn functionCall: self oidSqrt arguments: (OrderedCollection with: arg).
	conn terminate.
	^ result
! !

!TestPGConnection methodsFor: 'tests' stamp: 'yj 4/24/2003 23:01'!
testFunctionCall1

	| result |
	result := self functionCall: self oidTimenow arguments: OrderedCollection new.
	self assert: result functionResult notNil.
! !

!TestPGConnection methodsFor: 'tests' stamp: 'yj 11/10/2004 23:52'!
testFunctionCall2

	| arg result |
	arg := self asFloat8Arg: -1.0.
	result :=  self functionCall: self oidAbs arguments: (OrderedCollection with: arg).
	self assert: result functionResult notNil.
	self assert: (self floatFromByteArray: result functionResult result) = 1.0.
! !

!TestPGConnection methodsFor: 'tests' stamp: 'yj 11/10/2004 23:54'!
testFunctionCall3

	| arg result |
	arg := self asFloat8Arg: 1.0.
	result := self functionCall: self oidSqrt arguments: (OrderedCollection with: arg).
	self assert: result functionResult notNil.
	self assert: (self floatFromByteArray: result functionResult result) = 1.0.
! !

!TestPGConnection methodsFor: 'tests' stamp: 'yj 4/24/2003 23:01'!
testNotify1

	notificationSubscriberCount := 1.

	[
		self executeAll: #(
			'notify pgtest' 'notify pgtest' 'notify pgtest' 'notify pgtest' 'notify pgtest'
			'notify pgtest' 'notify pgtest' 'notify pgtest' 'notify pgtest' 'notify pgtest'
		) withDelayForMilliseconds: 1000
	] fork.

	self executeAll: #(
		'listen pgtest'
		'select timenow()'
		'select timenow()'
	) withDelayForMilliseconds: 5000
! !

!TestPGConnection methodsFor: 'tests' stamp: 'yj 4/24/2003 23:01'!
testNotify2
	"Test: a NoticeResponse will be sent because there is an extra field on the input line."

	| ws conn |

	notificationSubscriberCount := 2.

	self dropTestTable.
	self createTestTable.

	ws := WriteStream on: String new.
	ws nextPutAll: (self makeCopyInOutLine: (Array with: '77' with: 'abcde' with: '123.456' with: '999.999')).
	ws nextPutAll: self makeCopyInOutEos.

	conn := self newConnection.
	conn startup.
	conn copy: 'copy products from stdin' withStream: ws.
	conn terminate.
! !

!TestPGConnection methodsFor: 'tests' stamp: 'yj 4/24/2003 23:01'!
testResultSet1

	| conn result |

	self dropTestTable.
	self createTestTable.

	conn := self newConnection.
	conn startup.
	result := conn execute: 'insert into products values(77,''abcde'',123.456)'.
	result := conn execute: 'select * from products'.
	conn terminate.

	self assert: result rows size = 1.
! !

!TestPGConnection methodsFor: 'tests' stamp: 'yj 4/24/2003 23:01'!
testResultSet2

	| conn result rs1 rs2 |

	self dropTestTable.
	self createTestTable.

	conn := self newConnection.
	conn startup.
	result := conn execute: 'insert into products values(49,''abcde'',123.456)'.
	result := conn execute: 'insert into products values(50,''abcde'',123.456)'.
	result := conn execute: 'insert into products values(51,''abcde'',123.456)'.
	result := conn execute: 'insert into products values(52,''abcde'',123.456)'.
	result := conn execute: 'select * from products; select * from products where product_no > 50'.
	conn terminate.

	rs1 := result resultSets at: 1.
	self assert: rs1 rows size = 4.

	rs2 := result resultSets at: 2.
	self assert: rs2 rows size = 2.
! !

!TestPGConnection methodsFor: 'postgres test suite' stamp: 'yj 4/24/2003 23:01'!
regress: testName

	| inStream conn outStream line pos result sql |

	Transcript show: testName, '--starting test'; cr.
	conn := self newConnection.
	conn startup.

	inStream := FileStream readOnlyFileNamed: 'u:\lib\pgsql\test\regress\sql\', testName, '.sql'.
	outStream := FileStream newFileNamed: testName, '.out'.
	sql := ''.
	[inStream atEnd] whileFalse: [
		line := inStream upTo: Character lf.
		(line beginsWith: '--')
			ifTrue: [outStream nextPutAll: line; cr].
		(line size > 0 and: [(line beginsWith: '--') not]) ifTrue: [
			pos := line findString: '\g'. "\g is psql execute command"
			pos > 0 ifTrue: [line := line copyFrom: 1 to: pos - 1].
			sql := sql, line, String cr.
			(line endsWith: ';') ifTrue: [
				result := conn execute: sql.
				Transcript show: sql; flush.
				outStream nextPutAll: sql.
				result displayResultOn: outStream.
				sql := ''.
			].
		].
	].
	inStream close.
	outStream close.

	conn terminate.
	Transcript show: testName, '--test completed'; cr.
! !

!TestPGConnection methodsFor: 'postgres test suite' stamp: 'yj 4/24/2003 23:01'!
regressionTestNames

	^#(
		#('boolean' 'char' 'name' 'varchar' 'text' 'int2' 'int4' 'int8' 'oid' 'float4' 'float8' 'numeric')
		'strings'
		'numerology'
		#('point' 'lseg' 'box' 'path' 'polygon' 'circle' 'interval' 'timestamp' 'reltime' 'tinterval' 'inet' 'comments' 'oidjoins' 'type_sanity' 'opr_sanity')
		'abstime'
		'geometry'
		'horology'
		'create_function_1'
		'create_type'
		'create_table'
		'create_function_2'
		'copy'
		#('constraints' 'triggers' 'create_misc' 'create_aggregate' 'create_operator' 'create_index')
		'create_view'
		'sanity_check'
		'errors'
		'select'
		#('select_info' 'select_distinct' 'select_distinct_on' 'select_implicit' 'select_having' 'subselect' 'union' 'case' 'join' 'aggregates' 'transactions' 'random' 'portals' 'arrays' 'btree_index' 'hash_index')
		'misc'
		#('select_views' 'alter_table' 'portals_p2' 'rules' 'foreign_key')
		#('limit' 'plpgsql' 'temp')
	)! !

!TestPGConnection methodsFor: 'postgres test suite' stamp: 'yj 4/24/2003 23:01'!
runRegressionTests
	"TestPGConnection new runRegressionTests"

	self regress: 'drop'.
	(self regressionTestNames at: 1) do: [:each | self regress: each].
	"self regressionTestNames do: [:test |
		test isString
			ifTrue: [self regress: test]
			ifFalse: [test do: [:each | self regress: each]]
	]."
! !
PGPacket initialize!
