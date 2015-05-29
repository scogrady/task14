import java.io.File;
import java.io.IOException;
import java.util.HashMap;

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

	private static HashMap<String, Integer> informationWhen = null;
	private static HashMap<String, Integer> information = null;

	public void init() {
		informationWhen = new HashMap<String, Integer>();
		informationWhen.put("openAccount", 0);
		informationWhen.put("depositMoney", 1);
		informationWhen.put("tellWhereSendMoney", 2);
		informationWhen.put("useCard", 3);
		informationWhen.put("payBill", 4);
		informationWhen.put("seekFinancialTaxAdvice", 5);
		informationWhen.put("applyForInsurance", 6);
		informationWhen.put("payInsurancePremium", 7);
		informationWhen.put("directUsSellSecurities", 8);
		informationWhen.put("sellSecurities", 9);
		informationWhen.put("buySecurities", 10);
		informationWhen.put("seekAdviceInvestments", 11);
		informationWhen.put("directUsBuySecurities", 12);
		informationWhen.put("fileAnInsuranceClaim", 13);
		informationWhen.put("makeDepositsWithdrawalsFromAccount", 14);
		informationWhen.put("provideEmploymentInformation", 15);
		informationWhen.put("giveUsIncomeInformation", 16);
		informationWhen.put("enterIntoInvestmentAdvisoryContract", 17);
		informationWhen.put("giveEmploymentHistory", 18);
		informationWhen.put("provideAccountInformation", 19);
		informationWhen.put("tellAboutInvestmentRetirementEarnings", 20);
		informationWhen.put("applyFinancing", 21);
		informationWhen.put("applyLease", 22);
		informationWhen.put("tellAboutInvestmentRetirementPortfolio", 23);
		informationWhen.put("payUsByCheck", 24);
		informationWhen.put("giveWageStatement", 25);
		informationWhen.put("giveContactInformation", 26);
		informationWhen.put("makeWireTransfer", 27);
		informationWhen.put("tellWhoReceivesMoney", 28);
		informationWhen.put("provideMortgageInformation", 29);
		informationWhen.put("showDriverLicense", 20);
		informationWhen.put("applyLoan", 31);
		informationWhen.put("showGovernmentIssuedId", 32);
		informationWhen.put("orderCommodityFuturesOptionTrade", 33);
		
		information = new HashMap<String, Integer>();
		information.put("income",0);
		information.put("accountBalances",1);
		information.put("paymentHistory",2);
		information.put("transactionHistory",3);
		information.put("transactionOrLossHistory",4);
		information.put("creditHistory",5);
		information.put("creditScores",6);
		information.put("assets",7);
		information.put("investmentExperience",8);
		information.put("credit-basedInsuranceScores",9);
		information.put("insuranceClaimHistory",10);
		information.put("purchaseHistory",11);
		information.put("medicalInformation",12);
		information.put("overdraftHistory",13);
		information.put("purchaseHistory",14);
		information.put("accountTransactions",15);
		information.put("riskTolerance",16);
		information.put("medical-relatedDebts",17);
		information.put("creditHCardOrOtherDebts",18);
		information.put("mortgageRatesAndPayments",19);
		information.put("retirementAssets",20);
		information.put("checkingAccountInformation",21);
		information.put("employmentInformation",22);
		information.put("wireTransferInstructions",23);


	}

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
		bean.setField8(eElement.getElementsByTagName("bankName").item(0)
				.getTextContent());
		bean.setField1(getFieldof2Lengths("applyChoices", 2, "yes", "no",
				eElement, SingleOptionNode));
		bean.setField2(eElement.getElementsByTagName("address1").item(0)
				.getTextContent());
		bean.setField3(eElement.getElementsByTagName("address2").item(0)
				.getTextContent());
		bean.setField4(eElement.getElementsByTagName("city").item(0)
				.getTextContent());
		bean.setField5(eElement.getElementsByTagName("state").item(0)
				.getTextContent());
		bean.setField6(eElement.getElementsByTagName("zip").item(0)
				.getTextContent());
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

		bean.setField3(getCheckboxValues("information", information, eElement,
				SingleOptionNode));
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
		bean.setField25(getFieldof2Lengths("applyChoices", 2, "yes", "no",
				eElement, SingleOptionNode));
		bean.setField26(eElement.getElementsByTagName("address1").item(0)
				.getTextContent());
		bean.setField27(eElement.getElementsByTagName("address2").item(0)
				.getTextContent());
		bean.setField28(eElement.getElementsByTagName("city").item(0)
				.getTextContent());
		bean.setField29(eElement.getElementsByTagName("state").item(0)
				.getTextContent());
		bean.setField30(eElement.getElementsByTagName("zip").item(0)
				.getTextContent());
		bean.setField31(getFieldof2Lengths("accountNumber", 2, "yes", "no",
				eElement, SingleOptionNode));

		bean.setField32(eElement.getElementsByTagName("whoProvidingNotice")
				.item(0).getTextContent());
		bean.setField33(eElement
				.getElementsByTagName("howWeProtectPersonalInfo").item(0)
				.getTextContent());
		bean.setField34(getCheckboxValues("informationWhen", informationWhen, eElement,
				SingleOptionNode));
		bean.setField35(getFieldof2Lengths("q10", 2,
				"informationFromOtherCompanies",
				"informationFromCreditBureauEtc", eElement,
				SingleOptionNode));
		bean.setField36(eElement.getElementsByTagName("whyCantLimitShare")
				.item(0).getTextContent());
		bean.setField37(getFieldof2Lengths("whtHappensLimitSharingJointAccount", 2,
				"willApplyToEveryoneOnAccount",
				"willApplyToEveryoneOnAccountUnlessYouTellOtherwise",
				eElement, SingleOptionNode));
		bean.setField38(eElement.getElementsByTagName("nonAffiliates").item(0)
				.getTextContent());
		bean.setField39(eElement.getElementsByTagName("jointMarketing").item(0)
				.getTextContent());
		bean.setField40(eElement.getElementsByTagName("otherInfo").item(0)
				.getTextContent());
		return bean;
	}

	private String[] getCheckboxValues(String tagName,
			HashMap<String, Integer> map, Element eElement,
			NodeList singleOptionNode) {
		String[] field = null;
		singleOptionNode = (NodeList) eElement.getElementsByTagName(tagName);
		int nodeLen = singleOptionNode.getLength();
		if (singleOptionNode != null && nodeLen > 0) {
			field = new String[map.size()];
			for (int i = 0; i < nodeLen; i++) {
				Element el1 = (Element) singleOptionNode.item(i);

				String checkbox = el1.getTextContent();
				field[map.get(checkbox)] = "checked";
			}
		}
		return field;

	}

	private MyBeanV2 processVersion2(Element eElement) {
		NodeList SingleOptionNode = null;
		MyBeanV2 bean = new MyBeanV2();
		bean.setField1(eElement.getElementsByTagName("date").item(0)
				.getTextContent());
		bean.setField2(eElement.getElementsByTagName("bankName").item(0)
				.getTextContent());
		bean.setField3(getCheckboxValues("information", information, eElement,
				SingleOptionNode));
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
		bean.setField27(getCheckboxValues("informationWhen", informationWhen, eElement,
				SingleOptionNode));
		bean.setField28(getFieldof2Lengths("q10", 2,
				"information from other companies",
				"information from credit bureau etc", eElement,
				SingleOptionNode));
		bean.setField29(eElement.getElementsByTagName("whyCantLimitShare")
				.item(0).getTextContent());
		bean.setField30(getFieldof2Lengths(
				"whtHappensLimitSharingJointAccount", 2,
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

	private MyBeanV1 processVersion1(Element eElement) {
		NodeList SingleOptionNode = null;
		MyBeanV1 bean = new MyBeanV1();
		bean.setField1(eElement.getElementsByTagName("date").item(0)
				.getTextContent());
		bean.setField2(eElement.getElementsByTagName("bankName").item(0)
				.getTextContent());
		bean.setField3(getCheckboxValues("information", information, eElement,
				SingleOptionNode));
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

		bean.setField20(eElement.getElementsByTagName("phoneNumber").item(0)
				.getTextContent());
		bean.setField21(eElement.getElementsByTagName("onlineWebsite").item(0)
				.getTextContent());
		bean.setField22(eElement.getElementsByTagName("whoProvidingNotice")
				.item(0).getTextContent());
		bean.setField30(eElement
				.getElementsByTagName("howWeProtectPersonalInfo").item(0)
				.getTextContent());
		bean.setField23(getCheckboxValues("informationWhen", informationWhen, eElement,
				SingleOptionNode));
		bean.setField24(getFieldof2Lengths("q10", 2,
				"informationFromOtherCompanies",
				"informationFromCreditBureauEtc", eElement,
				SingleOptionNode));
		bean.setField25(eElement.getElementsByTagName("whyCantLimitShare")
				.item(0).getTextContent());
		bean.setField26(eElement.getElementsByTagName("affiliatesName").item(0)
				.getTextContent());
		bean.setField27(eElement.getElementsByTagName("affiliatesList1").item(0)
				.getTextContent());
		bean.setField28(eElement.getElementsByTagName("affiliatesList2").item(0)
				.getTextContent());
		bean.setField29(eElement.getElementsByTagName("affiliatesList3").item(0)
				.getTextContent());
		bean.setField30(eElement.getElementsByTagName("nonAffiliates").item(0)
				.getTextContent());
		bean.setField31(getFieldof2Lengths("jointMkt", 2, "jointMktyes", "jointMktno", eElement,
				SingleOptionNode));
		bean.setField32(eElement.getElementsByTagName("jointMarketing").item(0)
				.getTextContent());
		bean.setField33(eElement.getElementsByTagName("otherInfo").item(0)
				.getTextContent());
		return bean;
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