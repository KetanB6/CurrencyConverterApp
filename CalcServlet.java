package Servlets;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URL;

import org.json.JSONObject;

/**
 * Servlet implementation class CalcServlet
 */
@WebServlet("/CalcServlet")
public class CalcServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CalcServlet() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		double cur1 = Double.parseDouble(request.getParameter("cur1"));
		String cur1_code = request.getParameter("currency1");
		String cur2_code = request.getParameter("currency2");
		request.setAttribute("currency1", cur1_code.toUpperCase());
		request.setAttribute("currency2", cur2_code.toUpperCase());
		System.out.println("from: " + cur1_code);
		System.out.println("to: " + cur2_code);
		double rate = currencyRate(cur1_code, cur2_code);
		double convertedAmount;
		convertedAmount = cur1 * rate;
		System.out.println(rate);
		request.setAttribute("cur2", Math.floor(convertedAmount * 100)/100.0);
		request.setAttribute("cur1", cur1);
		String flag1 = cur1_code.substring(0, cur1_code.length()-1);
		String flag2 = cur2_code.substring(0, cur2_code.length()-1);
		request.setAttribute("flag1", flag1);
		request.setAttribute("flag2", flag2);
		System.out.println(flag1 + " & " + flag2);
		RequestDispatcher dispatcher = request.getRequestDispatcher("result.jsp");
		dispatcher.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	public double currencyRate(String fromCurrency, String toCurrency) throws IOException {
		String apiKey = "5e4992315577297e27a79f19"; 

		URI uri = URI.create("https://v6.exchangerate-api.com/v6/" + apiKey + "/latest/" + fromCurrency.toUpperCase());
	    URL url = uri.toURL();
	    HttpURLConnection conn = (HttpURLConnection) url.openConnection();
	    conn.setRequestMethod("GET");

	    BufferedReader in = new BufferedReader(new InputStreamReader(conn.getInputStream()));
	    StringBuilder jsonResponse = new StringBuilder();
	    String inputLine;
	    while ((inputLine = in.readLine()) != null) {
	        jsonResponse.append(inputLine);
	    }
	    in.close();

	    JSONObject obj = new JSONObject(jsonResponse.toString());

	    double rate = obj.getJSONObject("conversion_rates").getDouble(toCurrency.toUpperCase());
	    System.out.println("Rate from " + fromCurrency + " to " + toCurrency + ": " + rate);
	    return rate;
	}


}
