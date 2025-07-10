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
        	<h2>Currency Converter</h2>
            <form>
                <div class="country_flags">
                    <div class="flags flag1"><img src="https://flagcdn.com/w80/${flag1}.png" class="flags"></div>
                    <div class="arrow"><img src="images/arrow.png" alt="arrow" id="arrow_sign"></div>
                    <div class="flags flag1"><img src="https://flagcdn.com/w80/${flag2}.png" class="flags"></div>
                </div>
                
                <div class="currencies cc" style="gap: 12vw; font-size: 16px; color: #ccc; font-weight: 700">
                    <div id="code1" style="gap: 12vw; font-size: 16px; color: #ccc; font-weight: 700">${currency1}</div>
                    <div id="code2" style="gap: 12vw; font-size: 16px; color: #ccc; font-weight: 700">${currency2}</div>
                </div>
                <div class="currencies values">
                    <input type="number" id="value1" name="cur1" value="${cur1}">
                    <div id="value2" style="display: flex; justify-content: center; align-items: center; overflow: hidden;">${cur2}</div>
                </div>
                <br>
                <div class="btn">
                    <button class="convert" style="display:none;">Convert</button>
                </div>
            </form>
            <button class="convert" onclick="history.back()" style="position: fixed; top: 50vh;">Back</button>
        </div>
    </div>
</body>
</html>