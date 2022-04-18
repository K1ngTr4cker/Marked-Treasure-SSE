scriptname Ic0n_TrasureMapActScriptCont extends Objectreference

Quest property _QuestHandler auto
Int property ObjectIndex auto

objectreference property _Frame auto

Auto State Waiting
	Event OnActivate(ObjectReference akActionRef)
		if _QuestHandler.IsObjectiveDisplayed(ObjectIndex)
			_QuestHandler.SetObjectiveDisplayed(ObjectIndex, false, false)	
			if _Frame && _Frame.IsDisabled()
				_Frame.Enable()
			endif			
		endif
	EndEvent
endState
