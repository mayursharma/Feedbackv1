<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hotel Grands'</title>
</head>




<body background="1.jpg">


<form action="CustomerController" method="post">


<table align="center"  style="font-family:CURSIVE" border="0.5">

<tr>
<td><b>Date of Stay:</b></td>
<td>
From<input type="Text" id="date1" maxlength="25" size="25" name="date1" disabled="disabled"><a href="javascript:NewCal('demo1','ddmmmyyyy',false,24)" width="16" height="16" border="0" alt="Pick a date"  ></a>
&nbsp&nbsp&nbsp&nbsp To<input type="Text" id="date2" maxlength="25" size="25" name="date2" disabled="disabled"><a href="javascript:NewCal('demo1','ddmmmyyyy',false,24)"><img src="images/cal.gif" width="16" height="16" border="0" alt="Pick a date"></a>
Format:dd/mm/yyyy
</td>
</tr><br><br>



<tr>
<td><b>Type Of Room: </b></td>
<td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<select name="TypeRoom" id="TypeRoom" disabled="disabled">
<option value="syr">Select Your Room Type</option>
<option value="acs">AC Standard</option>
<option value="nacs">Non AC Standard</option>
<option value="acd">AC Deluxe</option>
<option value="nacd">Non AC Deluxe</option>
<option value="p">Premium</option>
</select></tr>
</table><br><br><br>

<table align="center" >

<h3 text-align="center" style="font-family:COMIC SANS MS"><b><u>Rate the Services</u></b></h3>
<table align="center">

<tr>
<td>&nbsp</td>	
<td style="font-family:CURSIVE"><b>&nbsp Excellent &nbsp </b></td>
<td style="font-family:CURSIVE"><b>&nbsp Good &nbsp <b></td>
<td style="font-family:CURSIVE"><b>&nbsp Average &nbsp </b></td>
<td style="font-family:CURSIVE"><b> &nbsp&nbsp Below <br/>&nbsp Average &nbsp </b> </td>
<td style="font-family:CURSIVE"><b>&nbsp Poor&nbsp </b></td>
	
<tr>
  <td style="font-family:CURSIVE" rowspan="">Laundry</td>
  <td align="center"><input type="radio" id="le" value="le" name="laundry" disabled="disabled"></td>
  <td align="center"><input type="radio" id="lg" value="lg" name="laundry" disabled="disabled"></td>
  <td align="center"><input type="radio" id="la" value="la" name="laundry" disabled="disabled"></td>
  <td align="center"><input type="radio" id="lb" value="lb" name="laundry" disabled="disabled"></td>
  <td align="center"><input type="radio" id="lp" value="lp" name="laundry" disabled="disabled"></td>
 </tr> 

 <tr> 
  <td style="font-family:CURSIVE" rowspan="">Food</td>
  <td align="center"><input type="radio" id="fe" value="fe" name="food" disabled="disabled"></td>
  <td align="center"><input type="radio" id="fg" value="fg" name="food" disabled="disabled"></td>
  <td align="center"><input type="radio" id="fa" value="fa" name="food" disabled="disabled"></td>
  <td align="center"><input type="radio" id="fb" value="fb" name="food" disabled="disabled"></td>
  <td align="center"><input type="radio" id="fp" value="fp" name="food" disabled="disabled"></td>
  </tr>
 
 <tr> 
  <td style="font-family:CURSIVE" rowspan="">Hygiene</td>
  <td align="center"><input type="radio" id="he" value="he" name="hygiene" disabled="disabled"></td>
  <td align="center"><input type="radio" id="hg" value="hg" name="hygiene" disabled="disabled"></td>
  <td align="center"><input type="radio" id="ha" value="hf"  name="hygiene" disabled="disabled"></td>
  <td align="center"><input type="radio" id="hb" value="hb"  name="hygiene" disabled="disabled"></td>
  <td align="center"><input type="radio" id="hp" value="hp"  name="hygiene" disabled="disabled"></td>
  </tr>
  
  <tr>
  <td style="font-family:CURSIVE" rowspan="">Infrastructure</td>
  <td align="center"><input type="radio" id="ie" value="ie" name="infrastructure" disabled="disabled"></td>
  <td align="center"><input type="radio" id="ig" value="ig" name="infrastructure" disabled="disabled"></td>
  <td align="center"><input type="radio" id="ia" value="ia" name="infrastructure" disabled="disabled"></td>
  <td align="center"><input type="radio" id="ib" value="ib" name="infrastructure" disabled="disabled"></td>
  <td align="center"><input type="radio" id="ip" value="ip" name="infrastructure" disabled="disabled"></td>
  
  </tr>
  <br/>
 
  <td style="font-family:CURSIVE" rowspan="">Room Service</td>
  <td align="center"><input type="radio" id="re" value="re" name="rooms" disabled="disabled"></td>
  <td align="center"><input type="radio" id="rg" value="rg" name="rooms" disabled="disabled"></td>
  <td align="center"><input type="radio" id="ra" value="ra" name="rooms" disabled="disabled"></td>
  <td align="center"><input type="radio" id="rb" value="rb" name="rooms" disabled="disabled"></td>
  <td align="center"><input type="radio" id="rp" value="rp" name="rooms" disabled="disabled"></td>
</tr>
</table>
<br/><br/>

<table align="center">

<tr>
<td style="font-family:CURSIVE"><b>Description: &nbsp </b></td>
<td><textarea rows="4" cols="40" name="description" id="description" disabled="disabled"></textarea>
</td>
</tr>

<tr>		
<td style="font-family:CURSIVE"> <b>Suggestion: &nbsp </b></td>
<td>
<textarea rows="4" cols="40" name="suggest" id="suggest" disabled="disabled"></textarea>
</td>
</tr>
</table>

<br><br><br>

<table align="center" >
<tr>		
<td colspan="2">

</td>
</tr>
</table>

</form>


</body>




</html>