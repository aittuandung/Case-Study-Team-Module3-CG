package Filter;

import connection.Connect_MySQL;

import java.util.logging.Filter;
import java.util.logging.LogRecord;

public class FilterLogin implements Filter {
    Connect_MySQL connect_mySQL=new Connect_MySQL();

    @Override
    public boolean isLoggable(LogRecord record) {
        return false;
    }
}
