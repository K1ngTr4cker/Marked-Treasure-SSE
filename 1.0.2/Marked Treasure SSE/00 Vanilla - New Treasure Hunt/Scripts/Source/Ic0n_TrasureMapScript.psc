scriptname Ic0n_TrasureMapScript extends Objectreference

Quest property _QuestHandler auto
Int property _Index auto

Auto State Waiting
	Event onRead()
		_QuestHandler.SetObjectiveDisplayed(_Index, true, false)
		GoToState("Done")
	endEvent
endState

State Done		
	Event onRead()
	endEvent
endState
