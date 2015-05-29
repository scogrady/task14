import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;


public class Test {

	public static void main(String[] args) {
		Date date = Calendar.getInstance().getTime();
	    SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd.hhmmss");
	    System.out.println(sdf.format(date));

	}


}
