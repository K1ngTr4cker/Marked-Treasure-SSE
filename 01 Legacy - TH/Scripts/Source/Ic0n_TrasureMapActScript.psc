scriptname Ic0n_TrasureMapActScript extends Objectreference

Quest property _QuestHandler auto
Int property ObjectIndex auto

objectreference property _Frame auto

Auto State Waiting
	Event OnTriggerEnter(ObjectReference akTriggerRef)
		if _QuestHandler.IsObjectiveDisplayed(ObjectIndex)
			_QuestHandler.SetObjectiveDisplayed(ObjectIndex, false, false)	
			if _Frame && _Frame.IsDisabled()
				_Frame.Enable()
			endif
		endif
	EndEvent
endState
