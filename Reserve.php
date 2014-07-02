<HTML>
<HEAD>
<TITLE>Buy Books</TITLE>
</HEAD>
<?php 
	session_start();
	$username = $_SESSION['username'];
	$userid = ($_SESSION['userid']);
	include 'header.php';
?>
<script language="javascript">
	function onClick(o){
		var _list=document.getElementById("selectedbooks");
		var _list2=document.getElementById("selectedbooks2");
		if(o.checked){
			var _book=document.createElement("option");
			_book.setAttribute("value",o.value);
			_book.setAttribute("selected",true);
			var _book2=document.createElement("option");
			_book2.setAttribute("value",o.value);
			var oText=document.createTextNode(o.value);
			var oText2=document.createTextNode(o.value);
			_book.appendChild(oText);
			_book2.appendChild(oText2);
			_list.appendChild(_book);
			_list2.appendChild(_book2);
		}else{
			var i;
			for(i=0;i<_list.options.length;i++){
				if(_list.options[i].getAttribute("value") == o.value)
				{
					var oOption=_list.options[i];
					var oOption2=_list2.options[i];
					_list.removeChild(oOption);
					_list2.removeChild(oOption2);
					break;
				}
			}
		}
	}
</script>

<BODY>

<table align="center" >
	<tr>
		<td align="center">
			<img src="img/atom.jpg"/>
		</td>
		<td align="center">
			<img src="img/bleach.jpg"/>
		</td>
		<td align="center">
			<img src="img/Conan.jpg"/>
		</td>
		<td align="center">
			<img src="img/DragonBall.jpg"/>
		</td>
		<td align="center">
			<img src="img/inuyasha.jpg"/>
		</td>
	</tr>
	<tr>
		<td>
			<input type="checkbox" text="Astroboy" value="Astroboy" onclick="onClick(this);">
			<label>Astroboy</label>
		</td>
		<td>
			<input type="checkbox" text="Bleach" value="Bleach" onclick="onClick(this);">
			<label>Bleach</label>
		</td>
		<td>
			<input type="checkbox" text="Conan" value="Conan" onclick="onClick(this);">
			<label>Conan</label>
		</td>
		<td>
			<input type="checkbox" text="DragonBall" value="DragonBall" onclick="onClick(this);">
			<label>DragonBall</label>
		</td>
		<td>
			<input type="checkbox" text="Inuyasha" value="Inuyasha" onclick="onClick(this);">
			<label>Inuyasha</label>
		</td>
	</tr>
	<tr>
		<td align="center">
			<img src="img/Naruto.jpg"/>
		</td>
		<td align="center">
			<img src="img/Onepiece.jpg"/>
		</td>
		<td align="center">
			<img src="img/Pokemon.jpg"/>
		</td>
		<td align="center">
			<img src="img/SaintSaiya.jpg"/>
		</td>
		<td align="center">
			<img src="img/SlamDunk.jpg"/>
		</td>
	</tr>
	<tr>
		<td>
			<input type="checkbox" text="Naruto" value="Naruto" onclick="onClick(this);">
			<label>Naruto</label>
		</td>
		<td>
			<input type="checkbox" text="Onepiece" value="Onepiece" onclick="onClick(this);">
			<label>Onepiece</label>
		</td>
		<td>
			<input type="checkbox" text="Pokemon" value="Pokemon" onclick="onClick(this);">
			<label>Pokemon</label>
		</td>
		<td>
			<input type="checkbox" text="SaintSaiya" value="SaintSaiya" onclick="onClick(this);">
			<label>SaintSaiya</label>
		</td>
		<td>
			<input type="checkbox" text="SlamDunk" value="SlamDunk" onclick="onClick(this);">
			<label>SlamDunk</label>
		</td>
	</tr>
</table>
<form action="buyorder.php" method="post">
<table align="center">
	<tr>
		<td>
			<label>Selected Book</label>
		</td>
	</tr>
	<tr>
		<td>
            <select disabled="false" style="width:150px;height:200px" id="selectedbooks2" name="" multiple="true" >
               
            </select>
		</td>
	</tr>
	<tr>
		<td align="center">
			<input type="submit" value="Buy Now!">
		</td>
	</tr>
	<tr>
		<td>
			<select style="visibility: hidden" id="selectedbooks" name="selColor[]" multiple="true" >
               
            </select>
		</td>
	</tr>
</table>
</form>
</BODY>
</HTML>