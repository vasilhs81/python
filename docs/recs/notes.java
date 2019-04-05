//status bar component
for (Map.Entry<String, OrderItemHolder> entry : orderItemMap.entrySet()) {
public class StatusBar extends JLabel {
    
    /** Creates a new instance of StatusBar */
    public StatusBar() {
        super();
        super.setPreferredSize(new Dimension(100, 16));
        setMessage("Ready");
    }
    
    public void setMessage(String message) {
        setText(" "+message);        
    }        
}

//You can use this status bar in your programs as follows:
statusBar = new StatusBar();
getContentPane().add(statusBar, java.awt.BorderLayout.SOUTH);


''''''''''''''''''''''''''''''''''''''''''''''''
//initialize new table component
jTable0.setModel(new DefaultTableModel(new Object[][] { { "0x0", "0x1", }, { "1x0", "1x1", }, }, new String[] { "Title 0", "Title 1", }) {
				private static final long serialVersionUID = 1L;
				Class<?>[] types = new Class<?>[] { Object.class, Object.class, };
	
				public Class<?> getColumnClass(int columnIndex) {
					return types[columnIndex];
				}
			});

'''''''''''''''''''''''''''''''''''''''''''''
new Thread() {public void run() {}}.start();
'''''''''''''''''''''''''''''''''''''''''
//how to make a runnable anonymous inner class
SwingUtilities.invokeLater(new Runnable() {
			@Override
			public void run() {
				GoliathGui frame = new GoliathGui();
				frame.setDefaultCloseOperation(GoliathGui.EXIT_ON_CLOSE);
				frame.setTitle("GoliathGui");
				frame.getContentPane().setPreferredSize(frame.getSize());
				frame.pack();
				frame.setLocationRelativeTo(null);
				frame.setVisible(true);
			}
		});

//initialize swing component		
		setDefaultCloseOperation(SaveDialog.DISPOSE_ON_CLOSE);
				setTitle("Save  Dialog");
				setAlwaysOnTop(true);
				setLocationRelativeTo(null);
				getContentPane().setPreferredSize(this.getSize());
				pack();
				setVisible(true);
				
			/////////////////////////////////////////
			
//make my own date format			
SimpleDateFormat sourceFormat = new SimpleDateFormat("yyyyMMdd");
    SimpleDateFormat targetFormat = new SimpleDateFormat("yyyy-MM-dd");
    String sourceDateStr = "20101012";
    try {
        Date sourceDate = sourceFormat.parse(sourceDateStr);

        String targetDateStr = targetFormat.format(sourceDate);

        System.out.println(targetDateStr);
    } catch (ParseException e) {
        // TODO Auto-generated catch block
        e.printStackTrace();
    }
//////////////////////////////////////////Jsoup
File input = new File("/tmp/input.html");
 Document doc = Jsoup.parse(input, "UTF-8", "http://example.com/");

Elements links = doc.select("a[href]"); // a with href
Elements pngs = doc.select("img[src$=.png]");
// img with src ending .png

Element masthead = doc.select("div.masthead").first();

and find all links and then get the detials using

String linkhref=links.attr("href");
//////////////
Document doc = Jsoup.connect("http://en.wikipedia.org/").get();
Elements newsHeadlines = doc.select("#mp-itn b a");

//////////////////////////////////////////////USE of regular expressions to parse html
// The HTML page as a String regex
String HTMLPage;
Pattern linkPattern = Pattern.compile("(<a[^>]+>.+?</a>)",  Pattern.CASE_INSENSITIVE|Pattern.DOTALL);
Matcher pageMatcher = linkPattern.matcher(HTMLPage);
ArrayList<String> links = new ArrayList<String>();
while(pageMatcher.find()){
    links.add(pageMatcher.group());
}
// links ArrayList now contains all links in the page as a HTML tag
// i.e. <a att1="val1" ...>Text inside tag</a>
////////or just..
Pattern linkPattern = Pattern.compile("<a[^>]+href=[\"']?([\"'>]+)[\"']?[^>]*>(.+?)</a>",  Pattern.CASE_INSENSITIVE|Pattern.DOTALL);
//And access the link part with .group(1) and the text part with .group(2)

///////////////////////Parse html files using core java api..
import java.io.*;
import java.util.*;
import javax.swing.text.*;
import javax.swing.text.html.*;
import javax.swing.text.html.parser.*;

public class HtmlParseDemo {
   public static void main(String [] args) throws Exception {

       String html =
           "<a href=\"http://stackoverflow.com\" >Take me to StackOverflow</a> " +
           "<!--                                                               " +
           "<a href=\"http://ignoreme.com\" >...</a>                           " +
           "-->                                                                " +
           "<a href=\"http://www.google.com\" >Take me to Google</a>           " +
           "<a>NOOOoooo!</a>                                                   ";

       Reader reader = new StringReader(html);
       HTMLEditorKit.Parser parser = new ParserDelegator();
       final List<String> links = new ArrayList<String>();

       parser.parse(reader, new HTMLEditorKit.ParserCallback(){
           public void handleStartTag(HTML.Tag t, MutableAttributeSet a, int pos) {
               if(t == HTML.Tag.A) {
                   Object link = a.getAttribute(HTML.Attribute.HREF);
                   if(link != null) {
                       links.add(String.valueOf(link));
                   }
               }
           }
       }, true);

       reader.close();
       System.out.println(links);
   }
}
////how to find the minimum-maximum elements of a list
Object obj = Collections.min(arrayList);
/////////////regex replace backreferrence
///////////////////////////////////////
System.out.println(
    "left-right".replaceAll("(.*)-(.*)", "\\2-\\1") // WRONG!!!
); // prints "2-1"

System.out.println(
    "left-right".replaceAll("(.*)-(.*)", "$2-$1")   // CORRECT!
); // prints "right-left"

System.out.println(
    "You want million dollar?!?".replaceAll("(\\w*) dollar", "US\\$ $1")
); // prints "You want US$ million?!?"

System.out.println(
    "You want million dollar?!?".replaceAll("(\\w*) dollar", "US$ \\1")
); // throws IllegalArgumentException: Illegal group reference
/////////////////////////////////////how to connect jdbc:
java -cp .;"C:/Develop/SQL connectors/mysql-connector-java-5.1.15/mysql-connector-java-5.1.15-bin.jar"WikipediaSynonymExtractor ../dewiktionary-20121115-pages-articles.xml >out.txt
/////////////map reverse order treemap:
Map reverseOrderedMap = new TreeMap(Collections.reverseOrder());
/////////////variable array
public static void varargsMethod(String... strs) 
////////how to make jar file..
jar cvf winzipaes.jar  -C winzipaes/src/ .
///////////////////////////////////
/*
To support both, beans that will be session-scoped 
should implement the java.io.Serializable interface
– There are no methods in this interface; it is just a flag:
public class MyBean implements Serializable
...
}
– Builtin classes like String and ArrayList are already Serializable
*/////////////////////////////////////////
<f:view locale="fr">
<f:view locale="#{user.locale}" encoding="UTF-8" contentType="text/html">
//It provides you with several options for presenting your user with localized views of your application
///////////////////////////
initialize a list:
List<String> places = Arrays.asList("Buenos Aires", "CÃ³rdoba", "La Plata");
Collections.singletonList(apiKey)
///////////////how to read a text file..
BufferedReader br = new BufferedReader(new FileReader("test.xml"));
    
        StringBuilder sb = new StringBuilder();
        
        String line = br.readLine();

        while (line != null) {
            sb.append(line);
            sb.append('\n');
            line = br.readLine();
        }
        String everything = sb.toString();
    
        br.close();
//////////////////        
//initialize a table
private static final Order[] orderList = new Order[] {
new Order("A0001", "Intel CPU", 
				new BigDecimal("700.00"), 1),
		new Order("A0002", "Harddisk 10TB", 
				new BigDecimal("500.00"), 2),
		new Order("A0003", "Dell Laptop", 
				new BigDecimal("11600.00"), 8),
		new Order("A0004", "Samsung LCD", 
				new BigDecimal("5200.00"), 3),
		new Order("A0005", "A4Tech Mouse", 
				new BigDecimal("100.00"), 10)
				
//////////////////////////////////////readfile java
for (String line : Files.readAllLines(Paths.get("/path/to/file.txt"))) {
    // ...
}

//You can use String#split() to split a String in parts based on a regular expression.

for (String part : line.split("\\s+")) {
    // ...
}				


List<Integer> numbers = new ArrayList<>();
for (String line : Files.readAllLines(Paths.get("/path/to/file.txt"))) {
    for (String part : line.split("\\s+")) {
        Integer i = Integer.valueOf(part);
        numbers.add(i);
    }
}
//////////////////////////////////////////////
BufferedReader in = new BufferedReader(new FileReader("<Filename>"));
String line;
while((line = in.readLine()) != null)
{
    System.out.println(line);
}
in.close();
//////////////////////////////// Reading data from a server
public static void main (String[] args) {
import java.io.*;
import java.net.*;
public class SourceViewer2 {
if (args.length > 0) {
try {
// Open the URLConnection for reading
URL u = new URL(args[0]);
URLConnection uc = u.openConnection();
try (InputStream raw = uc.getInputStream()) { // autoclose
InputStream buffer = new BufferedInputStream(raw);
// chain the InputStream to a Reader
Reader reader = new InputStreamReader(buffer);
int c;
while ((c = reader.read()) != -1) {
System.out.print((char) c);
	}
}
} catch (MalformedURLException ex) {
System.err.println(args[0] + " is not a parseable URL");
} catch (IOException ex) {
System.err.println(ex);
}}}}

///////
Scanner keyboard = new Scanner(System.in);
System.out.println("enter an integer");
int myint = keyboard.nextInt();
/////////////////////////Jaxb
package jaxbndc;

import java.io.File;

import foo.AirShoppingRQ;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;
import javax.xml.bind.Unmarshaller;
import java.lang.reflect.*;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

public class JaxbNdc{

    
 public static void convertXmlToObject(){
        
         try {

             
		File file = new File("C:\\Dev\\work\\JaxbNdc\\AirShoppingRQ.xml");
		JAXBContext jaxbContext = JAXBContext.newInstance(AirShoppingRQ.class);

		Unmarshaller jaxbUnmarshaller = jaxbContext.createUnmarshaller();
		AirShoppingRQ o =(AirShoppingRQ) jaxbUnmarshaller.unmarshal(file);
                Class c=o.getClass();

                System.out.println("OK");

                Method[] m = c.getDeclaredMethods();
            //for (int i = 0; i < m.length; i++)
            //System.out.println(m[i].toString());
            System.out.println(o.getVersion());
            
            
                
                
	  } catch (JAXBException e) {
		e.printStackTrace();
	  }

	}
	
	public static void main(String[] args){
        //convertPersonToXml();
        //convertXmlToPerson();
        convertXmlToObject();
      
        
        
    }
    
    }

//////////////////////
 public static void convertXmlToObject() {

        try {

            File file = new File("C:\\Dev\\work\\JaxbNdc\\AirShoppingRQ.xml");
            JAXBContext jaxbContext = JAXBContext.newInstance(AirShoppingRQ.class);

            Unmarshaller jaxbUnmarshaller = jaxbContext.createUnmarshaller();
            AirShoppingRQ o = (AirShoppingRQ) jaxbUnmarshaller.unmarshal(file);
            Class c = o.getClass();

            System.out.println("OK");

            Method[] m = c.getDeclaredMethods();
            for (int i = 0; i < m.length; i++) {
                System.out.println(m[i].toString());
            }

            System.out.println("\n\n" + o.getVersion());

        } catch (JAXBException e) {
            e.printStackTrace();
        }

    }

///////////////////////
 /**
     * Help function to print all the fields of a Object (using reflection)
     *
     * @param o the object to print the info
     */
    private void printClassInfo(Object o) {

        StringBuilder result = new StringBuilder();
        String newLine = System.getProperty("line.separator");

        result.append(o.getClass().getName());
        result.append(" Object {");
        result.append(newLine);

        //determine fields declared in this class only (no fields of superclass)
        Field[] fields = o.getClass().getDeclaredFields();

        //print field names paired with their values
        for (Field field : fields) {
            result.append("  ");
            try {
                result.append(field.getName());
                result.append(": ");
                //requires access to private field:
                result.append(field.get(this));
            } catch (IllegalAccessException ex) {
                System.out.println(ex);
            }
            result.append(newLine);
        }
        result.append("}");

        System.out.println(result.toString());
    }
///////////////////Convert java to java using xslt:
import javax.xml.transform.*;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import java.io.File;
import java.io.IOException;
import java.net.URISyntaxException;

public class TestMain {
    public static void main(String[] args) throws IOException, URISyntaxException, TransformerException {
        TransformerFactory factory = TransformerFactory.newInstance();
        Source xslt = new StreamSource(new File("transform.xslt"));
        Transformer transformer = factory.newTransformer(xslt);

        Source text = new StreamSource(new File("input.xml"));
        transformer.transform(text, new StreamResult(new File("output.xml")));
    }
}
//////////////////////////////////    
//http://www.studytrails.com/java/xml/jaxp/java-api-for-xml-transformation.jsp
//xml rpc:
//http://www.tutorialspoint.com/xml-rpc/xml_rpc_examples.htm
//spring tutorial:
//http://www.tutorialspoint.com/spring/spring_hello_world_example.htm
///////////////////////////////////////filter file extension java
import java.io.File;
import java.io.FilenameFilter;

public class Filter {

    public File[] finder( String dirName){
    	File dir = new File(dirName);

    	return dir.listFiles(new FilenameFilter() { 
    	         public boolean accept(File dir, String filename)
    	              { return filename.endsWith(".txt"); }
    	} );

    }

}
/////////////////////Java 8
for (String segID : segList) {
// For each Segment
associationList.add(slg.getSegmentIDMappingsToSegmentServiceAssociations().get(segID));
}
//Vs..
segList.stream().forEach((segID) -> {
// For each Segment
associationList.add(slg.getSegmentIDMappingsToSegmentServiceAssociations().get(segID));
}); // EOF 2
///////////////////////////
Runnable oldRunner = new Runnable(){
    public void run(){
        System.out.println("I am running");
    }
};

Runnable java8Runner = () ->{
    System.out.println("I am running");
};
///////////////////////////
Comparator c = (a, b) -> Integer.compare(a.length(), b.length());
Comparator<Apple> byWeight =(Apple a1, Apple a2) -> a1.getWeight().compareTo(a2.getWeight());
Comparator.comparing((Person p)->p.firstName)
          .thenComparing(p->p.lastName)
          .thenComparingInt(p->p.age);
Comparator.comparing(Person::getFirstName)
          .thenComparing(Person::getLastName)
          .thenComparingInt(Person::getAge);

private final static Comparator<ScimUserDTO> userComparator = 
        Comparator.comparing(ScimUserDTO::getUserName)
        .thenComparing(ScimUserDTO::getEmail)
        .thenComparing(ScimUserDTO::getFname)
        .thenComparing(ScimUserDTO::getLname)
        .thenComparing(ScimUserDTO::getPhone)
        .thenComparing(ScimUserDTO::getTitle)
        .thenComparing(ScimUserDTO::getId)
        ;
    

/////////////
String abc= String.join(" ", "Java", "8");
/////////////
MathOperation addition = (int a, int b) -> a + b;  
MathOperation subtraction = (a, b) -> a - b;  
 MathOperation multiplication = (int a, int b) -> { return a * b; };  
  MathOperation division = (int a, int b) -> a / b;
  ;;;;;;;;;;;;;;;;;
  List names = new ArrayList();

  names.add("Mahesh");
 names.add("Suresh");
 names.add("Ramesh");
 names.add("Naresh");
 names.add("Kalpesh");
 names.forEach(System.out::println);
 ;;;;;;;;;;;;;;;;;;;;
 public interface vehicle {
     default void print(){
     System.out.println("I am a vehicle!");
     }
  }
;;;;;;;;;;;;;;;;;;;;;
 List<String>  myList = Arrays.asList("a1", "a2", "b1", "c2", "c1");

  myList
  .stream()
  .filter(s -> s.startsWith("c"))
  .map(String::toUpperCase)
  .sorted()
  .forEach(System.out::println);
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 public Optional<String> getOptionalNullString(){
 
   return(null);
 
 }
 /////////////////http://javasoftwaretechnology.blogspot.in/2015/11/whats-new-in-java-8.html
//////////////prepared statements
private PreparedStatement getOrdersByPaxLastName;
private PreparedStatement getLastCreatedOrderDateByPaxLastName;
//..........
ResultSet rs = session.execute(getLastCreatedOrderDateByPaxLastName.bind(lName));
for (Row r : rs) {
                    geoLatitudes.put(departAirport, r.getString("latitude"));
                    geoLongitudes.put(departAirport, r.getString("longitude"));
                }
//.......................................
 private void initStatements() {
         getOrdersByPaxLastName = session.prepare(
         "SELECT  orderid "
         + "FROM orderbypaxlastname "
         + "WHERE paxlastname = ? and yyyy=? and mm=? and dd=? and time=?");
         getOrdersByPaxLastNameSenderId = session.prepare(
         "SELECT  orderid "
         + "FROM orderbypaxlastname "
         + "WHERE paxlastname = ? and yyyy=? and mm=? and dd=? and time=? and senderid=?");
         getLastCreatedOrderDateByPaxLastName = session.prepare(
         "SELECT dd,mm,yyyy FROM lastcreatedorderdatebypaxlastname WHERE paxlastname=? ");

         }
//////////////////parse print dates:
public static void main(String[] args) throws ParseException {
    System.out.println(new SimpleDateFormat("MM/dd/yyyy").parse("08/16/2011"));
}

///////////////////
try {
                                                     DateFormat formatter = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss aaa");
                                                     Date departureDate = formatter.parse(flightDetails.get("Departure Date"));
                                                     order.setDepDate(new SimpleDateFormat("yyyy-MM-dd").format(departureDate));
                                                } catch (ParseException ex) {
                                                        ex.printStackTrace();
                                                }

/////////////////
   
    public static boolean isValidDate(String inDate,DateFormat dateFormat) {
    dateFormat.setLenient(false);
    try {
      dateFormat.parse(inDate);
    } catch (ParseException pe) {
      return false;
    }
    return true;
  }
  //////////////////
  
        public static OrderListDAO getInstance() {
                return OrderListDAOHolder.INSTANCE;
        }

        private static class OrderListDAOHolder {

                private static final OrderListDAO INSTANCE = new OrderListDAO();
        }
////saxon xslt transformation
http://blog.jdevelop.eu/?p=74        
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Convert xml string to node:
Element node =  DocumentBuilderFactory
    .newInstance()
    .newDocumentBuilder()
    .parse(new ByteArrayInputStream("<node>value</node>".getBytes()))
    .getDocumentElement();
////traverse hashmamp
 
 ///how to know if an array contains a value
 Arrays.asList(yourArray).contains(yourValue)
 
 (NodeList) newPayment.getAttribute(QueryPayment.PAYMENT_PAYER_CONTACT_LIST).getValue());
 /////////////////enums
    public enum TestSenario{
                SERVICE_ADD("/messages/ItinReshop/service/07 ItinReshopRQ_Add_ServiceRQ.xml"),
                SERVICE_DELETE("/messages/ItinReshop/service/07 ItinReshopRQ - Delete_Service.xml");
                private String path;
                private TestSenario(String path){
                        this.path=path;
                }
        }
///////////////////////get current timestamp
import java.sql.Timestamp;
java.util.Date date= new java.util.Date();
	 System.out.println(new Timestamp(date.getTime()));
	         
 ////String format for java
 //https://docs.oracle.com/javase/tutorial/java/data/numberformat.html
 
 airDemand.getDocumentElement().getElementsByTagName("TicketDocument").item(0).
getAttributes().getNamedItem("InConnectionDocNbr").setNodeValue(orderItem.getBookingReference());
                                                        
                                                        /////XPath evaluation
DocumentBuilder b = DocumentBuilderFactory.newInstance().newDocumentBuilder();
org.w3c.dom.Document doc = b.parse(new FileInputStream("page.html"));

//Evaluate XPath against Document itself
XPath xPath = XPathFactory.newInstance().newXPath();
NodeList nodes = (NodeList)xPath.evaluate("/html/body/p/div[3]/a",
        doc.getDocumentElement(), XPathConstants.NODESET);
for (int i = 0; i < nodes.getLength(); ++i) {
    Element e = (Element) nodes.item(i);
}
/////////////////////////                                                        
public final static boolean BYPASS_SITA = System.getProperty("nositaorderchange")!=null;
java -DsysProp1=sp1 -DsysProp2=sp2 test.ArgsTest pro1 pro2 pro3
/////////////////////////////////////////
public TransformationHandler() {
		File dir = new File(TRANSFORM_TEMPLATE_DIRECTORY);
		dir.mkdirs();
		schemaValidators = new HashMap<>();
		String local_schema_path = System.getProperty("user.home") + File.separator + ".jrt" + File.separator + "ndc"
				+ File.separator + "schemas" + File.separator;

		File[] directories = new File(local_schema_path).listFiles(File::isDirectory);

		for (File directory : directories) {
			SchemaValidatorPooled schemaValidator = new SchemaValidatorPooled(directory.getPath() + File.separator);
			schemaValidators.put(directory.getName(), schemaValidator);
		}
		// QueryEngine queryEngine = new QueryEngine();
		/*
		 * IMPORTANT NOTE: you must define the service provider in the META-INF
		 * folder in order make the newInstance method return the custom
		 * TransformerFactoryCached
		 */
		myTransformerFactory = (TransformerFactoryCached) TransformerFactory.newInstance();
	}
///////////////////////////////////////////////	
remove and iterate at the same time:
Set<Integer> set = new HashSet<Integer>();
Collection<Integer> removeCandidates = new LinkedList<Integer>();

for(int i = 0; i < 10; i++)
    set.add(i);

for(Integer element : set)
    if(element % 2 == 0)
    	removeCandidates.add(element);

set.removeAll(removeCandidates);
////////////////////
private final XPath xPath = XPathFactory.newInstance().newXPath();
//////////set union , intersection
if (orders == null) {
                                orders = new HashSet<>();
                                orders.addAll(ord);
                        } else {
                                if (FILTER_OPER.equals("AND")) {
                                        orders.retainAll(ord);
                                } else {
                                        orders.addAll(ord);
                                }
                        }
///////////////////////////////////////
//singleton
public final class StatisticsCommons {
private static StatisticsCommons instance = null;

private final String update_stats_when_they_travel_with = " UPDATE stats_when_they_travel_with SET co_travelers=co_travelers+? "
            + "WHERE passenger_id=? and timestamp = ? and origin=? and destination=?; ";
 public void init(CassandraConnection cassandraConnection) {
        this.cassandraConnection = cassandraConnection;
        manager = new MappingManager(cassandraConnection.getSession());
        pimPassengerAccessor = manager.createAccessor(PimPassengerAccessor.class);
    }

    public CassandraConnection getCassandraConnection() {
        if (cassandraConnection == null) {
            //TODO: create an appropriate exception
            throw new NullPointerException();
        }
        return cassandraConnection;
    }

public PreparedStatement get_update_stats_when_they_travel_with_statement() {

        if (update_stats_when_they_travel_with_statemant == null) {
            update_stats_when_they_travel_with_statemant = cassandraConnection.getSession()
                    .prepare(update_stats_when_they_travel_with);
        }

        return update_stats_when_they_travel_with_statemant;
    }
 public StatisticsAccessor getStatisticsAccessor() {
        return statisticAccessor;
    }
//.........    
}

public interface StatisticsDao {
void set_when_they_travel(List<Integer> co_passenger_id, int passenger_id, Date date, String origin, String destination);
    void set_when_they_travel(int co_passenger_id, int passenger_id, Date timestamp, String origin, String destination);
//..............    
}


public class StatisticsDaoImpl implements StatisticsDao {
	@Override
    public void set_when_they_travel(List<Integer> co_passenger_id, int passenger_id, Date timestamp, String origin, String destination) {
        statisticsCommons.getCassandraConnection().executeQuery(
                   statisticsCommons.get_update_stats_when_they_travel_with_statement().bind(co_passenger_id, passenger_id, timestamp, origin, destination)
        );
    }
   
 
    @Override
    public void set_when_they_travel(int co_passenger_id, int passenger_id, Date timestamp, String origin, String destination) {
        statisticsCommons.getCassandraConnection().executeQuery(
                   statisticsCommons.get_update_stats_when_they_travel_with_statement().bind(co_passenger_id, passenger_id, timestamp, origin, destination)
        );
    }
   
////////////////................
}

/////////////////////////////////////////
//Timestamp from string:
Timestamp timestamp = Timestamp.valueOf("2007-09-23 10:10:10.0");                     
//////////////// batch statement;
batchStatement.add(statisticsCommons.get_update_stats_what_ancillaries_are_ordered_statement().bind(passenger_id, ancillary_id));
statisticsCommons.getCassandraConnection().executeQuery(
////////////////////////////////////////
ReadWriteLock readWriteLock = new ReentrantReadWriteLock();


readWriteLock.readLock().lock();

    // multiple readers can enter this section
    // if not locked for writing, and not writers waiting
    // to lock for writing.

readWriteLock.readLock().unlock();


readWriteLock.writeLock().lock();

    // only one writer can enter this section,
    // and only if no threads are currently reading.

readWriteLock.writeLock().unlock();
//////////////////////////////////////////////Email validator with commons
* pom.xml:
<dependency>
            <groupId>commons-validator</groupId>
            <artifactId>commons-validator</artifactId>
            <version>1.3.1</version>
        </dependency>
        
        <dependency>
            <groupId>oro</groupId>
            <artifactId>oro</artifactId>
            <version>2.0.8</version>
        </dependency>
        
* source:
import org.apache.commons.validator.EmailValidator;
//......
public boolean isValidEmailAddress(){
        EmailValidator validator = EmailValidator.getInstance();
        return validator.isValid(this.emailAddress);        
    }
    
public boolean isPhoneNumberValid() {
        return this.number.matches("^\\+(?:[0-9] ?){6,14}[0-9]$");        
    }

public boolean isValid(){
            //check name length
            if(getNameGiven().length()<=2 || getNameSurname().length()<=2)
                    return false;
            
            //check all contact emails
            if(getContactsEmails()!=null){
                for(PimContactsEmails email: getContactsEmails()){
                        if(email.isValidEmailAddress()==false)
                                return false;
                }
            }
            // Check birthdate 
            if(getBirthDate()!=null){
                LocalDate today = LocalDate.now();
                LocalDate birthday = getBirthDate().toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
                Period p = Period.between(birthday, today);
                if(p.isNegative() || p.isZero() || p.getYears() >= 120)
                        return false;
            }
            //check phone number
            if(getContactsPhoneContacts()!=null){
                for(PimContactsPhoneContact phone: getContactsPhoneContacts())
                        if(phone.isPhoneNumberValid() == false)
                                return false;
            }
            //should we check/validate PTC (and crosscheck with age)?
            //formOfPayment card number?
            //gender? ('M', 'F' or 'Male' , 'Female')
            return true;
    }
///////////////////        
PimPassenger pax = new PimPassenger();
            pax.setNameGiven("Bill");
            pax.setNameSurname("Gates");
            pax.getContactsEmails().add(new PimContactsEmails("Job", "bil@yahoo.com"));
            pax.getContactsPhoneContacts().add(new PimContactsPhoneContact("home", "+30234234"));
            LocalDate l = LocalDate.of(1900, Month.DECEMBER, 12);
            Date date = Date.from(l.atStartOfDay(ZoneId.systemDefault()).toInstant());
            pax.setBirthDate(date);
///////////////////////            
        
    
//////////////////////////////////////////////LocalDate to date (Java 8)
LocalDate.of(2012, Month.DECEMBER, 12);
Date date = Date.from(localDate.atStartOfDay(ZoneId.systemDefault()).toInstant());
/////////////BirtdDate:
 if(getBirthDate()!=null){
                LocalDate today = LocalDate.now();
                LocalDate birthday = getBirthDate().toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
                Period p = Period.between(birthday, today);
                if(p.isNegative() || p.isZero() || p.getYears() >= 120)
                        return false;
            }
////////////////////////            
public final static String LOCAL_SCHEMA_PATH = System.getProperty("user.home") + File.separator + ".jrt"
			+ File.separator + "ndc" + File.separator + "schemas" + File.separator;
String version = Commons.getInstance().getAirlineProperties().getNdcVersion();			

////////////////////Stax
streamReader.nextTag();
if(streamReader.getLocalName().equals("ServiceReferences")){
                                                                        assocBuilder.append("<IncludedService><ServiceReferences>")
                                                                                .append(streamReader.getElementText()).append("</ServiceReferences></IncludedService>");
                                                                }
if (streamReader.getAttributeLocalName(i).equals("OfferItemID")) {
                                                                        offerItemIds.add(streamReader.getAttributeValue(i));
                                                                        break;
                                                                }
                                                                                                                                


offerId = streamReader.getElementText();
////////////////////////////////////////////////////////////////////////
 private  SortedSet<Map.Entry<String,Map<String,OfferEntry>>> 
                flightOffersMapOrderedByPriceLowToHigh= new TreeSet<>(
            new Comparator<Map.Entry<String, Map<String,OfferEntry>>>() {
                @Override
                public int compare(Map.Entry<String, Map<String,OfferEntry> > e1,
                        Map.Entry<String, Map<String,OfferEntry> > e2) {
                        float f1 =getMinimumPrice(e1.getValue().values());
                        float f2 =getMinimumPrice(e2.getValue().values());
                        if(f1 == f2) return 2;
                        else return Float.valueOf(f1).compareTo(f2);
                }
            });

        private  SortedSet<Map.Entry<String,Map<String,OfferEntry>>> 
                flightOffersMapOrderedByPriceHighToLow = new TreeSet<>(
            new Comparator<Map.Entry<String, Map<String,OfferEntry>>>() {
                @Override
                public int compare(Map.Entry<String, Map<String,OfferEntry> > e1,
                        Map.Entry<String, Map<String,OfferEntry> > e2) {
                        float f1 =getMinimumPrice(e1.getValue().values());
                        float f2 =getMinimumPrice(e2.getValue().values());
                        if(f1 == f2) return 2;
                        else return Float.valueOf(f2).compareTo(f1);
                }
            });


        public SortedSet<Map.Entry<String, Map<String, OfferEntry>>> getFlightOffersMapOrderedByPriceLowToHigh() {
                return flightOffersMapOrderedByPriceLowToHigh;
        }

        public SortedSet<Map.Entry<String, Map<String, OfferEntry>>> getFlightOffersMapOrderedByPriceHighToLow() {
                return flightOffersMapOrderedByPriceHighToLow;
        }
        
          private float getMinimumPrice(Collection<OfferEntry> set){
                float price = Float.MAX_VALUE;
                for(OfferEntry offer: set){
                        if(offer.getPrice()<price)
                                price = offer.getPrice();
                }
                return price;
                
        }
///////////////////////////////////////////////
shoppingJson.getFlightOffersMapOrderedByPriceLowToHigh().addAll(flightOfferMap.entrySet());
shoppingJson.getFlightOffersMapOrderedByPriceHighToLow().addAll(flightOfferMap.entrySet());
///////////////////////////////////////// Encrypt / Decrypt ////////////////////////
//encrypt/decrypt in java
// http://www.quickprogrammingtips.com/java/how-to-encrypt-and-decrypt-data-in-java-using-aes-algorithm.html        
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.xml.bind.DatatypeConverter;

/**
 * This example program shows how AES encryption and decryption can be done in Java.
 * Please note that secret key and encrypted text is unreadable binary and hence 
 * in the following program we display it in hexadecimal format of the underlying bytes.
 * @author Jayson
 */
public class AESEncryption {
 
    /**
     * 1. Generate a plain text for encryption
     * 2. Get a secret key (printed in hexadecimal form). In actual use this must 
     * by encrypted and kept safe. The same key is required for decryption.
     * 3. 
     */
    public static void main(String[] args) throws Exception {
        String plainText = "Hello World";
        SecretKey secKey = getSecretEncryptionKey();
        byte[] cipherText = encryptText(plainText, secKey);
        String decryptedText = decryptText(cipherText, secKey);
        
        System.out.println("Original Text:" + plainText);
        System.out.println("AES Key (Hex Form):"+bytesToHex(secKey.getEncoded()));
        System.out.println("Encrypted Text (Hex Form):"+bytesToHex(cipherText));
        System.out.println("Descrypted Text:"+decryptedText);
        
    }
    
    /**
     * gets the AES encryption key. In your actual programs, this should be safely
     * stored.
     * @return
     * @throws Exception 
     */
    public static SecretKey getSecretEncryptionKey() throws Exception{
        KeyGenerator generator = KeyGenerator.getInstance("AES");
        generator.init(128); // The AES key size in number of bits
        SecretKey secKey = generator.generateKey();
        return secKey;
    }

    public static byte[] encryptText(String plainText,SecretKey secKey) throws Exception{
		// AES defaults to AES/ECB/PKCS5Padding in Java 7
        Cipher aesCipher = Cipher.getInstance("AES");
        aesCipher.init(Cipher.ENCRYPT_MODE, secKey);
        byte[] byteCipherText = aesCipher.doFinal(plainText.getBytes());
        return byteCipherText;
    }
    
   
    public static String decryptText(byte[] byteCipherText, SecretKey secKey) throws Exception {
		// AES defaults to AES/ECB/PKCS5Padding in Java 7
        Cipher aesCipher = Cipher.getInstance("AES");
        aesCipher.init(Cipher.DECRYPT_MODE, secKey);
        byte[] bytePlainText = aesCipher.doFinal(byteCipherText);
        return new String(bytePlainText);
    }
    
    /**
     * Convert a binary byte array into readable hex form
     * @param hash
     * @return 
     */
    private static String  bytesToHex(byte[] hash) {
        return DatatypeConverter.printHexBinary(hash);
    }
}
/////////////////////////////////////////////////////////////
DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
                                factory.setNamespaceAware(true);
                                node = factory
                                        .newDocumentBuilder()
                                        .parse(new ByteArrayInputStream((String.format(Locale.ROOT,XMLSnippets.ITIN_RESHOP_DIF,
                                                                oldTotalPrice, newTotalOfferPrice, 0.00, 0.00, offerPrice)).getBytes())).getDocumentElement();
                                
///////////////                                
/////Lamda expression , map:
ap<String, Integer> items = new HashMap<>();
items.put("A", 10);
items.put("B", 20);
items.put("C", 30);
items.put("D", 40);
items.put("E", 50);
items.put("F", 60);

items.forEach((k,v)->System.out.println("Item : " + k + " Count : " + v));

items.forEach((k,v)->{
	System.out.println("Item : " + k + " Count : " + v);
	if("E".equals(k)){
		System.out.println("Hello E");
	}
});
////////////////
//lambda
//Output : A,B,C,D,E
items.forEach(item->System.out.println(item));

//Output : C
items.forEach(item->{
	if("C".equals(item)){
		System.out.println(item);
	}
});

//method reference
//Output : A,B,C,D,E
items.forEach(System.out::println);

//Steam and filter
//Output : B
items.stream()
	.filter(s->s.contains("B"))
	.forEach(System.out::println);
////////////////////////////////	
private void processFile(String fName) {
try ( StreamReader sr = new StreamReader(fName) ) //should implement AutoCloseable
{
String line;
while ((line = sr.readLine()) != null)
processLine(line);
}
}
//////////////////////////// jaxb biding annotations
//http://www.eclipse.org/eclipselink/documentation/2.5/solutions/jpatoxml003.htm

@Controller // Defines that this class is a spring bean
@RequestMapping("/users")
public class SomeController {

    // Tells the application context to inject an instance of UserService here
    @Autowired
    private UserService userService;

    @RequestMapping("/login")
    public void login(@RequestParam("username") String username,
           @RequestParam("password") String password) {

        // The UserServiceImpl is already injected and you can use it
        userService.login(username, password);

    }
}

/////////////////////
//http://www.restapitutorial.com/lessons/whatisrest.html#
////////////////Timestamp
import java.time.LocalDateTime;
private LocalDateTime createdOn;

import java.time.format.DateTimeFormatter;
DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");
LocalDateTime departureLocalDateTime = LocalDateTime.parse(departureDate+" "+departureTime, formatter);


createdOn = LocalDateTime.now();
Date _date = Date.from(createdOn.toInstant(ZoneOffset.UTC));

paymentTimeLimit = Date.from((createdOn.plusDays(PAYMENTTIMELIMIT_DAYS)).toInstant(ZoneOffset.UTC));
        inventoryGuaranteeTimeLimit = Date.from((createdOn.plusHours(INVENTORYGUARANTEETIMELIMIT_HOURS)).toInstant(ZoneOffset.UTC));

int yyyy = createdOn.getYear();
        int mm = createdOn.getMonthValue();
        int dd = createdOn.getDayOfMonth();
        int time = createdOn.getHour() * 100 + createdOn.getMinute();        
///////////////        
Date _arrivalDate = Date.from(arrivalDate.atStartOfDay(ZoneOffset.UTC).toInstant());
LocalDate date = input.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
/////////////////two digit number:
String.format("%02d", myNumber)
/////////////////
// <editor-fold defaultstate="collapsed" desc="user-description">
  ...any code...
// </editor-fold>

//jachkson samples
//http://proliferay.com/create-json-by-jackson-api/
////initialize maps
private static final Map<Integer,Boolean> MAP = 
        Collections.unmodifiableMap(IntStream.range(0, 1000)
                                             .boxed()
                                             .collect(Collectors.toMap(i -> i, i -> f(i))));

private static final boolean f(int i) {
    return Math.random() * 100 > i;
}
////////////////
//http://minborgsjavapot.blogspot.gr/2014/12/java-8-initializing-maps-in-smartest-way.html
///////////
import java.util.AbstractMap.*;
private static final Map<Integer, String> myMap = Stream.of(
            new SimpleEntry<>(1, "one"),
            new SimpleEntry<>(2, "two"),
            new SimpleEntry<>(3, "three"),
            new SimpleEntry<>(4, "four"),
            new SimpleEntry<>(5, "five"),
            new SimpleEntry<>(6, "six"),
            new SimpleEntry<>(7, "seven"),
            new SimpleEntry<>(8, "eight"),
            new SimpleEntry<>(9, "nine"),
            new SimpleEntry<>(10, "ten"))
            .collect(Collectors.toMap((se) -> se.getKey(), (se) -> se.getValue()));
////////////////////

//////////////  and the best map initialization 
public class Test {
    private static final Map<Integer, String> myMap;
    static {
        Map<Integer, String> aMap = ....;
        aMap.put(1, "one");
        aMap.put(2, "two");
        myMap = Collections.unmodifiableMap(aMap);
    }
}
/////////////////////
//check if a list contains any of the elements.
Collections.disjoint(singingGroup, Arrays.asList(Winners));
///////////////////////////////Jackson ignore class type and keep only values;
@JsonValue
//////////////sort list by value
Collections.sort(Database.arrayList, new Comparator<MyObject>() {
    @Override
    public int compare(MyObject o1, MyObject o2) {
        return o1.getStartDate().compareTo(o2.getStartDate());
    }
});
////////////////// or using java8:

//Since java-8

//You can now write the last example in a shorter form by using a lambda expression for the Comparator:

Collections.sort(Database.arrayList, 
                        (o1, o2) -> o1.getStartDate().compareTo(o2.getStartDate()));
//And List has a sort(Comparator) method, so you can shorten this even further:

Database.arrayList.sort((o1, o2) -> o1.getStartDate().compareTo(o2.getStartDate()));
//This is such a common idiom that there's a built-in method to generate a Comparator for a class with a Comparable key:

Database.arrayList.sort(Comparator.comparing(MyObject::getStartDate));
//All of these are equivalent forms.
///////////
mapper.setPropertyNamingStrategy(PropertyNamingStrategy.UPPER_CAMEL_CASE);

///////////////
 Insert orderByPassengerStatement = QueryBuilder.insertInto("orderbypassenger")
            .value("passengerid", passengerId)
            .value("paxlastname", passengerLastName)
            .value("orderid", orderId)
            .value("purgedatetime", Date.from(_deliveryDate.toInstant(ZoneOffset.UTC)));
////////////////////        
/*
A POJO is just a simple Java object, the acronym is used to emphasize that it really is nothing special.

A DTO is a Data Transfer Object which is used to encapsulate data that is transferred over a connection between layers or subsystems.
DTO or "Data Transfer Object" is an object for... well... transferring data, usually between your "business" classes and persistence layer. It typically is a behavior-less class much like a C-style struct. They are an outdated concept.

*/
//using DTO: http://www.baeldung.com/entity-to-and-from-dto-for-a-java-spring-application

@JsonProperty("MarketMessages")
///java 8 streams forEach
//http://www.javaworld.com/article/2461744/java-language/java-language-iterating-over-collections-in-java-8.html?page=2
//Json notations: http://www.baeldung.com/jackson-annotations
@Pattern(regexp = "((?=.*\\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%]).{6,20})")
////java constraints http://java.sys-con.com/node/2674736
@Pattern(regexp = "red|blue|green|pink", flags = Pattern.Flag.CASE_INSENSITIVE)
/////split java string into chars:
"cat".toCharArray()
////////
var statement: PreparedStatement = session.prepare("INSERT INTO people (name,age) VALUES (?,?)")
var boundStatement = new BoundStatement(statement)
val batchStmt = new BatchStatement()
batchStmt.add(boundStatement.bind("User A", "10"))
batchStmt.add(boundStatement.bind("User B", "12"))
session.execute(batchStmt)
////////////////////////////generate random uuid
private String getTransactionId() {
                UUID idOne = UUID.randomUUID();
                String rId = String.valueOf(idOne);
                rId.replace("{", "");
                rId.replace("}", "");
                String GUID = rId.replace("-", "");
                return GUID;

        }
        
//////////////////
private final String addPassengerIdByBookingReference = "update pimpassengerbybookingreference set passengerid=passengerid+? where bookingreference=?";
    private final String addPassengerByOrder = "update pimpassengerbyorderid set passengerid=passengerid+? where orderid=?";
    ///////////
Date _date = Date.from(LocalDateTime.now().toInstant(ZoneOffset.UTC));

//convert localdate to date:
                            String depDate = streamReader.getElementText();
                            LocalDate _ldate = LocalDate.parse(depDate, formatter);
                            Date date = Date.from(_ldate.atStartOfDay(ZoneOffset.UTC).toInstant());    
                            orderHolder.setCreationDate(date);
/////////Date processing old style
 Date departureDate;
 Date effectiveDate;
 DateFormat departureDateFormatXml = new SimpleDateFormat("yyyy-MM-dd");
 departureDate = departureDateFormatXml.parse(departureDateStr);
int dayOfWeek = cal.get(Calendar.DAY_OF_WEEK)>1?(cal.get(Calendar.DAY_OF_WEEK)-1):7;

if(departureDate.after(effectiveDate) || departureDate.equals(effectiveDate))
                        if(departureDate.before(discontinuedDate))
                        
/////////////////////get year;
Calendar now = Calendar.getInstance();
int year = now.get(Calendar.YEAR);
String yearInString = String.valueOf(year);
/////////////////////
public Document xmlToDom(String xml) throws Exception{
        Document dom;
DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
DocumentBuilder db = dbf.newDocumentBuilder();

        return db.parse(new InputSource(new ByteArrayInputStream(xml.getBytes("utf-8"))));
    }
                            
///remove time from date:
public static Date removeTime(Date date) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        cal.set(Calendar.HOUR_OF_DAY, 0);
        cal.set(Calendar.MINUTE, 0);
        cal.set(Calendar.SECOND, 0);
        cal.set(Calendar.MILLISECOND, 0);
        return cal.getTime();
    }
//////////////////                            
DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        LocalDateTime departureLocalDateTime = LocalDateTime.parse(departureDateStr, formatter);
        Date _date = Date.from(departureLocalDateTime.toInstant(ZoneOffset.UTC));
////////////////////        
DateFormat df = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");
Date today = Calendar.getInstance(TimeZone.getTimeZone("UTC")).getTime();        
String reportDate = df.format(today);
///////////////////////accessors ALWAYS with:
Commons.getInstance().getCassandraConnection().getSession().executeAsync(insertStatement);
///////////////Spring patterns:
@JsonProperty("Airlines")
        @Pattern(regexp = "([\\w]{2,3})")


@Pattern(regexp = "([\\w\\d]{1,15})")
        @JsonProperty("Code")
        private String code;

    @Pattern(regexp = "([\\w]{3})")
        @JsonProperty("CurrencyCodes")
        private List<String> currencyCodes;    

 @JsonProperty("AirportCode")
        @Pattern(regexp = "([\\w]{3})")
        private String airportCode;
        
@JsonProperty("TicketNumber")
    @Length(min=1, max=16)
	private String ticketNumber;
    
	@JsonProperty("Type")
    @Length(max=50)
	private String type;

@JsonProperty("IssueDate")
    @JsonFormat(pattern = "yyyy-MM-dd")
	private String issueDate;
	
	@Email
    @NotNull
    @Length(min = 5, max = 255)
    @Pattern(regexp = ".+@.+\\.[a-z]+", message = "Invalid email address!")
    private String email;
    
   private String maritalStatus;
    @Pattern(regexp = ".+@.+\\.[a-z]+", message = "Invalid email address!")
     
///////////////////////
BatchStatement batchStatement = new BatchStatement();
//.......
BoundStatement boundStatement = new BoundStatement(preparedStatement);
batchStatement.add(boundStatement.bind(airlineId,flightNumber,segDepartAirport,segArrAirport,
startDate,endDate,day,departureTIme,arrivalTime,equipment,flightDuration,flightMiles,
bookingClassesSet,stopQuantity,IOUtilities.documentToString(wrapNode(flightSegmentElement))));
/////////////////////////////save with ttl                                		        
gatewayLogMapper.setDefaultSaveOptions(Option.ttl(24 * 60 * 60)); // one day in secs - in production should be 15 mins
//////////////////
 public static OrderCancelStatus otaCancelRSCheckErrors(Document otaCancelRS) {
        try {
            XPath xpath = XPathFactory.newInstance().newXPath();

            Node success = (Node) xpath.evaluate("/*/*[local-name()='Success']", otaCancelRS, XPathConstants.NODE);
            if (success != null) {
                return OrderCancelStatus.SUCCESSS;
            }
            Node errors = (Node) xpath.evaluate("/*/*[local-name()='Errors']", otaCancelRS, XPathConstants.NODE);

            if (errors != null) {
                String errorCode = xpath.evaluate("./*[local-name()='Error']/@Code", errors);
                if (errorCode != null && errorCode.equals("101")) {
                    String msg = xpath.evaluate("./*[local-name()='Error']/text()", errors);
                    if (msg.contains("THIS PNR WAS ENTIRELY CANCELLED")) {
                        return OrderCancelStatus.ALREADY_CANCELLED;
                    }
                }
                return OrderCancelStatus.ERROR;
            }

        } catch (XPathExpressionException ex) {
            // will never happen since all xpath expressions are hardcoded
            logger.error("Xpath expression error. This should only be possible if someone tampered with the hardcoded"
                    + "xpath expressions. If this happend then the OTA_CancelRS error checking returned invalid results!", ex);
        }
        return OrderCancelStatus.ERROR;
    }
////////////////////////////////////    
String mydata = "some string with 'the data i want' inside";
Pattern pattern = Pattern.compile("'(.*?)'");
Matcher matcher = pattern.matcher(mydata);
if (matcher.find())
{
    System.out.println(matcher.group(1));
}
/////////////////////create anonymous list
List<String> al = Arrays.asList("vote", "for", "me"); //pandering
//or
List<String> list = ImmutableList.of("A", "B", "C");
//or:
List<String> list = new ArrayList<String>() {
 {
    add("value1");
    add("value2");
 }
};

////jackson: parse array of objects:
import com.fasterxml.jackson.databind.ObjectMapper;// in play 2.3
ObjectMapper mapper = new ObjectMapper();
//As Array:

MyClass[] myObjects = mapper.readValue(json, MyClass[].class);
//As List
List<MyClass> myObjects = mapper.readValue(jsonInput, new TypeReference<List<MyClass>>(){});
//or faster:
List<MyClass> myObjects = Arrays.asList(mapper.readValue(json, MyClass[].class))
//Jackson Annotations:
//http://tutorials.jenkov.com/java-json/jackson-annotations.html#jsonvalue
//////////////////
import com.google.common.collect.ImmutableList;

////compare dates
public class TestDate2 {

    public static void main(String[] args) throws ParseException {

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date date1 = sdf.parse("2009-12-31");
        Date date2 = sdf.parse("2010-01-31");

        System.out.println("date1 : " + sdf.format(date1));
        System.out.println("date2 : " + sdf.format(date2));

        if (date1.after(date2)) {
            System.out.println("Date1 is after Date2");
        }

        if (date1.before(date2)) {
            System.out.println("Date1 is before Date2");
        }

        if (date1.equals(date2)) {
            System.out.println("Date1 is equal Date2");
        }

    }

}
//////////////lamda expression:
 if(absent!=null){
                    sequenceNumberByOriginDestination.compute(serviceType, (k,v) -> v + 1);
                }
/////////////////// retrieve from result set again..
ResultSetFuture resultSetFuture = ACCESSORS.getOrderMasterAccessor().getOrderAsync(orderId);
ResultSet rs = resultSetFuture.getUninterruptibly();
List<Row> orderRows = rs.all();
                for (Row r : orderRows) {
                    String servicetype = r.getString("servicetype");
                    }
/////////////// convert LocalDate datastax into Date:
com.datastax.driver.core.LocalDate l = row.getDate("asdfa");
Date d = new Date(l.getMillisSinceEpoch());                   
/////////////////migration to cassandra 3x:
 <com.datastax.cassandra.cassandra-driver-core.version>3.2.0</com.datastax.cassandra.cassandra-driver-core.version>
        <com.datastax.cassandra.cassandra-driver-mapping.version>3.2.0</com.datastax.cassandra.cassandra-driver-mapping.version>
        <dependency>
				<groupId>com.datastax.cassandra</groupId>
                <artifactId>cassandra-driver-mapping</artifactId>
                <version>${com.datastax.cassandra.cassandra-driver-mapping.version}</version>
		</dependency>
        <dependency>
                <groupId>com.datastax.cassandra</groupId>
                <artifactId>cassandra-driver-core</artifactId>
                <version>${com.datastax.cassandra.cassandra-driver-core.version}</version>
        </dependency>
        
        // r.getDate() -> r.getTimestamp()
        

//////////////
 LocalDate lDiscontinuedDate = row.getDate("discontinue_date");
            Date discontinuedDate = new Date(lDiscontinuedDate.getMillisSinceEpoch());
            
            LocalDate lEffectiveDate = row.getDate("effective_date");
            Date effectiveDate = new Date(lEffectiveDate.getMillisSinceEpoch());
/////////////////// Migra           
 PreparedStatement prepared = Commons.getInstance().getCassandraConnection().getSession().prepare(
        "INSERT INTO sita_log ("
            + "transactionid,"
            + "messageid,"
            + "sequencenbr,"
            + "durationms,"
            + "rqtimestamp,"
            + "rqxml,"
            + "rstimestamp,"
            + "cache,"
            + "rsxml) values("
            + "?,"
            + "?,"
            + "?,"
            + "?,"
            + "?,"
            + "?,"
            + "?,"
            + "?,"
            + "?"
            + ")"
        
        );
        
        BoundStatement boundStatement = new BoundStatement(prepared);
            boundStatement.bind().setString(0, log.getTransactionId());
            boundStatement.bind().setInt(1,log.getMessageId());
            boundStatement.bind().setInt(2,log.getSequenceNbr());
            boundStatement.bind().setLong(3,log.getDuration());
            boundStatement.bind().setTimestamp(4,log.getRqTimestamp());
            boundStatement.bind().setString(5,log.getRqXml());
            boundStatement.bind().setTimestamp(6,log.getRsTimestamp());
            boundStatement.bind().setBool(7,log.getCacheStatus());
            boundStatement.bind().setString(8,log.getRsXml());
        Commons.getInstance().getCassandraConnection().getSession().execute(boundStatement);
        
        
         PreparedStatement prepared2 = Commons.getInstance().getCassandraConnection().getSession().prepare(
        "INSERT INTO dummy_requests ("
            + "id,"
            + "created,"
            + "message)"
            + "values("
            + "?,"
            + "?,"
            + "?"
            + ")"
        
        );
        
        BoundStatement boundStatement2 = new BoundStatement(prepared2);
            boundStatement2.bind().setString(0, log.getTransactionId());
            boundStatement2.bind().setTimestamp(1,log.getRqTimestamp());
            boundStatement2.bind().setString(2,log.getRqXml());
        Commons.getInstance().getCassandraConnection().getSession().execute(boundStatement2);
        
////////////////////////// query with in statement!!       
@Query("SELECT * FROM testkeyspace.roles_users WHERE role IN :roles")

Result<RoleUser> getUsersByRoles(@Param("roles") List<String> roles);
///////////test with xpath
 String orderRetrieveRQStr = fileToString("./src/test/resources/samples_17_1/OrderRetrieveRQ.xml",
                StandardCharsets.UTF_8);

        OrderManagementService orderManager = new OrderManagementServiceImpl();
        long start = System.nanoTime();
        long t1 = System.currentTimeMillis();
        String orderViewRS = orderManager.handleOrderRetrieveRequest(orderRetrieveRQStr);
        long t2 = System.currentTimeMillis();
        LOGGER.info("Time to generate Order Retrieve response: {}ms", (t2-t1));

        Map<String, String> prefix2Uri = new HashMap();
        prefix2Uri.put("iata", "http://www.iata.org/IATA/EDIST/2017.1");
        Assert.assertThat(orderViewRS, HasXPathMatcher
                .hasXPath("/iata:OrderViewRS/iata:Response/iata:Order/iata:OrderItems/iata:OrderItem/iata:PriceDetail/iata:BaseAmount")
                .withNamespaceContext(prefix2Uri));

        Assert.assertThat(orderViewRS, HasXPathMatcher
                .hasXPath("/iata:OrderViewRS/iata:Response/iata:Order/iata:OrderItems/iata:OrderItem/iata:Service/iata:PassengerRef")
                .withNamespaceContext(prefix2Uri));

        Assert.assertThat(orderViewRS, HasXPathMatcher
                .hasXPath("/iata:OrderViewRS/iata:Response/iata:DataLists/iata:PassengerList/iata:Passenger/iata:Individual")
                .withNamespaceContext(prefix2Uri));

        Assert.assertThat(orderViewRS, HasXPathMatcher
                .hasXPath("/iata:OrderViewRS/iata:Response/iata:DataLists/iata:FlightSegmentList/iata:FlightSegment/iata:Departure")
                .withNamespaceContext(prefix2Uri));

        Assert.assertThat(orderViewRS, HasXPathMatcher
                .hasXPath("/iata:OrderViewRS/iata:Response/iata:DataLists/iata:ServiceDefinitionList/iata:ServiceDefinition")
                .withNamespaceContext(prefix2Uri));

        // TODO schema validation
    }

    public static String fileToString(String path, Charset encoding) {
        byte[] encoded;
        try {
            encoded = Files.readAllBytes(Paths.get(path));
        } catch (IOException e) {
            e.printStackTrace();
            return "";
        }
        return new String(encoded, encoding);
    }
/////////////////////////////////////    junit tests: http://www.vogella.com/tutorials/JUnit/article.html
/////////////simple test + validation:
 public void testGetOrderListRS() throws Exception {

        InputStream in = this.getClass().getResourceAsStream("orderlist/OrderListRQ_TravelDate_Filter.xml");
        if (in == null)
            System.err.println("\nUnable to load input test file");

        assertNotNull(in);
        String xmlString = IOUtils.toString(in, "UTF-8");
        OrderListImpl OrderListProcess = new OrderListImpl("TEST");

        NDCResponse response = OrderListProcess.getResponse(xmlString, "TEstid");
        System.out.println(response.getResponseXml());
        File f = new File("OrderList17.1RS_output.xml");
        NDCMessage nDCMessage = new NDCMessage();
        nDCMessage.loadMessage(response.getResponseXml());
        Assert.assertTrue(MessageProcessor.getInstance().validate(nDCMessage));
        OutputStreamWriter output = new OutputStreamWriter(new FileOutputStream(f), Charset.defaultCharset());
        output.write(response.getResponseXml());
        output.close();
    }
/////////////////////////////    
Map<Map.Entry, Long> sitaDurationByTransactionId = new HashMap<>();
Map.Entry keyPair = new AbstractMap.SimpleEntry(transactionId, messageId);
 if (sitaDurationByTransactionId.computeIfPresent(keyPair, (k, v) -> v += duration) == null) {
                sitaDurationByTransactionId.put(keyPair, duration);
 }
 /////
Commons.getInstance().getCassandraConnection().executeQueryAsync(batchStatement); 
//////////
@Target(ElementType.FIELD)
@Constraint(validatedBy={})
@Retention(RUNTIME)
@Pattern(regexp="^[0-9a-f]{8}-[0-9a-f]{4}-[1-5][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$")
public @interface UUID {
    String message() default "{invalid.uuid}";
    Class<?>[] groups() default {};
    Class<? extends Payload>[] payload() default {};
}
//skip checkstyle for maven:
<properties>
....
	<checkstyle.skip>true</checkstyle.skip>
</properties>
//intellij configuration: 

install -Dcheckstyle.skip
///find bugs exclusion:
 <plugin>
                <groupId>org.codehaus.mojo</groupId>
                <artifactId>findbugs-maven-plugin</artifactId>
                <version>3.0.3</version>
                <executions>
                    <execution>
                        <id>analyze-compile</id>
                        <phase>compile</phase>
                        <goals>
                            <goal>check</goal>
                        </goals>
                        <configuration>
                            <effort>Max</effort>
                            <threshold>Low</threshold>
                            <xmlOutput>true</xmlOutput>
                            <findbugsXmlOutputDirectory>C:\Dev\SCIM\wso2-charon-m1\src\charon-core\target/findbugs</findbugsXmlOutputDirectory>
                            <excludeFilterFile>${mavan.findbugsplugin.exclude.file}</excludeFilterFile>
                        </configuration>
                    </execution>
                </executions>
                <configuration>
                    <effort>Max</effort>
                    <threshold>Low</threshold>
                    <xmlOutput>true</xmlOutput>
                    <findbugsXmlOutputDirectory>C:\Dev\SCIM\wso2-charon-m1\src\charon-core\target/findbugs</findbugsXmlOutputDirectory>
                    <excludeFilterFile>${mavan.findbugsplugin.exclude.file}</excludeFilterFile>
                    <skip>true</skip>
                </configuration>
            </plugin>
/////////////////
    @POST
    @Produces({"application/json"})
    @Consumes("application/json")
    public Response createUser(
        //@HeaderParam(SCIMConstants.CONTENT_TYPE_HEADER) String inputFormat,
        //@HeaderParam(SCIMConstants.ACCEPT_HEADER) String outputFormat,
        @HeaderParam(SCIMConstants.AUTHORIZATION_HEADER) String authorization,
        User resourceString
    ) {

///////////////////////////
@JsonInclude(JsonInclude.Include.NON_EMPTY)
////////
multiple paths for javax.ws.rs.Path
@Path("/{a:path1|path2}")

throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
////Initialize arrays:
int[] data = {10,20,30,40,50,60,71,80,90,91};

// or

int[] data;
data = new int[] {10,20,30,40,50,60,71,80,90,91};
///////////////////////convert dto to jsonobject
import org.json.JSONObject;
JSONObject jSONObject = new JSONObject(scimUser);
String userString = jSONObject.toString();
/////////////////////DTO constraints
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.jrtechnologies.data.db.entities.User;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.URL;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

@Email
    @NotNull
    @Length(min = 5, max = 255)
    @Pattern(regexp = ".+@.+\\.[a-z]+", message = "Invalid email address!")
    private String email;
    private String title;
    @NotNull
    @Length(max = 50)
    private String firstname;
    private String middleName;
    @NotNull
    @Length(max = 100)
    private String lastname;
    @NotNull
    @Pattern(regexp = "((?=.*\\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%]).{6,20})")
    private String password;
    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date birthdate;
    private UsersActivationDTO userActivation;
    private boolean isConfirmed;
    @NotNull
    @URL
    private String baseUrl;
    private String gender;
    private String mobilePhone;
    private String idNumber;
    private String IssuingCountry;

    private ArrayList<Passport> passports;

    private String address;
    private String city;
    private String stateProvince;
    private String country;
    private String postCode;
    private String maritalStatus;
    @Pattern(regexp = ".+@.+\\.[a-z]+", message = "Invalid email address!")
    private String workEmail;
    private String homeTelephone;
    private String workTelephone;

	@Pattern(regexp="^[0-9a-f]{8}-[0-9a-f]{4}-[1-5][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$")            
	UUID uid;
////////////////////////// Data Spring validation DTO
//1) Make ValidatorUtil.java class:
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.validation.BeanPropertyBindingResult;
import org.springframework.validation.Errors;
import org.springframework.validation.beanvalidation.SpringValidatorAdapter;

import javax.validation.Validation;
import javax.validation.Validator;

public class ValidatorUtil {
    private static final Logger LOGGER = LoggerFactory.getLogger(ValidatorUtil.class);
    private static final Validator javaxValidator = Validation.buildDefaultValidatorFactory().getValidator();
    private static final SpringValidatorAdapter validator = new SpringValidatorAdapter(javaxValidator);

    
    
    
    public static Object validate(Object entry) {
        Errors errors = new BeanPropertyBindingResult(entry, entry.getClass().getName());
        validator.validate(entry, errors);
        if (errors == null || errors.getAllErrors().isEmpty())
            return entry;
        else {
            LOGGER.error(errors.toString());
            throw new InvalidDataException(errors.getAllErrors().toString(), errors);
        }
    }
}
//2 Make InvalidDataException.java class 
public class InvalidDataException extends RuntimeException {
    private Errors errors;

    public InvalidDataException(String msg, Errors errors) {
        super(msg);
        setErrors(errors);
    }

    public Errors getErrors() {
        return errors;
    }

    public void setErrors(Errors errors) {
        this.errors = errors;
    }
}
//3 : call validate within DTO object
public ScimUserDTO validate(){
        return (ScimUserDTO) ValidatorUtil.validate(this);
}
//4: Call object.validate method() when you have build the object..    

 try {
    return dto.validate();
} catch (InvalidDataException e) {
	throw new CharonException("Invalid User Data: " + e.getMessage());
}    
//////////////////////////////////////////List files which are hidden..
File[] hiddenFiles = new File(".").listFiles(new FileFilter(){
	public boolean accept(File file){
		return file.isHidden();
	}
}
///////////////////////
// or in java8:
File[] hiddenFiles = new File(".").listFiles(File::isHidden);
///////////////////
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

private static final Logger LOGGER = LogManager.getLogger(ValidatorUtil.class);
///////////////////////include resource file into jar:
  <resources>
                        <resource>
                            <directory>${basedir}/src/main/resources</directory>
                            <filtering>false</filtering>
                        </resource>
                    </resources>
                </configuration>
///////////////////////// skip maven tests               
mvn -Dmaven.test.skip=true install
The above commend will skip running and compiling tests. If you want to compile but not run tests use

mvn install -DskipTests
////////////////update user in cassandra:
@Override
    public void updateUser(ScimUserDTO user) {

        ResultSetFuture rsf = accessors.getConnection().executeQueryAsync(
            accessors.getScimUserAccessor().update(
                user.getUserName(),
                user.getTitle(),
                user.getFname(),
                user.getLname(),
                user.getEmail(),
                user.getPhone(),
                user.getId()
            ));

        Futures.addCallback(rsf, new FutureCallback<ResultSet>() {
            @Override
            public void onSuccess(ResultSet result) {
                _logger.info("Updated User just saved");
            }

            @Override
            public void onFailure(Throwable t) {
                _logger.error("Error while saving updated user: " + t.getMessage());
            }
        }
        );

    }

/////////////////pagination with cassandra:
 PreparedStatement prepared = accessors.getConnection().getSession().prepare("select * from ScimUser ;");
        BoundStatement boundStatement = new BoundStatement(prepared);

        boundStatement.setFetchSize(count);
        String requestedPage = null;
        int pageIndex = 0;

        //first go to the requested page
        ResultSet resultSet = null;
        do {
            if (requestedPage != null) {
                boundStatement.setPagingState(PagingState.fromString(requestedPage));
            }
            resultSet = accessors.getConnection().getSession().execute(boundStatement);
            PagingState nextPage = resultSet.getExecutionInfo().getPagingState();

            requestedPage = null;
            if (nextPage != null) {
                requestedPage = nextPage.toString();
            }

            pageIndex++;

        } while (requestedPage != null && pageIndex <= startIndex);
        
        if(pageIndex <= startIndex){
            _logger.warn("Out Of Bounds pagination index: {}, (ItemsPerPage:{})",startIndex,count);
            return users;
        }
        //now that we reach the requested page, fetch results.
        int i =0;
        //System.out.println("Remaining total: " +resultSet.getAvailableWithoutFetching());
        for (Row r : resultSet) {
            if (r == null || i >= count) {
                break;
            }
            ScimUserDTO user = new ScimUserDTO();
            user.setUserName(r.getString("userName"));
            user.setTitle(r.getString("title"));
            user.setId(r.getUUID("id"));
            user.setFname(r.getString("fname"));
            user.setLname(r.getString("lname"));
            user.setEmail(r.getString("email"));
            user.setPhone(r.getString("phone"));
            user.setCreated(r.getDate("created"));
            users.add(user);
            i++;
        }
        
        return users;
////////////////////////////////snappy problem:
//add dependency:
  <dependency>
                <groupId>org.xerial.snappy</groupId>
                <artifactId>snappy-java</artifactId>
                <version>1.1.4-M3</version>
            </dependency>
            
.withCompression(ProtocolOptions.Compression.SNAPPY)            
            
//////////my pagination method for cassandra:
 public List<ScimUserDTO> getUsers(int startIndex, int count) {
        List<ScimUserDTO> users = new ArrayList<>();

        if (count > FETCH_SIZE) {
            _logger.error("Items per page number exceeds maximum fetch size: {}", FETCH_SIZE);
            return users;
        }

        BoundStatement boundStatement = new BoundStatement(prepared);

        boundStatement.setFetchSize(FETCH_SIZE);
        String requestedPage = null;
        int pageIndex = 0;

        final int numOfRows = (startIndex + 1) * count;
        int rowIndex = (startIndex * count) + 1;
        while (rowIndex <= numOfRows) {
            int fetchIndex = rowIndex / (FETCH_SIZE);
            if(fetchIndex < pageIndex)
                break;
            int skipRows = (rowIndex) % FETCH_SIZE - 1;
            ResultSet resultSet = null;
            do {
                if (requestedPage != null) {
                    boundStatement.setPagingState(PagingState.fromString(requestedPage));
                }
                resultSet = accessors.getConnection().getSession().execute(boundStatement);
                PagingState nextPage = resultSet.getExecutionInfo().getPagingState();

                requestedPage = null;
                if (nextPage != null) {
                    requestedPage = nextPage.toString();
                }

                pageIndex++;

            } while (requestedPage != null && pageIndex <= fetchIndex);

            if (pageIndex <= fetchIndex) {
                _logger.warn("Out Of Bounds pagination index: {}, (ItemsPerPage:{}, FetchSize:{})", startIndex, count, FETCH_SIZE);
                return users;
            }
            //now that we reach the requested page, fetch results.
            int i = 0;
            for (Row r : resultSet) {
                if (i >= FETCH_SIZE || users.size() >= count) {
                    break;
                }
                if (i >= skipRows) {
                    ScimUserDTO user = new ScimUserDTO();
                    user.setUserName(r.getString("userName"));
                    user.setTitle(r.getString("title"));
                    user.setId(r.getUUID("id"));
                    user.setFname(r.getString("fname"));
                    user.setLname(r.getString("lname"));
                    user.setEmail(r.getString("email"));
                    user.setPhone(r.getString("phone"));
                    user.setCreated(r.getDate("created"));
                    users.add(user);
                    rowIndex++;
                }
                i++;
            }

        }

        return users;

    }
///////////////////////////////////////////                
 public static String fileToString(String path, Charset encoding) {
        byte[] encoded;
        try {
            encoded = Files.readAllBytes(Paths.get(path));
        } catch (IOException e) {
            e.printStackTrace();
            return "";
        }
        return new String(encoded, encoding);
    }
////////////////////    wait sleep seconds
try {
            TimeUnit.SECONDS.sleep(3);
        } catch (InterruptedException ex) {
            fail(ex.getMessage());
        }
//TimeUnit.SECONDS.sleep(x) will call Thread.sleep        
///////////////// creates custome annotation!       
@Target({ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
@HttpMethod("PATCH")
public @interface PATCH {}
//.....
//then use it as follows:
 @PATCH
    public Response patchUser(@HeaderParam(SCIMConstants.CONTENT_TYPE_HEADER) String inputFormat,
                              @HeaderParam(SCIMConstants.ACCEPT_HEADER) String outputFormat,
                              @HeaderParam(SCIMConstants.AUTH_HEADER_USERNAME) String userName,
                              @HeaderParam(SCIMConstants.AUTH_HEADER_PASSWORD) String password,
                              @HeaderParam(SCIMConstants.AUTHORIZATION_HEADER) String authorization,
                              String resourceString) {
        System.out.println("patch method was called." + resourceString);
        return null;

    }
    ///////////////printing in java http://www.programcreek.com/2011/03/java-write-to-a-file-code-example/
///include external dependencies to maven:
<dependency>
    <groupId>sample</groupId>
    <artifactId>com.sample</artifactId>
    <version>1.0</version>
    <scope>system</scope>
    <systemPath>${project.basedir}/src/main/resources/yourJar.jar</systemPath>
</dependency>
//Pool Monitors
ExecutorService threadPool = Executors.newFixedThreadPool(thread_num, MyThreadFactory.newThreadFactory("ProcManagerPool"));
            PoolMonitor poolMonitor = new PoolMonitor("ProcManagerMonitor", (ThreadPoolExecutor) threadPool, 3);
            Thread monitorThread = new Thread(poolMonitor);
            monitorThread.setDaemon(true);
            monitorThread.start();
            logger.debug("Begin Loading Pool");
            for (int i = 0; i < total; i++) {
                UniquePNR p = pnrList.get(i);
                threadPool.submit(new PNRProcessTask(p, mySqlConnectionPool, pnrStore, newCachedThreadPool,
                        poolMonitor, fareFetcher));
            }
            threadPool.shutdown();
            logger.debug("Pool Loaded");

            while (true) {
                try {
                    threadPool.awaitTermination(10, TimeUnit.DAYS);
                    break;
                } catch (InterruptedException ex) {
                    // retry on interrupt
                }
            }
/////////////////////////If not used with locale parameter, accepts only greek dates!!!            
String bdateStr ="18JAN95";
        SimpleDateFormat sdf2 = new SimpleDateFormat("ddMMMyyyy",Locale.US);
        Date bdate = null;
         try {
                    //Could not parse birth date "18JAN95". SSR: 2014-01-08 00:00:00, 2013-10-24 16:06:00, PPR5L, 1, 1, DOCS, HK1 VLNCUR 0630Q10JAN/P/VEN/033495358/VEN/18JAN95/M/ 26MAR15/MORALES/ALVARO/ANDRES
                    bdate = sdf2.parse(bdateStr);
                } catch (ParseException ex) {
                    ex.printStackTrace();
                }
         System.out.println(bdate);
    }
///////////////
Insert orderByPassengerStatement = QueryBuilder.insertInto("orderbypassenger")
                .value("passengerid", passengerId)
                .value("paxlastname", passengerLastName)
                .value("orderid", orderId)
                .value("purgedatetime", Date.from(_deliveryDate.toInstant(ZoneOffset.UTC)));

        orderByPassengerStatement.using(QueryBuilder.ttl((int) diffInSeconds));

        BoundStatement orderByPaxLastnameStatement
                = cassandraAccessors.getOrderByPaxLastNameAccessor().insert(senderId, passengerLastName, orderId,
                        Date.from(createdOn.toInstant(ZoneOffset.UTC)));

        processStatement(orderByPassengerStatement);
////////////////////            
assert cond;
//is equivalent to 
if (!cond)
    throw new AssertionError();
//but.. you must have your program with -enableassertions (or -ea for short) started for this statement to have  effect.   
///Spring with soap: https://spring.io/guides/gs/producing-web-service/
///////////////////////Load a file from resources folder:
ClassLoader classLoader = getClass().getClassLoader();
File file = new File(classLoader.getResource("file/test.xml").getFile());
////////////////
System.out.println("@@@" + documentToString(soapResponse.getSOAPBody().extractContentAsDocument()));
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        PrintStream ps = new PrintStream(baos);
        soapResponse.writeTo(ps);

        String responseString = new String(baos.toByteArray(), StandardCharsets.UTF_8);
/////////////Convert printstream into string        
/////////////////////////How to add Authorization to spring
///ignore java doc errors:

<plugin>
    <groupId>org.apache.maven.plugins</groupId>
    <artifactId>maven-javadoc-plugin</artifactId>
    <version>2.10.2</version>
    <executions>
        <execution>
            <id>attach-javadocs</id>
            <goals>
                <goal>jar</goal>
            </goals>
            <configuration> <!-- add this to disable checking -->
                <additionalparam>-Xdoclint:none</additionalparam>
            </configuration>
        </execution>
    </executions>
</plugin>
////////////////////xsd error java error 'file' access is not allowed due to restriction set by the accessExternalSchema property
Well, I found the solution. (based on http://docs.oracle.com/javase/7/docs/api/javax/xml/XMLConstants.html#ACCESS_EXTERNAL_SCHEMA)

Create a file named jaxp.properties (if it doesn't exist) under /path/to/jdk1.8.0/jre/lib and then write this line in it:

javax.xml.accessExternalSchema = all
//////////////////////
error:
.apache.ws.commons.schema.XmlSchemaException: Attribute group must have ref name set
@Bean
    public XsdSchemaCollection updateContactXsd1() {
    CommonsXsdSchemaCollection xsds = new CommonsXsdSchemaCollection(
        new ClassPathResource("ndc/OrderCreateRQ.xsd"),
        new ClassPathResource("ndc/OrderViewRS.xsd")
        
    );
    xsds.setInline(false);  
    return xsds;
////////////////////    beanshell jmeter xpath:
refName - set to first (or only) match; if no match, then set to default
refName_matchNr - set to number of matches (may be 0)
refName_n - n=1, 2, 3, etc. Set to the 1st, 2nd 3rd match etc.
/////////////////load document, xpath:
DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
        Document doc = dbf.newDocumentBuilder().parse(new InputSource(new StringReader(xml)));
        XPath xPath = XPathFactory.newInstance().newXPath();
        Node result = (Node)xPath.evaluate(" Soapenv:Envelope/Soapenv:Body/ns:processRequestResponse/ns:return/BconRs[language=\"SG\"]", doc, XPathConstants.NODE);

//      Node result = (Node)xPath.evaluate("A/B[id = '1']", doc, XPathConstants.NODE);
//  Soapenv:Envelope/Soapenv:Body/ns:processRequestResponse/ns:return/BconRs[language="SG"]
        System.out.println(nodeToString(result));
    }

    private static String nodeToString(Node node)
    throws TransformerException
    {
        StringWriter buf = new StringWriter();
        Transformer xform = TransformerFactory.newInstance().newTransformer();
        xform.setOutputProperty(OutputKeys.OMIT_XML_DECLARATION, "yes");
        xform.transform(new DOMSource(node), new StreamResult(buf));
        return(buf.toString());
    }

////jmeter timestamp 
${__time(yyyy-MM-dd'T'hh:mm:ssX,curTime)}
${__time(yyyy-MM-dd'T'hh:mm:ss,curTime)}
vars.put("timestamp",${__time(yyyy-MM-dd'T'hh:mm:ssX,curTime)});
////////////////writing to a file in java 7+
PrintWriter writer = new PrintWriter("the-file-name.txt", "UTF-8");
writer.println("The first line");
writer.println("The second line");
writer.close();
//Creating a binary file (will also overwrite the file):

byte data[] = ...
FileOutputStream out = new FileOutputStream("the-file-name");
out.write(data);
out.close();

//Java 7+ users can use the Files class to write to files:

//Creating a text file:

List<String> lines = Arrays.asList("The first line", "The second line");
Path file = Paths.get("the-file-name.txt");
Files.write(file, lines, Charset.forName("UTF-8"));
//Files.write(file, lines, Charset.forName("UTF-8"), StandardOpenOption.APPEND);
//Creating a binary file:

byte data[] = ...
Path file = Paths.get("the-file-name");
Files.write(file, data);
//Files.write(file, data, StandardOpenOption.APPEND);
/////////////////////////////
//Convert a list to Map!!!
		Map<String, OrderItemDB> orderItemDBs = orderItemsDBResults.all(). //=> Cassandra's method, just fetch a list
		stream().collect(Collectors.toMap(item -> item.getOrderItemID(), v -> v));

		orderDBResult.getOrderItemDBList().addAll(orderItemDBs.values());
//////////////////////////
//get current date time
Calendar cal = Calendar.getInstance();
    Date date=cal.getTime();		
    
//////////////////Aspect:
////////////////////// 1. TimmerLogger:
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class TimerLogger {
    
    private static final Logger _logger = LogManager.getLogger(TimerLogger.class);
    
  @Around("execution(* *(..)) && @annotation(TimeLoggable)")
  public Object around(ProceedingJoinPoint point) throws Throwable {
    long start = System.currentTimeMillis();
    Object result = point.proceed();
     System.out.println(String.format("#%s(%s): %s in %[msec]s",
      MethodSignature.class.cast(point.getSignature()).getMethod().getName(),
      point.getArgs(),
      result,
      System.currentTimeMillis() - start
    ));
    _logger.info(
      "#%s(%s): %s in %[msec]s",
      MethodSignature.class.cast(point.getSignature()).getMethod().getName(),
      point.getArgs(),
      result,
      System.currentTimeMillis() - start
    );
    return result;
  }
}
    ////////////////2. TimeLoggable.java
    import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
public @interface TimeLoggable {
 
}

////////////////// 3. PSSProcessor.java
 @TimeLoggable
    public Document getResponse(NDCMessage msg, Document pssXml, boolean useCache) throws GatewayException {
        return getResponse(ImplCommons.getMessageId(msg), pssXml, useCache);
    }
//////////////////////4. POM.xml
 <dependency>
                    <groupId>org.springframework</groupId>
                    <artifactId>spring-aspects</artifactId>
                    <version>5.0.2.RELEASE</version>
                </dependency>
                   <dependency>
            <groupId>org.springframework.boot</groupId>
            <artifactId>spring-boot-starter</artifactId>
            <version>1.5.9.RELEASE</version>
        </dependency>   
///////////////////////////////////////////////////////////////////        
package com.javacodegeeks.advanced.design;
	public class AnonymousClass {
	    public static void main( String[] args ) {
	        new Thread(
	            new Runnable() {
	                @Override
	                public void run() {
	                    // Implementation here
	                }

	            }

	        ).start();
	    }
	}    
////////////////////////////////
package com.javacodegeeks.advanced.design;
	public class AnonymousClass {
	    public static void main( String[] args ) {
	        new Thread( () -> { /* Implementation here */ } ).start();
	    }
	}
	/////////////////////////////
	EnumSet<TestEnum> except = EnumSet.of(TestEnum.h1, TestEnum.h2, TestEnum.h3);
	
	/////java stream filter list
	List<String> result = lines.stream()                // convert list to stream
                .filter(line -> !"mkyong".equals(line))     // we dont like mkyong
                .collect(Collectors.toList());              // collect the output and convert streams to a List

        result.forEach(System.out::println);  
	
////////////////
List<String> list = Arrays.asList("java", "python", "nodejs", "ruby");

//java | python | nodejs | ruby
String result = list.stream().map(x -> x).collect(Collectors.joining(" | "));	
	
params.put("refs", price.getPriceClassRefs().stream().map(x -> "CLASS_" + x).collect(Collectors.joining(" ")));	
/////////////////////////////////////////
//java 8 stream
public static <T> Predicate<T> distinctByKey(Function<? super T, ?> keyExtractor) {
    Set<Object> seen = ConcurrentHashMap.newKeySet();
    return t -> seen.add(keyExtractor.apply(t));
}

persons.stream().filter(distinctByKey(Person::getName))

///////
persons.collect(toMap(Person::getName, p -> p, (p, q) -> p)).values();
/////////////////////////////////////
//array to stream:
Arrays.stream(array)
            .map(name-> name.charAt(0))
//////////////////////////insert node, adopt
docRS.getDocumentElement().appendChild(docRS.importNode(injectElementRq, true));
doc.getDocumentElement().getElementsByTagName("SeatMapDetails").item(0)
                                .appendChild(doc.importNode(sitaSeatMap.get(i).getDocumentElement().getElementsByTagName("CabinClass").item(0), true));
////replace dates 
LocalDate baseDate = LocalDate.now();
        Integer maximumRandomValue = 100; //we want to add a number of days between 0-100
        Integer randomDays = (int)(maximumRandomValue*Math.random());
        LocalDate randomDate = baseDate.plusDays(randomDays);
        String dateAsString = DateTimeFormatter.ofPattern("yyyy-MM-dd").format(randomDate);
		String request = loadFile(this.getClass(), "AirShoppingRQ_OneWay_OnePax.xml");
        request = request.replaceAll("\\<Date\\>(\\d+\\-\\d+\\-\\d+)\\<\\/Date\\>", "<Date>" + dateAsString + "</Date>");
//////////////////        
StringBuffer sb = new StringBuffer();
String s = "The red car, the red bike, and the red truck went down the red street.";
Pattern p = Pattern.compile("red");
Matcher m = p.matcher(s);
int count = 0;
while(m.find()) {
    if(count++ % 2 != 0) {
    m.appendReplacement(sb, "blue");
    }
}
m.appendTail(sb);
System.out.println(sb);
/////////////////////////
try {
            //extract variables
            InputSource source = new InputSource(new StringReader(rq));
            
            DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
            
            DocumentBuilder db = dbf.newDocumentBuilder();
            Document document = db.parse(source);
            
            
            
            
            XPathFactory xpathFactory = XPathFactory.newInstance();
            XPath xpath = xpathFactory.newXPath();
            xpathFactory = XPathFactory.newInstance();
            xpath = xpathFactory.newXPath();
            xpath.evaluate("/OrderViewRS/Response/Order/OrderID", document);
        } catch (ParserConfigurationException |XPathExpressionException| SAXException| IOException ex) {
            ex.printStackTrace();
        }
//////////////////////////////        
public static String getValueFromNode(Node startingNode, String queryPath, GlobalNamespace xnamespace)
            throws GatewayException {
        QueryEngine queryEngine = QueryEngine.getQueryEngine();
        if (queryPath == null || queryPath.length() == 0) {
            throw new GatewayException("Path expression is null or zero length");
        }
        String result = (String) queryEngine.read(startingNode, queryPath, XPathConstants.STRING, xnamespace);
        return (result == null || result.length() == 0) ? null : result;
    }
    /////joining
    //params.put("refs", serv.getPrices().stream().map(x -> "CLASS_" + x.getPriceClassRefs().get(0)).distinct().collect(Collectors.joining(" ")));
    
///////////////////////////
  try { System.out.println(DomCreateCommons.documentToString(airPriceRS));} catch (Exception ex) {}
/////////////////////////////
Map<String, PassengerHolder> passengerHolders =  rqFilter.getPassengers().stream().
filter(a -> a.getProfile() == null)
.collect(Collectors.toMap(PassengerHolder::getProfile, p -> , (a, b) -> b));
////////////////////////            
 public static OrderCancelStatus otaCancelRSCheckErrors(Document otaCancelRS) {
        try {
            XPath xpath = XPathFactory.newInstance().newXPath();

            Node success = (Node) xpath.evaluate("/*/*[local-name()='Success']", otaCancelRS, XPathConstants.NODE);
            if (success != null) {
                return OrderCancelStatus.SUCCESSS;
            }
            Node errors = (Node) xpath.evaluate("/*/*[local-name()='Errors']", otaCancelRS, XPathConstants.NODE);

            if (errors != null) {
                String errorCode = xpath.evaluate("./*[local-name()='Error']/@Code", errors);
                if (errorCode != null && errorCode.equals("101")) {
                    String msg = xpath.evaluate("./*[local-name()='Error']/text()", errors);
                    LOGGER.error("\nSITA Error: " + msg);
                    if (msg.contains("THIS PNR WAS ENTIRELY CANCELLED") 
                        //|| msg.contains("CHECK SSR OTHS TO XS") 
                        ) {
                        return OrderCancelStatus.ALREADY_CANCELLED;
                    }
                    
                }
                return OrderCancelStatus.ERROR;
            }

        } catch (XPathExpressionException ex) {
            // will never happen since all xpath expressions are hardcoded
            LOGGER.error("Xpath expression error", ex);
        }
        return OrderCancelStatus.ERROR;
    }
////////////////////////////////////////    
// Unmarshall string to JaxB
		try {
			JAXBContext jaxbContext = JAXBContext.newInstance(OrderCancelRS.class);
			Unmarshaller jaxbUnmarshaller = jaxbContext.createUnmarshaller();
			StringReader reader = new StringReader(xmlResponse);
			OrderCancelRS orderCancelRS = (OrderCancelRS) jaxbUnmarshaller.unmarshal(reader) ;
			
			if(orderCancelRS.getSuccess()!=null){
				orderCancelRSDTO.setOrderID(orderCancelRS.getResponse().get(0).getOrderReference());
				orderCancelRSDTO.setStatus("Success");
			}
		} catch (JAXBException e) {
			e.printStackTrace();

		}
/////////////Map to List Set after filtering
		List<String> wordsForGivenAlphabet = words.entrySet().stream()
    .filter(x-> x.getKey().equalsIgnoreCase(inputAlphabet))
    .map(Map.Entry::getValue)
    .flatMap(List::stream) 
    .collect(Collectors.toList());
    
////////////////////
BigDecimal taxTotal =
                            order.getOrderItemList().stream().map(e->e.getPrice().getTaxAmount().getAmount().getValue())
                            .reduce(BigDecimal.ZERO, BigDecimal::add);
/////////////                            
private final static UnmodifiableListSet<String> INTERNATIONAL_CODES = new UnmodifiableListSet<>(Arrays.asList("SXM","PBM" ));                            

/////OriginDestinationReferences:

Object oo = OBJECT_FACTORY.createOriginDestinationReferences(ondList);
flight.getOriginDestinationReferencesOrSegmentReferences().add(oo);
/////or..
QName fooQName = new QName("http://www.iata.org/IATA/EDIST", "OriginDestinationReferences");
JAXBElement<List> fooValue = new JAXBElement<List>(fooQName, List.class, ondList);
flight.getOriginDestinationReferencesOrSegmentReferences().add(fooValue);
///////////////////////
boolean isFlex = order.getPriceClasses().stream().anyMatch(p-> p.getClassName().equals("E_ECONOMY_FLEXIBLE"));

///// Sum a list of integers
ntegers.values().stream().mapToInt(i -> i.intValue()).sum();
integers.values().stream().mapToInt(Integer::intValue).sum();
////convert cassandra date into date:
com.datastax.driver.core.LocalDate.fromMillisSinceEpoch(travelDate.getTime()
///////////////////
final DecimalFormat df2 = new DecimalFormat(".##");
df2.format(orderviewRSDTO.getOrder().getOrderItems().stream().mapToDouble(i -> i.getBaseAmount()).sum());
////round:
public static BigDecimal round(float d, int decimalPlace) {
        BigDecimal bd = new BigDecimal(Float.toString(d));
        bd = bd.setScale(decimalPlace, BigDecimal.ROUND_HALF_UP);
        return bd;
    }
/////////////////////
//convert all string list element uppercase
list.replaceAll(String::toUpperCase);
list.stream().map(String::toUpperCase).collect(Collectors.toList());
////wrap node, create document 
 public static Document wrapNodeToDoc(Node node) throws GatewayException {
        DocumentBuilder documentBuilder;
        DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
        dbf.setNamespaceAware(true);
        dbf.setCoalescing(true);
        dbf.setIgnoringElementContentWhitespace(true);
        dbf.setIgnoringComments(true);
        Document newDocument;
        try{
            documentBuilder = dbf.newDocumentBuilder();
            newDocument = documentBuilder.newDocument();
            newDocument.appendChild(newDocument.importNode(node, true));
            newDocument.normalizeDocument();
            //String pssXmlRQ = DomCreateCommons.documentToString(newDocument);
            //newDocument = DomLoadCommons.stringToDocument(pssXmlRQ);
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }
        return newDocument;
    }
////////////////////////    
NodeList nodes = doc.getDocumentElement().getElementsByTagNameNS("*", str);
////// ignore namespace
soapMessage.getMimeHeaders().addHeader(
    "Cookie", requiredCookieName + "=" + requiredCookieValue);
    /////////////////////////
    System.out.println(DomCreateCommons.documentToString(sitaRs));
    /////////////
    ticketToFlightMap.values().stream().map(a->a.size()).reduce(Integer::sum).get()
////////////////////////////////
 public static Object convertXmlToObject(String xml, Class classType) {
        //public static Object convertXmlToObject(String xml, class classType)
        Object o = null;
        try {

            JAXBContext jaxbContext = JAXBContext.newInstance(classType);

            Unmarshaller jaxbUnmarshaller = jaxbContext.createUnmarshaller();
            StringReader reader = new StringReader(xml);
            o = jaxbUnmarshaller.unmarshal(reader);
            Class c = o.getClass();

        } catch (JAXBException e) {
            e.printStackTrace();
        }
        return o;
    }
    public static String convertObjectToXml(Object o, Class classType) {
        String xmlString = null;
        try {

            JAXBContext jaxbContext = JAXBContext.newInstance(classType);
            Marshaller jaxbMarshaller = jaxbContext.createMarshaller();
            
            // output pretty printed
            jaxbMarshaller.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);

            StringWriter sw = new StringWriter();
            jaxbMarshaller.marshal(o, sw);
            xmlString = sw.toString();

        } catch (JAXBException e) {
            e.printStackTrace();
        }
        return xmlString;
    }
/////////////////////        
Map<String, List<String>> requestHeaders = (Map<String, List<String>>) ((BindingProvider)arrService).getRequestContext().get(MessageContext.HTTP_REQUEST_HEADERS);
		for (Map.Entry<String, List<String>> entry : requestHeaders.entrySet()) {
            System.out.println("Header: " + entry.getKey());
            System.out.println("= " + String.join("#", entry.getValue()));
        }
////////////////generate code
            
 public static Set<String> vars = new HashSet<>();
    public static List<String> ommit = Arrays.asList("wait","notify", "notifyAll");
    
    public static String getUniqueName(String n){
        int i=1;
        String n1 = new String(n);
        while(vars.contains(n1)){
            n1 = n+(""+i);
            i++;
        }
        vars.add(n1);
        return n1;
        
    }
    
    public static String generateCode(Class type, String context) throws ClassNotFoundException{
        String className = type.getSimpleName();
        String varName = type.getSimpleName().substring(1);
        varName = type.getSimpleName().substring(0, 1).toLowerCase()+ varName;
        varName = getUniqueName(varName);
        
        System.out.println("//******* " + className);
        System.out.println(className +" " + varName +" = new "+ className + "(" + ");" );
        for(Method method:type.getMethods()){
            if(ommit.contains(method.getName()))
                continue;
            if(method.getReturnType().equals(Void.TYPE)){
                List<String> params = new ArrayList<>();
                for (Parameter param: method.getParameters()){
                    if(param.getType().getName().startsWith(context)){
                        String n = generateCode(param.getType(), context);
                        params.add(n);
                    }else{
                        String paramName =  param.getName();
                        paramName = getUniqueName(paramName);
                        params.add(paramName);
                    }
                    
                }
                System.out.println(varName+ "." + method.getName()+"("+String.join(" , ", params)+");");
                
                
            }
            else if(Collection.class.isAssignableFrom(method.getReturnType()) || Map.class.isAssignableFrom(method.getReturnType())){
                String t = method.getGenericReturnType().getTypeName();
                String tt = t.substring(t.indexOf("<")+1, t.indexOf(">"));
                Class c = Class.forName(tt);
                String cname = c.getSimpleName();
                if(c.getName().startsWith(context)){
                    cname = generateCode(c,context);
                }else{
                    cname = cname.substring(0, 1).toLowerCase()+ cname.substring(1);
                    cname = getUniqueName(cname);
                }
                System.out.println(varName+ "." + method.getName()+"().add("+cname+");");    
                
            }
            
            
        }
        return varName;
        
    }


 utils.generateCode(SITAAirfarePriceRQ.class,"sita.airfarepricerq");


///////////////////////////////////////sum bigdecimals using java streams
BigDecimal penaltyAmount = offerItem.getPrice().getFeeList().stream().map(a->a.getAmount().getValue()).reduce(BigDecimal.ZERO,BigDecimal::add).get();                    
////////
 try {System.out.println(CommonUtils.convertObjectToXml(retrieveRefundDetails,org.datacontract.schemas._2004._07.sita_services.ARRRetrieveRefundDetails.class));} catch (Exception ex) {}
//////////////////////                
private final static Map<String, Map<String, String>> responseIdToSessionIdMap = Collections.synchronizedMap(createLRUMap(MAX_SESSION_ENTRIES));

    public static <K, V> Map<K, V> createLRUMap(final int maxEntries) {
        return new java.util.LinkedHashMap<K,V> (maxEntries*10/7, 0.7f, true) {
            @Override
            protected boolean removeEldestEntry(Map.Entry<K, V> eldest) {
                return size() > maxEntries;
            }
        };
    }
    
/////////////////////////////////////
airDemandDoc.getDocumentElement().getElementsByTagName("TicketDocument").item(0).getAttributes().getNamedItem("InConnectionDocNbr").setNodeValue("958" + ticketNbr);
/////////////
 public static <K, V extends Comparable<? super V>> Map<K, V> sortByValue(Map<K, V> map) {
        List<Entry<K, V>> list = new ArrayList<>(map.entrySet());
        list.sort(Entry.comparingByValue());

        LinkedHashMap<K, V> result = new LinkedHashMap<>();
        for (Entry<K, V> entry : list) {
            result.put(entry.getKey(), entry.getValue());
        }
        result.get(null).
        return result;
    }


List< OrderItemHolder> thisPaxThisServiceOrderItems = thisPaxOrderItems.stream().filter(a -> a.getServiceList().get(0).getServiceDefinitionRef().equals(serviceID)).
                    sorted((o1, o2) -> segmentHolderMap.get(o1.getServiceList().get(0).getApplicableFlights().get(0).get(0).toString()).compareTo(segmentHolderMap.get(o2.getServiceList().get(0).getApplicableFlights().get(0).get(0).toString()))).
                    collect(Collectors.toList());

////////////////////
 public static Object convertXmlToObject(String xml,  Class classType) throws GatewayException {
        Object o = null;
        Unmarshaller jaxbUnmarshaller;
            jaxbUnmarshaller = unmarsalers.computeIfAbsent(classType.getName(), (b)->{
                    Unmarshaller jaxbUnmarshaller1 = null;
                    try {
                       JAXBContext jaxbContext = JAXBContext.newInstance(classType);
                       jaxbUnmarshaller1 = jaxbContext.createUnmarshaller();
                    } catch (JAXBException e) {
                            e.printStackTrace();
                    }
                    return jaxbUnmarshaller1;
            });
            

            StringReader reader = new StringReader(xml);
            try {
                o = jaxbUnmarshaller.unmarshal(reader);
            } catch (JAXBException e) {
                e.printStackTrace();
                throw new GatewayException("Unable to Unmarshal: "+ classType.getName());
            }
        return o;
   }

    public static String convertObjectToXml(Object o, Class classType) throws Exception {
        String xmlString = null;
            Marshaller jaxbMarshaller;
            
            jaxbMarshaller = marsalers.computeIfAbsent(classType.getName(), (b)->{
                 Marshaller jaxbMarshaller1 = null;
                try {
                    JAXBContext jaxbContext = JAXBContext.newInstance(classType);
                    jaxbMarshaller1 = jaxbContext.createMarshaller();
                    jaxbMarshaller1.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
                
                } catch (JAXBException e) {
                    e.printStackTrace();
                }
                return jaxbMarshaller1;
            });
            
            StringWriter sw = new StringWriter();
            jaxbMarshaller.marshal(o, sw);
            xmlString = sw.toString();

        return xmlString;
    }
/////////////////////////////     
Math.toIntExact : long to int
////remove loading zero: 
s.replaceFirst("^0+(?!$)", "")
////////////////
Optional<UserDTO> userDTO = userService.getUserByEmail(currentPrincipalName);
userDTO.ifPresent(userDTO1 -> errorLogDTO.setUserId(userDTO1.getId()));
////////////////////
[1:24 µ.µ.] Georgios Stylianakis
@JsonIgnoreProperties(value={"bookName","bookCategory"}, allowSetters=true)

@JsonInclude(Include.NON_NULL)

//////////////////////cache in spring
// https://docs.spring.io/spring/docs/current/spring-framework-reference/integration.html#cache
//https://spring.io/guides/gs/caching/
//https://www.foreach.be/blog/spring-cache-annotations-some-tips-tricks
@Repository("movieDao")
public class MovieDaoImpl implements MovieDao{

	//This "movieFindCache" is delcares in ehcache.xml
	@Cacheable(value="movieFindCache", key="#name")
	public Movie findByDirector(String name) {
		slowQuery(2000L);
		System.out.println("findByDirector is running...");
		return new Movie(1,"Forrest Gump","Robert Zemeckis");
	}
	
	@Cacheable (value = "product_count", key = "{#filter, #collection_uuid}")
public Integer count(String filter, String collection_uuid)
{
   return productDao.count(filter, collection_uuid);
}

@Cacheable(value = "git.tags", key = "#node.getPath()", condition = "#refresh == false")
public List<String> tags(Node node, boolean refresh) {
    GitClient client = gitClientInstance(node);
    try {
        return client.tags();
    } catch (GitException e) {
        throw new IllegalStatusException("Cannot load tag list from git: " + e.getMessage());
    }
}
@Cacheable(value = "telement_role", key = "'role_element_'+#role")
public List<TElementVo> getListByRole(String role) {
    List<TElementVo> resultList = new ArrayList<>();
    List<TElement> tElements = mapper.getListByRole(role);
    tElements.forEach(tElement -> {
        TElementVo tElementVo = new TElementVo();
        BeanUtils.copyProperties(tElement,tElementVo);
        resultList.add(tElementVo);
    });
    return resultList;
}
@Cacheable(value = "busiSupport:securityService:userRoles", key = "#p0 + '_' +#p1")
@CacheDuration
@Override
public List<Role> getUserRoleList(String username, Byte accountType) {
    String systemCode = AccountType.getSystemCode(accountType);
    CustomerUserDetail userDetail = securityDao.getUserDetailByName(username, accountType, systemCode);
    return userDetail == null ? null : userDetail.getRoles();
}

//////////////////////	java 8 sream peek
//this method exists mainly to support debugging, where you want to see the elements as they flow past a certain point in a pipeline." //This is exactly what the example and output shown above demonstrate and is likely the most common application of 
final List<String> strings  
   = Stream.of("one", "two", "three", "four")  
      .peek(e-> out.println("Original Element: " + e))  
      .filter(e -> e.length() > 3)  
      .peek(e -> out.println("Filtered value: " + e))  
      .map(String::toUpperCase)  
      .peek(e -> out.println("Mapped value: " + e))  
      .collect(Collectors.toList());  
out.println("Final Results: " + strings);
/*
Original Element: one
Original Element: two
Original Element: three
Filtered value: three
Mapped value: THREE
Original Element: four
Filtered value: four
Mapped value: FOUR
Final Results: [THREE, FOUR]
*/
Map<String, PriceOptimizationDTO> priceOptimizationMap = priceOptimizationService.findAll()
            .stream().peek(p -> p.getRuleSets().forEach(r -> r.setRuleData(ruleSetMap.get(r.getId()).getRuleData())))
            .collect(Collectors.toMap(PriceOptimizationDTO::getId, Function.identity()));
            
/////////////////////////////Map sort by value:
levels.entrySet().stream().sorted(Map.Entry.comparingByValue())
/////use Mapper:
@Repository
public class MediaRepository {

    private final Session session;

    private Mapper<Media> mapper;

    public MediaRepository(Session session) {
        this.session = session;
        this.mapper = new MappingManager(session).mapper(Media.class);
    }

    public List<Media> findMany(List<String> idList, String type) {
        List<Media> result = new ArrayList<>();
        List<ResultSetFuture> futures = new ArrayList<>();
        for (String id : idList) {
            futures.add(session.executeAsync(mapper.getQuery(type, id)));
        }
        for (ResultSetFuture future : futures) {
            Media media = mapper.map(future.getUninterruptibly()).one();
            if (media != null) {
                result.add(media);
            }
        }
        return result;
    }
}
/////////////////////////////enable compression in spring boot
# Whether response compression is enabled.
server.compression.enabled=true

# List of user-agents to exclude from compression.
server.compression.excluded-user-agents= 

# Comma-separated list of MIME types that should be compressed. Default mime-types are: text/html, text/xml, text/plain, text/css
server.compression.mime-types=text/html,text/xml,text/plain,text/css,text/javascript,application/javascript 

# Minimum "Content-Length" value that is required for compression to be performed.
server.compression.min-response-size=2048
//////////////////////
return new long[]{hours, minutes, secs};
///////////////////////////
 public ServiceListRQMessage parseServiceListRQ(InputStream stream) throws Exception {
        String xmlString = IOUtils.toString(stream, UTF8_ENCODING);
        return parseServiceListRQ(xmlString);
    }
/////////////////////////////    mysql:

@Entity
class Person {
    @Id
    private String guid;
    private String firstName;
    private String organisationGuid;
    ...
    ...
}
@Entity
class Organisation {
    @Id
    private String guid;
    private String name;
    ...
    ...
}

@Repository
public interface PersonRepository extends CrudRepository<Person, String> {
    @Query(nativeQuery = true, value = "select p.*, o.name as organisation_name from person p left join organisation o on p.organisation_guid = o.guid")
    List<Person> findAll();
}

@Entity
class Person {
  @Id
  private String guid;
  private String firstName;

  @ManyToOne
  @JoinColumn(name = "organisationGuid")
  private Organisation organisation;

@Repository
public interface PersonRepository extends CrudRepository<Person, String> {
    @Query("select NEW com.mypkg.PersonOrganization(p.guid as guid ...
                , o.name as organisationName) 
            from person p left join p.organisation o")
    List<PersonOrganization> findPersonWithOrganization();
}
/////
@Mapping(target = "version", source = "version", expression = "java(java.util.UUID.randomUUID().toString())")
    List<Airport> toEntity(List<AirportDTO> dtos);

List<Flight> flightList = flightRepository.findByNameIn(idList)