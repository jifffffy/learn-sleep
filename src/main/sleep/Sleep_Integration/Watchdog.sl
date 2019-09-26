import sleep.error.RuntimeWarningWatcher;
import sleep.error.ScriptWarning;

public class Watchdog implements RuntimeWarningWatcher
{
    public void processScriptWarning(ScriptWarning warning)
{
System.out.println(warning);
}
}