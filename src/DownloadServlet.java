import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.w3c.dom.Attr;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

@WebServlet("/DownloadServlet")
public class DownloadServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static final String SAVE_DIR = "uploadFiles";

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("Inside Doget");
		try {
			// ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

			DocumentBuilderFactory docFactory = DocumentBuilderFactory
					.newInstance();
			DocumentBuilder docBuilder = docFactory.newDocumentBuilder();

			// root elements
			Document doc = docBuilder.newDocument();
			Element rootElement = doc.createElement("task14");
			doc.appendChild(rootElement);
			// version elements
			Element version = doc.createElement("Version");
			rootElement.appendChild(version);

			System.out.println("Version:"+request.getParameter("version"));
			// set attribute to version element
			Attr attr = doc.createAttribute("id");
			attr.setValue(request.getParameter("version"));
			version.setAttributeNode(attr);

			// shorten way
			// version.setAttribute("id", "1");

			// Element date = doc.createElement("date");
			// date.appendChild(doc.createTextNode(request.getParameter("date")));
			// version.appendChild(date);
			if (request.getParameter("version").equals("1")) {

				version.appendChild(attachSingleChild(doc, "date", request));
				version.appendChild(attachSingleChild(doc, "bankName", request));
				appendMultipleChild(doc, version, request, "information");
				appendMultipleChild(doc, version, request, "whose");
				appendMultipleChild(doc, version, request, "r11");
				appendMultipleChild(doc, version, request, "r12");
				appendMultipleChild(doc, version, request, "r21");
				appendMultipleChild(doc, version, request, "r22");
				appendMultipleChild(doc, version, request, "r31");
				appendMultipleChild(doc, version, request, "r32");
				appendMultipleChild(doc, version, request, "r41");
				appendMultipleChild(doc, version, request, "r42");
				appendMultipleChild(doc, version, request, "r51");
				appendMultipleChild(doc, version, request, "r52");
				appendMultipleChild(doc, version, request, "qf");
				appendMultipleChild(doc, version, request, "r61");
				appendMultipleChild(doc, version, request, "r62");
				appendMultipleChild(doc, version, request, "r71");
				appendMultipleChild(doc, version, request, "r72");
				version.appendChild(attachSingleChild(doc, "phoneNumber",
						request));
				version.appendChild(attachSingleChild(doc, "onlineWebsite",
						request));
				version.appendChild(attachSingleChild(doc,
						"whoProvidingNotice", request));
				version.appendChild(attachSingleChild(doc,
						"howWeProtectPersonalInfo", request));
				appendMultipleChild(doc, version, request, "informationWhen");
				appendMultipleChild(doc, version, request, "q10");
				version.appendChild(attachSingleChild(doc, "whyCantLimitShare",
						request));
				version.appendChild(attachSingleChild(doc, "affiliatesName",
						request));
				version.appendChild(attachSingleChild(doc, "affiliatesList1",
						request));
				version.appendChild(attachSingleChild(doc, "affiliatesList2",
						request));
				version.appendChild(attachSingleChild(doc, "affiliatesList3",
						request));
				version.appendChild(attachSingleChild(doc, "nonAffiliates",
						request));
				appendMultipleChild(doc, version, request, "jointMkt");
				version.appendChild(attachSingleChild(doc, "jointMarketing",
						request));
				version.appendChild(attachSingleChild(doc, "otherInfo", request));

			} else if (request.getParameter("version").equals("2")) {

				version.appendChild(attachSingleChild(doc, "date", request));
				version.appendChild(attachSingleChild(doc, "bankName", request));
				appendMultipleChild(doc, version, request, "information");
				appendMultipleChild(doc, version, request, "whose");
				appendMultipleChild(doc, version, request, "r11");
				appendMultipleChild(doc, version, request, "r12");
				appendMultipleChild(doc, version, request, "r21");
				appendMultipleChild(doc, version, request, "r22");
				appendMultipleChild(doc, version, request, "r31");
				appendMultipleChild(doc, version, request, "r32");
				appendMultipleChild(doc, version, request, "r41");
				appendMultipleChild(doc, version, request, "r42");
				appendMultipleChild(doc, version, request, "r51");
				appendMultipleChild(doc, version, request, "r52");
				appendMultipleChild(doc, version, request, "qf");
				appendMultipleChild(doc, version, request, "r61");
				appendMultipleChild(doc, version, request, "r62");
				appendMultipleChild(doc, version, request, "r71");
				appendMultipleChild(doc, version, request, "r72");
				version.appendChild(attachSingleChild(doc,
						"limitSharingPhoneNumber", request));

				version.appendChild(attachSingleChild(doc,
						"limitSharingOnlineWebsite", request));
				version.appendChild(attachSingleChild(doc,
						"sharingWithinDays1", request));
				version.appendChild(attachSingleChild(doc, "phoneNumber",
						request));
				version.appendChild(attachSingleChild(doc, "onlineWebsite",
						request));
				version.appendChild(attachSingleChild(doc,
						"whoProvidingNotice", request));
				version.appendChild(attachSingleChild(doc,
						"howWeProtectPersonalInfo", request));
				appendMultipleChild(doc, version, request, "informationWhen");
				appendMultipleChild(doc, version, request, "q10");
				version.appendChild(attachSingleChild(doc, "whyCantLimitShare",
						request));
				version.appendChild(attachSingleChild(doc, "affiliatesName",
						request));
				version.appendChild(attachSingleChild(doc, "affiliatesList1",
						request));
				version.appendChild(attachSingleChild(doc, "affiliatesList2",
						request));
				version.appendChild(attachSingleChild(doc, "affiliatesList3",
						request));
				version.appendChild(attachSingleChild(doc, "nonAffiliates",
						request));
				appendMultipleChild(doc, version, request, "jointMkt");
				version.appendChild(attachSingleChild(doc, "jointMarketing",
						request));
				version.appendChild(attachSingleChild(doc, "otherInfo", request));

			} else if (request.getParameter("version").equals("3")) {

				version.appendChild(attachSingleChild(doc, "date", request));
				version.appendChild(attachSingleChild(doc, "bankName", request));
				appendMultipleChild(doc, version, request, "information");
				appendMultipleChild(doc, version, request, "whose");
				appendMultipleChild(doc, version, request, "r11");
				appendMultipleChild(doc, version, request, "r12");
				appendMultipleChild(doc, version, request, "r21");
				appendMultipleChild(doc, version, request, "r22");
				appendMultipleChild(doc, version, request, "r31");
				appendMultipleChild(doc, version, request, "r32");
				appendMultipleChild(doc, version, request, "r41");
				appendMultipleChild(doc, version, request, "r42");
				appendMultipleChild(doc, version, request, "r51");
				appendMultipleChild(doc, version, request, "r52");
				appendMultipleChild(doc, version, request, "qf");
				appendMultipleChild(doc, version, request, "r61");
				appendMultipleChild(doc, version, request, "r62");
				appendMultipleChild(doc, version, request, "r71");
				appendMultipleChild(doc, version, request, "r72");
				version.appendChild(attachSingleChild(doc,
						"limitSharingPhoneNumber", request));

				version.appendChild(attachSingleChild(doc,
						"limitSharingOnlineWebsite", request));
				version.appendChild(attachSingleChild(doc,
						"sharingWithinDays1", request));
				version.appendChild(attachSingleChild(doc, "phoneNumber",
						request));
				version.appendChild(attachSingleChild(doc, "onlineWebsite",
						request));
				appendMultipleChild(doc, version, request, "applyChoices");
				version.appendChild(attachSingleChild(doc, "address1", request));
				version.appendChild(attachSingleChild(doc, "address2", request));
				version.appendChild(attachSingleChild(doc, "city", request));
				version.appendChild(attachSingleChild(doc, "state", request));
				version.appendChild(attachSingleChild(doc, "zip", request));
				appendMultipleChild(doc, version, request, "accountNumber");
				version.appendChild(attachSingleChild(doc,
						"whoProvidingNotice", request));
				version.appendChild(attachSingleChild(doc,
						"howWeProtectPersonalInfo", request));
				appendMultipleChild(doc, version, request, "informationWhen");
				appendMultipleChild(doc, version, request, "q10");
				version.appendChild(attachSingleChild(doc, "whyCantLimitShare",
						request));
				version.appendChild(attachSingleChild(doc, "affiliatesName",
						request));
				version.appendChild(attachSingleChild(doc, "affiliatesList1",
						request));
				version.appendChild(attachSingleChild(doc, "affiliatesList2",
						request));
				version.appendChild(attachSingleChild(doc, "affiliatesList3",
						request));
				version.appendChild(attachSingleChild(doc, "nonAffiliates",
						request));
				appendMultipleChild(doc, version, request, "jointMkt");
				version.appendChild(attachSingleChild(doc, "jointMarketing",
						request));
				version.appendChild(attachSingleChild(doc, "otherInfo", request));

			} else if (request.getParameter("version").equals("4")) {
				version.appendChild(attachSingleChild(doc, "bankName", request));
				appendMultipleChild(doc, version, request, "applyChoices");
				version.appendChild(attachSingleChild(doc, "address1", request));
				version.appendChild(attachSingleChild(doc, "address2", request));
				version.appendChild(attachSingleChild(doc, "city", request));
				version.appendChild(attachSingleChild(doc, "state", request));
				version.appendChild(attachSingleChild(doc, "zip", request));
				appendMultipleChild(doc, version, request, "accountNumber");
			}

			Date date = Calendar.getInstance().getTime();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd.hhmmss");
			String appPath = request.getServletContext().getRealPath("");
			String filePath = appPath + File.separator + SAVE_DIR;
			String fileName = sdf.format(date) + ".xml";
			// write the content into xml file
			TransformerFactory transformerFactory = TransformerFactory
					.newInstance();
			Transformer transformer = transformerFactory.newTransformer();
			transformer.setOutputProperty(OutputKeys.INDENT, "yes");
			transformer.setOutputProperty(
					"{http://xml.apache.org/xslt}indent-amount", "2");
			System.out.println(domToString(doc));
			DOMSource source = new DOMSource(doc);
			File file = new File(filePath + File.separator + fileName);
			file.getParentFile().mkdirs();

			StreamResult result = new StreamResult(file);

			System.out.println("File saved successfully on server!!!!");
			// Output to console for testing
			// StreamResult result = new StreamResult(System.out);

			try {
				transformer.transform(source, result);
			} catch (TransformerException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			// ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			response.setContentType("APPLICATION/OCTET-STREAM");
			response.setHeader("Content-Disposition", "attachment; filename=\""
					+ fileName + "\"");

			java.io.FileInputStream fileInputStream = new java.io.FileInputStream(
					filePath + File.separator + fileName);

			int i;
			while ((i = fileInputStream.read()) != -1) {
				out.write(i);
			}
			fileInputStream.close();
			out.close();
		} catch (ParserConfigurationException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (TransformerConfigurationException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	}

	private void appendMultipleChild(Document doc, Element version,
			HttpServletRequest request, String tagName) {
		String[] results = request.getParameterValues(tagName);
		if (results != null && results.length > 0) {
			System.out.println("appendMultipleChild for tagName:"+tagName+" value:"+Arrays.toString(results));
			for (int i = 0; i < results.length; i++) {
				Element temp = doc.createElement(tagName);
				temp.appendChild(doc.createTextNode(results[i]));
				version.appendChild(temp);
			}
		}

	}

	private Element attachSingleChild(Document doc, String tagName,
			HttpServletRequest request) {
		System.out.println("attachSingleChild for tagName:"+tagName+" value:"+request.getParameter(tagName));
		Element temp = doc.createElement(tagName);
		temp.appendChild(doc.createTextNode(request.getParameter(tagName)));
		// version.appendChild(date);
		return temp;
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Inside DoPost");
		doGet(request, response);
	}
	
	public static String domToString(Document doc) {
	    try {
	        StringWriter sw = new StringWriter();
	        TransformerFactory tf = TransformerFactory.newInstance();
	        Transformer transformer = tf.newTransformer();
	        transformer.setOutputProperty(OutputKeys.OMIT_XML_DECLARATION, "no");
	        transformer.setOutputProperty(OutputKeys.METHOD, "xml");
	        transformer.setOutputProperty(OutputKeys.INDENT, "yes");
	        transformer.setOutputProperty(OutputKeys.ENCODING, "UTF-8");

	        transformer.transform(new DOMSource(doc), new StreamResult(sw));
	        return sw.toString();
	    } catch (Exception ex) {
	        throw new RuntimeException("Error converting to String", ex);
	    }
	}
}
