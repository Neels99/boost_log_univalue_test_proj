from twisted.internet import reactor, defer
from twisted.internet.defer import inlineCallbacks, returnValue

res = 0

def getDummyData(inputData):
    """
    This function is a dummy which simulates a delayed result and
    returns a Deferred which will fire with that result. Don't try too
    hard to understand this.
    """
    print('getDummyData called')
    deferred = defer.Deferred()
    # simulate a delayed result by asking the reactor to fire the
    # Deferred in 2 seconds time with the result inputData * 3
    reactor.callLater(2, deferred.callback, inputData * 3)
    return deferred

def cbPrintData(result):
    """
    Data handling function to be added as a callback: handles the
    data by printing the result
    """
    print('Result received: {}'.format(result))
    global res
    res = 1


def callWhenRun():
    deferred = getDummyData(3)
    deferred.addCallback(cbPrintData)

@defer.inlineCallbacks
def callWhenRun2():
    responseBody = yield getDummyData(3)
    returnValue(cbPrintData(responseBody))

@defer.inlineCallbacks
def MAIN():
    print("start")
    yield callWhenRun2()
    print("check")


# manually set up the end of the process by asking the reactor to
# stop itself in 4 seconds time
reactor.callLater(4, reactor.stop)
# start up the Twisted reactor (event loop handler) manually
print('Starting the reactor')
# while not res:
#     pass
print(res)
#reactor.callWhenRunning(callWhenRun2)
reactor.callWhenRunning(MAIN)
reactor.run()
print(res)