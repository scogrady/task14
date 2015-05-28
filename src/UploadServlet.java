import java.io.File;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.DOMException;
import org.w3c.dom.Document;
import org.w3c.dom.NodeList;
import org.w3c.dom.Node;
import org.w3c.dom.Element;
import org.xml.sax.SAXException;

import databean.MyBeanV1;
import databean.MyBeanV2;
import databean.MyBeanV3;
import databean.MyBeanV4;

@WebServlet("/UploadServlet")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
maxFileSize = 1024 * 1024 * 10, // 10MB
maxRequestSize = 1024 * 1024 * 50)
// 50MB
public class UploadServlet extends HttpServlet {

	/**
	 *  
	 */
	private static final long serialVersionUID = 1L;
	/**
	 * Name of the directory where uploaded files will be saved, relative to the
	 * web application directory.
	 */
	private static final String SAVE_DIR = "uploadFiles";

	/**
	 * handles file upload
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		try {
			String fileName = "";
			// gets absolute path of the web application
			String appPath = request.getServletContext().getRealPath("");
			// constructs path of the directory to save uploaded file
			String savePath = appPath + File.separator + SAVE_DIR;

			System.out.println("Saved Path:" + savePath);

			// creates the save directory if it does not exists
			File fileSaveDir = new File(savePath);
			if (!fileSaveDir.exists()) {
				fileSaveDir.mkdir();
			}

			for (Part part : request.getParts()) {
				fileName = extractFileName(part);
				part.write(savePath + File.separator + fileName);
			}

			// request.setAttribute("message",
			// "Upload has been done successfully!");
			// getServletContext().getRequestDispatcher("/message.jsp").forward(
			// request, response);

			// //////////////////////////////////////////////////////////////////////////////////////////////

			File fXmlFile = new File(savePath + File.separator + fileName);
			DocumentBuilderFactory dbFactory = DocumentBuilderFactory
					.newInstance();
			DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
			Document doc = dBuilder.parse(fXmlFile);

			// optional, but recommended
			// read this -
			// http://stackoverflow.com/questions/13786607/normalization-in-dom-parsing-with-java-how-does-it-work
			doc.getDocumentElement().normalize();

			System.out.println("Root element :"
					+ doc.getDocumentElement().getNodeName());

			NodeList nList = doc.getElementsByTagName("Version");
			System.out.println("----------------------------");

			for (int temp = 0; temp < nList.getLength(); temp++) {

				Node nNode = nList.item(temp);

				System.out.println("\nCurrent Element :" + nNode.getNodeName());
				System.out.println("No:" + nNode.getNodeValue());

				if (nNode.getNodeType() == Node.ELEMENT_NODE) {

					Element eElement = (Element) nNode;

					String versionId = eElement.getAttribute("id");
					switch (versionId) {
					case "1":
						request.setAttribute("mybean",
								processVersion1(eElement));
						RequestDispatcher rd = getServletContext()
								.getRequestDispatcher("/v1.jsp");
						rd.forward(request, response);
						break;
					case "2":
						request.setAttribute("mybean",
								processVersion2(eElement));
						rd = getServletContext()
								.getRequestDispatcher("/v2.jsp");
						rd.forward(request, response);
						break;
					case "3":
						request.setAttribute("mybean",
								processVersion3(eElement));
						rd = getServletContext()
								.getRequestDispatcher("/v3.jsp");
						rd.forward(request, response);
						break;
					case "4":
						request.setAttribute("mybean",
								processVersion4(eElement));
						rd = getServletContext()
								.getRequestDispatcher("/v4.jsp");
						rd.forward(request, response);
						break;
					}
				}
			}
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (DOMException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ParserConfigurationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SAXException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private MyBeanV4 processVersion4(Element eElement) {
		NodeList SingleOptionNode = null;
		MyBeanV4 bean = new MyBeanV4();
		bean.setField1(getFieldof2Lengths("applyChoices", 2, "yes", "no",
				eElement, SingleOptionNode));
		bean.setField2(eElement.getElementsByTagName("address1")
				.item(0).getTextContent());
		bean.setField3(eElement.getElementsByTagName("address2")
				.item(0).getTextContent());
		bean.setField4(eElement.getElementsByTagName("city")
				.item(0).getTextContent());
		bean.setField5(eElement.getElementsByTagName("state")
				.item(0).getTextContent());
		bean.setField6(eElement.getElementsByTagName("zip")
				.item(0).getTextContent());
		bean.setField7(getFieldof2Lengths("accountNumber", 2, "yes", "no",
				eElement, SingleOptionNode));
		return bean;
	}

	private MyBeanV3 processVersion3(Element eElement) {
		NodeList SingleOptionNode = null;
		MyBeanV3 bean = new MyBeanV3();
		bean.setField1(eElement.getElementsByTagName("date").item(0)
				.getTextContent());
		bean.setField2(eElement.getElementsByTagName("bankName").item(0)
				.getTextContent());

		bean.setField3(getFieldof24Lengths("information", 24, "income",
				"accountBalances", "paymentHistory", "transactionHistory",
				"transactionOrLossHistory", "creditHistory", "creditScores",
				"assets", "investmentExperience",
				"credit-basedInsuranceScores", "insuranceClaimHistory",
				"purchaseHistory", "medicalInformation", "overdraftHistory",
				"purchaseHistory", "accountTransactions", "riskTolerance",
				"medical-relatedDebts", "creditHCardOrOtherDebts",
				"mortgageRatesAndPayments", "retirementAssets",
				"checkingAccountInformation", "employmentInformation",
				"wireTransferInstructions", eElement, SingleOptionNode));
		bean.setField4(getFieldof2Lengths("whose", 2, "customer", "member",
				eElement, SingleOptionNode));
		bean.setField5(getFieldof2Lengths("r11", 2, "11yes", "11no", eElement,
				SingleOptionNode));
		bean.setField6(getFieldof2Lengths("r12", 2, "yes", "no", eElement,
				SingleOptionNode));
		bean.setField7(getFieldof2Lengths("r21", 2, "21yes", "21no", eElement,
				SingleOptionNode));
		bean.setField8(getFieldof2Lengths("r22", 2, "yes", "no", eElement,
				SingleOptionNode));
		bean.setField9(getFieldof2Lengths("r31", 2, "31yes", "31no", eElement,
				SingleOptionNode));
		bean.setField10(getFieldof2Lengths("r32", 2, "yes", "no", eElement,
				SingleOptionNode));
		bean.setField11(getFieldof2Lengths("r41", 2, "41yes", "41no", eElement,
				SingleOptionNode));
		bean.setField12(getFieldof2Lengths("r42", 2, "yes", "no", eElement,
				SingleOptionNode));
		bean.setField13(getFieldof2Lengths("r51", 2, "51yes", "51no", eElement,
				SingleOptionNode));
		bean.setField14(getFieldof2Lengths("r52", 2, "yes", "no", eElement,
				SingleOptionNode));
		bean.setField15(getFieldof2Lengths("qf", 2, "qfyes", "qfno", eElement,
				SingleOptionNode));
		bean.setField16(getFieldof2Lengths("r61", 2, "61yes", "61no", eElement,
				SingleOptionNode));
		bean.setField17(getFieldof2Lengths("r62", 2, "yes", "no", eElement,
				SingleOptionNode));
		bean.setField18(getFieldof2Lengths("r71", 2, "71yes", "71no", eElement,
				SingleOptionNode));
		bean.setField19(getFieldof2Lengths("r72", 2, "yes", "no", eElement,
				SingleOptionNode));
		bean.setField20(eElement
				.getElementsByTagName("limitSharingPhoneNumber").item(0)
				.getTextContent());
		bean.setField21(eElement
				.getElementsByTagName("limitSharingOnlineWebsite").item(0)
				.getTextContent());
		bean.setField22(eElement.getElementsByTagName("sharingWithinDays1")
				.item(0).getTextContent());
		bean.setField23(eElement.getElementsByTagName("phoneNumber").item(0)
				.getTextContent());
		bean.setField24(eElement.getElementsByTagName("onlineWebsite").item(0)
				.getTextContent());
		bean.setField34(getFieldof2Lengths("applyChoices", 2, "yes", "no",
				eElement, SingleOptionNode));
		bean.setField35(eElement.getElementsByTagName("address1")
				.item(0).getTextContent());
		bean.setField36(eElement.getElementsByTagName("address2")
				.item(0).getTextContent());
		bean.setField37(eElement.getElementsByTagName("city")
				.item(0).getTextContent());
		bean.setField38(eElement.getElementsByTagName("state")
				.item(0).getTextContent());
		bean.setField39(eElement.getElementsByTagName("zip")
				.item(0).getTextContent());
		bean.setField40(getFieldof2Lengths("accountNumber", 2, "yes", "no",
				eElement, SingleOptionNode));

		bean.setField25(eElement.getElementsByTagName("whoProvidingNotice")
				.item(0).getTextContent());
		bean.setField26(eElement
				.getElementsByTagName("howWeProtectPersonalInfo").item(0)
				.getTextContent());
		bean.setField27(getFieldof5Lengths("informationWhen", 5, "openAccount",
				"depositMoney", "applyLoan", "useCard", "payBill", eElement,
				SingleOptionNode));
		bean.setField28(getFieldof2Lengths("q10", 2,
				"information from other companies",
				"information from credit bureau etc", eElement,
				SingleOptionNode));
		bean.setField29(eElement.getElementsByTagName("whyCantLimitShare")
				.item(0).getTextContent());
		bean.setField30(getFieldof2Lengths("affiliates", 2,
				"will apply to everyone on account",
				"will apply to everyone on account unless you tell otherwise",
				eElement, SingleOptionNode));
		bean.setField31(eElement.getElementsByTagName("nonAffiliates").item(0)
				.getTextContent());
		bean.setField32(eElement.getElementsByTagName("jointMarketing").item(0)
				.getTextContent());
		bean.setField33(eElement.getElementsByTagName("otherInfo").item(0)
				.getTextContent());
		return bean;
	}

	private MyBeanV2 processVersion2(Element eElement) {
		NodeList SingleOptionNode = null;
		MyBeanV2 bean = new MyBeanV2();
		bean.setField1(eElement.getElementsByTagName("date").item(0)
				.getTextContent());
		bean.setField2(eElement.getElementsByTagName("bankName").item(0)
				.getTextContent());

		bean.setField3(getFieldof24Lengths("information", 24, "income",
				"accountBalances", "paymentHistory", "transactionHistory",
				"transactionOrLossHistory", "creditHistory", "creditScores",
				"assets", "investmentExperience",
				"credit-basedInsuranceScores", "insuranceClaimHistory",
				"purchaseHistory", "medicalInformation", "overdraftHistory",
				"purchaseHistory", "accountTransactions", "riskTolerance",
				"medical-relatedDebts", "creditHCardOrOtherDebts",
				"mortgageRatesAndPayments", "retirementAssets",
				"checkingAccountInformation", "employmentInformation",
				"wireTransferInstructions", eElement, SingleOptionNode));
		bean.setField4(getFieldof2Lengths("whose", 2, "customer", "member",
				eElement, SingleOptionNode));
		bean.setField5(getFieldof2Lengths("r11", 2, "11yes", "11no", eElement,
				SingleOptionNode));
		bean.setField6(getFieldof2Lengths("r12", 2, "yes", "no", eElement,
				SingleOptionNode));
		bean.setField7(getFieldof2Lengths("r21", 2, "21yes", "21no", eElement,
				SingleOptionNode));
		bean.setField8(getFieldof2Lengths("r22", 2, "yes", "no", eElement,
				SingleOptionNode));
		bean.setField9(getFieldof2Lengths("r31", 2, "31yes", "31no", eElement,
				SingleOptionNode));
		bean.setField10(getFieldof2Lengths("r32", 2, "yes", "no", eElement,
				SingleOptionNode));
		bean.setField11(getFieldof2Lengths("r41", 2, "41yes", "41no", eElement,
				SingleOptionNode));
		bean.setField12(getFieldof2Lengths("r42", 2, "yes", "no", eElement,
				SingleOptionNode));
		bean.setField13(getFieldof2Lengths("r51", 2, "51yes", "51no", eElement,
				SingleOptionNode));
		bean.setField14(getFieldof2Lengths("r52", 2, "yes", "no", eElement,
				SingleOptionNode));
		bean.setField15(getFieldof2Lengths("qf", 2, "qfyes", "qfno", eElement,
				SingleOptionNode));
		bean.setField16(getFieldof2Lengths("r61", 2, "61yes", "61no", eElement,
				SingleOptionNode));
		bean.setField17(getFieldof2Lengths("r62", 2, "yes", "no", eElement,
				SingleOptionNode));
		bean.setField18(getFieldof2Lengths("r71", 2, "71yes", "71no", eElement,
				SingleOptionNode));
		bean.setField19(getFieldof2Lengths("r72", 2, "yes", "no", eElement,
				SingleOptionNode));
		bean.setField20(eElement
				.getElementsByTagName("limitSharingPhoneNumber").item(0)
				.getTextContent());
		bean.setField21(eElement
				.getElementsByTagName("limitSharingOnlineWebsite").item(0)
				.getTextContent());
		bean.setField22(eElement.getElementsByTagName("sharingWithinDays1")
				.item(0).getTextContent());
		bean.setField23(eElement.getElementsByTagName("phoneNumber").item(0)
				.getTextContent());
		bean.setField24(eElement.getElementsByTagName("onlineWebsite").item(0)
				.getTextContent());
		bean.setField25(eElement.getElementsByTagName("whoProvidingNotice")
				.item(0).getTextContent());
		bean.setField26(eElement
				.getElementsByTagName("howWeProtectPersonalInfo").item(0)
				.getTextContent());
		bean.setField27(getFieldof5Lengths("informationWhen", 5, "openAccount",
				"depositMoney", "applyLoan", "useCard", "payBill", eElement,
				SingleOptionNode));
		bean.setField28(getFieldof2Lengths("q10", 2,
				"information from other companies",
				"information from credit bureau etc", eElement,
				SingleOptionNode));
		bean.setField29(eElement.getElementsByTagName("whyCantLimitShare")
				.item(0).getTextContent());
		bean.setField30(getFieldof2Lengths("whtHappensLimitSharingJointAccount", 2,
				"will apply to everyone on account",
				"will apply to everyone on account unless you tell otherwise",
				eElement, SingleOptionNode));
		bean.setField31(eElement.getElementsByTagName("affiliates").item(0)
				.getTextContent());
		bean.setField32(eElement.getElementsByTagName("nonAffiliates").item(0)
				.getTextContent());
		bean.setField33(eElement.getElementsByTagName("jointMarketing").item(0)
				.getTextContent());
		bean.setField34(eElement.getElementsByTagName("otherInfo").item(0)
				.getTextContent());
		return bean;
	}

	private String[] getFieldof24Lengths(String tagName, int arrLength,
			String case1, String case2, String case3, String case4,
			String case5, String case6, String case7, String case8,
			String case9, String case10, String case11, String case12,
			String case13, String case14, String case15, String case16,
			String case17, String case18, String case19, String case20,
			String case21, String case22, String case23, String case24,
			Element eElement, NodeList singleOptionNode) {

		String[] field = null;
		singleOptionNode = (NodeList) eElement.getElementsByTagName(tagName);
		int nodeLen = singleOptionNode.getLength();
		if (singleOptionNode != null && nodeLen > 0) {
			field = new String[arrLength]; // ///////////Checkbox
											// hardcoded
			for (int i = 0; i < nodeLen; i++) {
				Element el1 = (Element) singleOptionNode.item(i);
				String checkbox = el1.getTextContent();
				if (checkbox.equals(case1)) {
					field[0] = "checked";
				} else if (checkbox.equals(case2)) {
					field[1] = "checked";
				} else if (checkbox.equals(case3)) {
					field[2] = "checked";
				} else if (checkbox.equals(case4)) {
					field[3] = "checked";
				} else if (checkbox.equals(case5)) {
					field[4] = "checked";
				} else if (checkbox.equals(case6)) {
					field[5] = "checked";
				} else if (checkbox.equals(case7)) {
					field[6] = "checked";
				} else if (checkbox.equals(case8)) {
					field[7] = "checked";
				} else if (checkbox.equals(case9)) {
					field[8] = "checked";
				} else if (checkbox.equals(case10)) {
					field[9] = "checked";
				} else if (checkbox.equals(case11)) {
					field[10] = "checked";
				} else if (checkbox.equals(case12)) {
					field[11] = "checked";
				} else if (checkbox.equals(case13)) {
					field[12] = "checked";
				} else if (checkbox.equals(case14)) {
					field[13] = "checked";
				} else if (checkbox.equals(case15)) {
					field[14] = "checked";
				} else if (checkbox.equals(case16)) {
					field[15] = "checked";
				} else if (checkbox.equals(case17)) {
					field[16] = "checked";
				} else if (checkbox.equals(case18)) {
					field[17] = "checked";
				} else if (checkbox.equals(case19)) {
					field[18] = "checked";
				} else if (checkbox.equals(case20)) {
					field[19] = "checked";
				} else if (checkbox.equals(case21)) {
					field[20] = "checked";
				} else if (checkbox.equals(case22)) {
					field[21] = "checked";
				} else if (checkbox.equals(case23)) {
					field[22] = "checked";
				} else if (checkbox.equals(case24)) {
					field[23] = "checked";
				}
			}
		}
		return field;
	}

	private MyBeanV1 processVersion1(Element eElement) {
		NodeList SingleOptionNode = null;
		MyBeanV1 bean = new MyBeanV1();
		bean.setField1(eElement.getElementsByTagName("date").item(0)
				.getTextContent());
		bean.setField2(eElement.getElementsByTagName("bankName").item(0)
				.getTextContent());

		bean.setField3(getFieldof24Lengths("information", 24, "income",
				"accountBalances", "paymentHistory", "transactionHistory",
				"transactionOrLossHistory", "creditHistory", "creditScores",
				"assets", "investmentExperience",
				"credit-basedInsuranceScores", "insuranceClaimHistory",
				"purchaseHistory", "medicalInformation", "overdraftHistory",
				"purchaseHistory", "accountTransactions", "riskTolerance",
				"medical-relatedDebts", "creditHCardOrOtherDebts",
				"mortgageRatesAndPayments", "retirementAssets",
				"checkingAccountInformation", "employmentInformation",
				"wireTransferInstructions", eElement, SingleOptionNode));
		bean.setField4(getFieldof2Lengths("whose", 2, "customer", "member",
				eElement, SingleOptionNode));
		bean.setField5(getFieldof2Lengths("r11", 2, "11yes", "11no", eElement,
				SingleOptionNode));
		bean.setField6(getFieldof2Lengths("r12", 2, "yes", "no", eElement,
				SingleOptionNode));
		bean.setField7(getFieldof2Lengths("r21", 2, "21yes", "21no", eElement,
				SingleOptionNode));
		bean.setField8(getFieldof2Lengths("r22", 2, "yes", "no", eElement,
				SingleOptionNode));
		bean.setField9(getFieldof2Lengths("r31", 2, "31yes", "31no", eElement,
				SingleOptionNode));
		bean.setField10(getFieldof2Lengths("r32", 2, "yes", "no", eElement,
				SingleOptionNode));
		bean.setField11(getFieldof2Lengths("r41", 2, "41yes", "41no", eElement,
				SingleOptionNode));
		bean.setField12(getFieldof2Lengths("r42", 2, "yes", "no", eElement,
				SingleOptionNode));
		bean.setField13(getFieldof2Lengths("r51", 2, "51yes", "51no", eElement,
				SingleOptionNode));
		bean.setField14(getFieldof2Lengths("r52", 2, "yes", "no", eElement,
				SingleOptionNode));
		bean.setField16(getFieldof2Lengths("qf", 2, "qfyes", "qfno", eElement,
				SingleOptionNode));
		bean.setField16(getFieldof2Lengths("r61", 2, "61yes", "61no", eElement,
				SingleOptionNode));
		bean.setField17(getFieldof2Lengths("r62", 2, "yes", "no", eElement,
				SingleOptionNode));
		bean.setField18(getFieldof2Lengths("r71", 2, "71yes", "71no", eElement,
				SingleOptionNode));
		bean.setField19(getFieldof2Lengths("r72", 2, "yes", "no", eElement,
				SingleOptionNode));

		bean.setField20(eElement.getElementsByTagName("phoneNumber").item(0)
				.getTextContent());
		bean.setField21(eElement.getElementsByTagName("onlineWebsite").item(0)
				.getTextContent());
		bean.setField22(eElement.getElementsByTagName("whoProvidingNotice")
				.item(0).getTextContent());
		bean.setField30(eElement
				.getElementsByTagName("howWeProtectPersonalInfo").item(0)
				.getTextContent());
		bean.setField23(getFieldof5Lengths("informationWhen", 5, "openAccount",
				"depositMoney", "applyLoan", "useCard", "payBill", eElement,
				SingleOptionNode));
		bean.setField24(getFieldof2Lengths("q10", 2,
				"information from other companies",
				"information from credit bureau etc", eElement,
				SingleOptionNode));
		bean.setField25(eElement.getElementsByTagName("whyCantLimitShare")
				.item(0).getTextContent());
		bean.setField26(eElement.getElementsByTagName("affiliates").item(0)
				.getTextContent());
		bean.setField27(eElement.getElementsByTagName("nonAffiliates").item(0)
				.getTextContent());
		bean.setField28(eElement.getElementsByTagName("jointMarketing").item(0)
				.getTextContent());
		bean.setField29(eElement.getElementsByTagName("otherInfo").item(0)
				.getTextContent());
		return bean;
	}

	private String[] getFieldof5Lengths(String tagName, int arrLength,
			String case1, String case2, String case3, String case4,
			String case5, Element eElement, NodeList singleOptionNode) {

		String[] field = null;
		singleOptionNode = (NodeList) eElement.getElementsByTagName(tagName);
		int nodeLen = singleOptionNode.getLength();
		if (singleOptionNode != null && nodeLen > 0) {
			field = new String[arrLength]; // ///////////Checkbox
											// hardcoded
			for (int i = 0; i < nodeLen; i++) {
				Element el1 = (Element) singleOptionNode.item(i);
				String checkbox = el1.getTextContent();
				if (checkbox.equals(case1)) {
					field[0] = "checked";
				} else if (checkbox.equals(case2)) {
					field[1] = "checked";
				} else if (checkbox.equals(case3)) {
					field[2] = "checked";
				} else if (checkbox.equals(case4)) {
					field[3] = "checked";
				} else if (checkbox.equals(case5)) {
					field[4] = "checked";
				}

			}
		}
		return field;

	}

	private String[] getFieldof2Lengths(String tagName, int arrLength,
			String case1, String case2, Element eElement,
			NodeList singleOptionNode) {
		String[] field = null;
		singleOptionNode = (NodeList) eElement.getElementsByTagName(tagName);
		int nodeLen = singleOptionNode.getLength();
		if (singleOptionNode != null && nodeLen > 0) {
			field = new String[arrLength]; // ///////////Checkbox
											// hardcoded
			for (int i = 0; i < nodeLen; i++) {
				Element el1 = (Element) singleOptionNode.item(i);
				String checkbox = el1.getTextContent();
				if (checkbox.equals(case1)) {
					field[0] = "checked";
				} else if (checkbox.equals(case2)) {
					field[1] = "checked";
				}

			}
		}
		return field;
	}

	/**
	 * Extracts file name from HTTP header content-disposition
	 */
	private String extractFileName(Part part) {
		String contentDisp = part.getHeader("content-disposition");
		String[] items = contentDisp.split(";");
		for (String s : items) {
			if (s.trim().startsWith("filename")) {
				return s.substring(s.indexOf("=") + 2, s.length() - 1);
			}
		}
		return "";
	}
}