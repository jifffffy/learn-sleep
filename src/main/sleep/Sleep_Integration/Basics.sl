import sleep.runtime.ScriptInstance;
import sleep.runtime.ScriptLoader;
import sleep.error.YourCodeSucksException;
import sleep.runtime.ScriptEnvironment;

ScriptLoader loader = new ScriptLoader();

Hashtable environment = new Hashtable();

loader.addSpecificBridge(new ThingsTodDo());

ConsoleImplementation console = new ConsoleImplementation(environment, variables, loader);
console.setProxy(new MyConsoleProxy());

# starts the console
 console.rppl();

# Register new predicates and operators with the sleep.parser.ParserConfig class
# before loading scripts.
ParserConfig.addKeyword("predicate");

try
{
    ScriptInstance script = loader.loadScript("script.sl", environment);

    script.addWarningWatcher(new Watchdog());

    ScriptVariables variables = script.getScriptVariables();
    variables.putScalar("$foo", SleepUtils.getScalar("foo!"));

    ScriptVariables variableManager = new ScriptVariables(new MyVariable());
    script.setScriptVariables(variableManager);

    script.runScript()
}
catch (YourCodeSucksException syntaxErrors)
{
    System.out.println(syntaxErrors.formatErrors());
}
catch (IOException ioError)
{

}


