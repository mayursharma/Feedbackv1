<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hotel Grands'</title>
<script type="text/javascript" src="js/myvalidationjs.js"></script>
</head>




<body background="Brown-background.jpg">


<form action="CustomerController" method="post">


<table align="center"  style="font-family:CURSIVE" border="0.5">

<tr>
<td><b>Date of Stay:</b></td>
<td>
From<input type="Text" id="date1" maxlength="25" size="25" name="date1">
&nbsp&nbsp&nbsp&nbsp To<input type="Text" id="date2" maxlength="25" size="25" name="date2">
Format:dd/mm/yyyy
</td>
</tr><br><br>



<tr>
<td><b>Type Of Room: </b></td>
<td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<select name="TypeRoom" id="TypeRoom">
<option value="nothing selected">Select Your Room Type</option>
<option value="ACStandard">AC Standard</option>
<option value="NonACStandard">Non AC Standard</option>
<option value="ACDeluxe">AC Deluxe</option>
<option value="NonACDeluxe">Non AC Deluxe</option>
<option value="Premium">Premium</option>
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
  <td align="center"><input type="radio" id="le" value="laundryexcellent" name="laundry"></td>
  <td align="center"><input type="radio" id="lg" value="laundrygood" name="laundry"></td>
  <td align="center"><input type="radio" id="la" value="laundryaverage" name="laundry"></td>
  <td align="center"><input type="radio" id="lb" value="laundrybelowaverage" name="laundry"></td>
  <td align="center"><input type="radio" id="lp" value="laundrypoor" name="laundry"></td>
 </tr> 

 <tr> 
  <td style="font-family:CURSIVE" rowspan="">Food</td>
  <td align="center"><input type="radio" id="fe" value="foodexcellent" name="food"></td>
  <td align="center"><input type="radio" id="fg" value="foodgood" name="food"></td>
  <td align="center"><input type="radio" id="fa" value="foodaverage" name="food"></td>
  <td align="center"><input type="radio" id="fb" value="foodbelowaverage" name="food"></td>
  <td align="center"><input type="radio" id="fp" value="foodpoor" name="food"></td>
  </tr>
 
 <tr> 
  <td style="font-family:CURSIVE" rowspan="">Hygiene</td>
  <td align="center"><input type="radio" id="he" value="hygieneexcellent" name="hygiene"></td>
  <td align="center"><input type="radio" id="hg" value="hygienegood" name="hygiene"></td>
  <td align="center"><input type="radio" id="ha" value="hygieneaverage"  name="hygiene"></td>
  <td align="center"><input type="radio" id="hb" value="hygienebelowaverage"  name="hygiene"></td>
  <td align="center"><input type="radio" id="hp" value="hygienepoor"  name="hygiene"></td>
  </tr>
  
  <tr>
  <td style="font-family:CURSIVE" rowspan="">Infrastructure</td>
  <td align="center"><input type="radio" id="ie" value="infrastructureexc" name="infrastructure"></td>
  <td align="center"><input type="radio" id="ig" value="infrastructuregood" name="infrastructure"></td>
  <td align="center"><input type="radio" id="ia" value="infrastructureaver" name="infrastructure"></td>
  <td align="center"><input type="radio" id="ib" value="infrastructurebelow" name="infrastructure"></td>
  <td align="center"><input type="radio" id="ip" value="infrastructurepoor" name="infrastructure"></td>
  
  </tr>
  <br>
 
  <td style="font-family:CURSIVE" rowspan="">Room Service</td>
  <td align="center"><input type="radio" id="re" value="roomexcellent" name="rooms"></td>
  <td align="center"><input type="radio" id="rg" value="roomgood" name="rooms"></td>
  <td align="center"><input type="radio" id="ra" value="roomaverage" name="rooms"></td>
  <td align="center"><input type="radio" id="rb" value="roombelowaverage" name="rooms"></td>
  <td align="center"><input type="radio" id="rp" value="roompoor" name="rooms"></td>
</tr>
</table>
<br><br>

<table align="center">

<tr>
<td style="font-family:CURSIVE"><b>Description: &nbsp </b></td>
<td><textarea rows="4" cols="40" name="description" id="description"></textarea>
</td>
</tr>

<tr>		
<td style="font-family:CURSIVE"> <b>Suggestion: &nbsp </b></td>
<td>
<textarea rows="4" cols="40" name="suggest" id="suggest"></textarea>
</td>
</tr>
</table>

<br><br><br>

<table align="center" >
<tr>		
<td colspan="2">
<input type="submit"  value="Submit" name="Submit" >
</td>
</tr>
</table>

</form>


</body>




</html>