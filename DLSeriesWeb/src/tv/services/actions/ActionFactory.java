package tv.services.actions;

public class ActionFactory {

	public static Action getAction(String cde) {
		Action action = null;
		if(cde == null || cde.isEmpty())
			cde = "home";
		switch (cde) {
		case "home":
			action = new ActionHome();
			break;
		case "all":
			action = new ActionGetAll();
			break;
		case "byDay":
			action = new ActionGetSeriesByDay();
			break;
		case "byName":
			action = new ActionGetSeriesByName();
			break;
		case "current":
			action = new ActionGetCurrent();
			break;
		case "currentByDay":
			action = new ActionGetCurrentByDay();
			break;
		case "add":
			action = new ActionAddSerie();
			break;
		case "cud":
			action = new ActionCUD();
			break;
		default:
			break;
		}
		return action;
	}

	
	
}
