import sleep.interfaces.Loadable;
import sleep.runtime.ScriptInstance;

public class ThingsToDo implements Loadable
{
    public void scriptLoaded(ScriptInstance script)
    {
        script.addWarningWatcher(new Watchdog());
        Hashtable env = script.getScriptEnvironment().getEnvironment();
        env.put("&foo", new FooFunction());
    }
}