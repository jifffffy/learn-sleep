import sleep.io.*;
import sleep.console.ConsoleProxy;

public class MyConsoleProxy implements ConsoleProxy
{
    protected BufferedRead in;

    public MyConsoleProxy()
    {
        in = new BufferedReader(new InputStreamReader(System.in));
    }

    public void consolePrint(String message)
    {
        System.out.print(message);
    }

    public void consolePrintln(Object message)
    {
        System.out.println(message.toString());
    }

    public String consoleReadln()
    {
        try
        {
            return in.readLine();
        }
        catch (IOException ex)
        {
            ex.printStackTrace();
            return null;
        }
    }
}



