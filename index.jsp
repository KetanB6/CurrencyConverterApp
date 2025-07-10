<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Currency Converter</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="overlay">
        <div class="overlay calculator">
        <div class="main_loader" id="loader">
	    	<img src="images/flags.png" height="100vh" width="100vh" class="loader1">
	    	<img src="images/flags.png" height="100vh" width="100vh" class="loader2">
    	</div>
        <h2>Currency Converter</h2>
            <form id="form" action="CalcServlet" method="get">
                <div class="country_flags" style="visibility:hidden">
                    <div class="flags flag1"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjwc504_dio6rXC4Cv0a446i4cVne3RbpPtQ&s" class="flags"></div>
                    <div class="arrow"><img src="images/arrow.png" alt="arrow" id="arrow_sign"></div>
                    <div class="flags flag1"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/Flag_of_the_United_States_%28Web_Colors%29.svg/960px-Flag_of_the_United_States_%28Web_Colors%29.svg.png" class="flags"></div>
                </div>
                <div class="currencies">
                    <select id="currency" name="currency1">
                    	<option value="inr">INR - Indian Rupee</option>
						<option value="usd">USD - US Dollar</option>
						<option value="eur">EUR - Euro</option>
						<option value="jpy">JPY - Japanese Yen</option>
						<option value="gbp">GBP - British Pound</option>
						<option value="aud">AUD - Australian Dollar</option>
						<option value="cad">CAD - Canadian Dollar</option>
						<option value="chf">CHF - Swiss Franc</option>
						<option value="cny">CNY - Chinese Yuan</option>
						<option value="hkd">HKD - Hong Kong Dollar</option>
						<option value="nzd">NZD - New Zealand Dollar</option>
						<option value="sgd">SGD - Singapore Dollar</option>
						<option value="krw">KRW - South Korean Won</option>
						<option value="sek">SEK - Swedish Krona</option>
						<option value="nok">NOK - Norwegian Krone</option>
						<option value="dkk">DKK - Danish Krone</option>
						<option value="rub">RUB - Russian Ruble</option>
						<option value="zar">ZAR - South African Rand</option>
						<option value="brl">BRL - Brazilian Real</option>
						<option value="mxn">MXN - Mexican Peso</option>
						<option value="thb">THB - Thai Baht</option>
						<option value="idr">IDR - Indonesian Rupiah</option>
						<option value="myr">MYR - Malaysian Ringgit</option>
						<option value="php">PHP - Philippine Peso</option>
						<option value="vnd">VND - Vietnamese Dong</option>
						<option value="try">TRY - Turkish Lira</option>
						<option value="pln">PLN - Polish Zloty</option>
						<option value="czk">CZK - Czech Koruna</option>
						<option value="huf">HUF - Hungarian Forint</option>
						<option value="ils">ILS - Israeli New Shekel</option>
						<option value="sar">SAR - Saudi Riyal</option>
						<option value="aed">AED - UAE Dirham</option>
						<option value="qar">QAR - Qatari Riyal</option>
						<option value="kwd">KWD - Kuwaiti Dinar</option>
						<option value="bhd">BHD - Bahraini Dinar</option>
						<option value="omr">OMR - Omani Rial</option>
                    </select>
                    <select id="currency" name="currency2">
                        <option value="usd">USD - US Dollar</option>
						<option value="inr">INR - Indian Rupee</option>
						<option value="eur">EUR - Euro</option>
						<option value="jpy">JPY - Japanese Yen</option>
						<option value="gbp">GBP - British Pound</option>
						<option value="aud">AUD - Australian Dollar</option>
						<option value="cad">CAD - Canadian Dollar</option>
						<option value="chf">CHF - Swiss Franc</option>
						<option value="cny">CNY - Chinese Yuan</option>
						<option value="hkd">HKD - Hong Kong Dollar</option>
						<option value="nzd">NZD - New Zealand Dollar</option>
						<option value="sgd">SGD - Singapore Dollar</option>
						<option value="krw">KRW - South Korean Won</option>
						<option value="sek">SEK - Swedish Krona</option>
						<option value="nok">NOK - Norwegian Krone</option>
						<option value="dkk">DKK - Danish Krone</option>
						<option value="rub">RUB - Russian Ruble</option>
						<option value="zar">ZAR - South African Rand</option>
						<option value="brl">BRL - Brazilian Real</option>
						<option value="mxn">MXN - Mexican Peso</option>
						<option value="thb">THB - Thai Baht</option>
						<option value="idr">IDR - Indonesian Rupiah</option>
						<option value="myr">MYR - Malaysian Ringgit</option>
						<option value="php">PHP - Philippine Peso</option>
						<option value="vnd">VND - Vietnamese Dong</option>
						<option value="try">TRY - Turkish Lira</option>
						<option value="pln">PLN - Polish Zloty</option>
						<option value="czk">CZK - Czech Koruna</option>
						<option value="huf">HUF - Hungarian Forint</option>
						<option value="ils">ILS - Israeli New Shekel</option>
						<option value="sar">SAR - Saudi Riyal</option>
						<option value="aed">AED - UAE Dirham</option>
						<option value="qar">QAR - Qatari Riyal</option>
						<option value="kwd">KWD - Kuwaiti Dinar</option>
						<option value="bhd">BHD - Bahraini Dinar</option>
						<option value="omr">OMR - Omani Rial</option>
                    </select>
                </div>
                <div class="currencies values">
                    <input type="number" class="c1" id="value1" name="cur1" value="${cur1}" required>
                    <div id="value2" name="cur2" style="display: flex; justify-content: center; align-items: center; top: -8vh;">${cur2}</div>
                </div>
                <br>
                <div class="btn">
                    <button class="convert" onclick="load()">Convert</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>