var step=2;
var i=5;
var z=0;
var r=0;
var obj=null;
var anm=0;

var que="result.php?query=select * from product where 1=1";
var res1="";
var res2="";
var res3="";
var res4="";

var image1=new Image();
image1.src="images/banner.jpg";

var image2=new Image();
image2.src="images/banner1.jpg";

var image3=new Image();
image3.src="images/banner2.jpg";

var image4=new Image();
image4.src="images/banner3.jpg";

var image5=new Image();
image5.src="images/banner4.jpg";

var image6=new Image();
image6.src="images/banner5.jpg";

var image7=new Image();
image7.src="images/banner6.jpg";

var image8=new Image();
image8.src="images/banner7.jpg";

function animation(){
		document.getElementById("d"+i).style.transform="rotateY("+r+"deg)";
		document.getElementById("d"+i).style["-webkit-transform"]="rotateY("+r+"deg)";
		document.getElementById("d"+i).style["-moz-transform"]="rotateY("+r+"deg)";
		document.getElementById("d"+i).style["-o-transform"]="rotateY("+r+"deg)";
		document.getElementById("d"+i).style["-ms-transform"]="rotateY("+r+"deg)";

		if(r==360)
		{
			if(step%2==0)
					i--;
			           else
					i++;

			r=0;

			if(i==6 || i==0)
			{
				if(i==6)
					i--;
				else
					i++;

				if(step==8)
				{
					step=1;
				}
				else
					step++;

				clearInterval(anm);
				st();
			}
		}
		else if(r==90)
		{
			r=270;
			document.getElementById("i"+i).src=eval("image"+step+".src");
		}
		else
			r+=4.5;
}

function st(){ 
		var st=setTimeout("st();",1000); 
		if(z==4)
		{
			clearTimeout(st);
			z=0;
			anm=setInterval("animation();",8);
		}
		else
			z++;
}

function disble_othr(v,t1,t2){
		if(v=="Material" || v=="Brand")
		{
			document.getElementById(t1).disabled=false;
			if(t2!=undefined)
				document.getElementById(t2).disabled=false;
		}
		else
		{
			document.getElementById(t1).disabled=true;
			if(t2!=undefined)
				document.getElementById(t2).disabled=true;
		}
}

function get_xml(){
	obj=new XMLHttpRequest();
}

function ajax_magic(q){
	get_xml();
	if(obj!=null)
	{
		obj.onreadystatechange=function() {
					if(obj.readyState==4)
					{
						document.getElementById("bg_div").style.display="block";
						document.getElementById("pop_content").innerHTML=obj.responseText;
					}
		};
		obj.open("GET",q,true);
		obj.send();
	}
	else
		alert("Your Browser Doesn't Support Ajax");
}

function p_res(max,min){
if(max!="" && min!="")
	res1=" and ( price>="+min+" and price<="+max+" )";
else if(max!="")
	res1=" and ( price<="+max+" )";
else if(min!="")
	res1=" and ( price>="+min+" )";
else
	res1="";

	shw_result(que+res1+res2+res3+res4);
}

function c_res(m,f,k){
	if(m==true && f==true && k==true)
		res2=" and ( category=1 or category=0 or category=2 )";
	else if(m==true && f==true)
		res2=" and ( category=1 or category=0 )";
	else if(m==true && k==true)
		res2=" and ( category=1 or category=2 )";
	else if(f==true && k==true)
		res2=" and ( category=0 or category=2 )";
	else if(m==true)
		res2=" and ( category=1 )";
	else if(f==true)
		res2=" and ( category=0 )";
	else if(k==true)
		res2=" and ( category=2 )";
	else
		res2="";

	shw_result(que+res1+res2+res3+res4);
}

function b_res(){
	brnd_cnt=0;
	res3="";

	for(b=1;b<=no_brnd;b++)
	{
		if(document.getElementById("brnd"+b).checked==true)
		{
			if(brnd_cnt==0)
				res3+=" and ( brnd_id="+b;
			else
				res3+=" or brnd_id="+b;
 
			brnd_cnt++;
		}
	}

	if(brnd_cnt!=0)
		res3+=" )";

	shw_result(que+res1+res2+res3+res4);
}

function m_res(){
	mat_cnt=0;
	res4="";

	for(m=1;m<=no_mat;m++)
	{
		if(document.getElementById("mat"+m).checked==true)
		{
			if(mat_cnt==0)
				res4+=" and ( mat_id="+m;
			else
				res4+=" or mat_id="+m;
 
			mat_cnt++;
		}
	}

	if(mat_cnt!=0)
		res4+=" )";

	shw_result(que+res1+res2+res3+res4);
}

function shw_result(q)
{
	get_xml();
	if(obj!=null)
	{
		obj.onreadystatechange=function (){
					if(obj.readyState==4)
					{
						document.getElementById("products_div").innerHTML=obj.responseText;
					lst_q=q;
					}
		};
		obj.open("GET",q,true);
		obj.send();
	}
	else
		alert("Your Browser Doesn't support ajax.");
}

function chk_fr_num(e){
	if((e>=48 && e<=57) || e==8 || e==37 || e==39 || (e>=96 && e<=105))
		return true;
	else
		return false;
}

function chk_mo_len(l){
	if(l!=10)
	{
		document.getElementById("mst_div").innerHTML="Invalid Mobile Number";
		document.getElementById("mst_div").style.color="white";
		document.getElementById("mst_div").style.fontSize="20px";
		return false;
	}
}

function disable_other2(r1,r2,cnl){
	document.getElementById(r1).disabled=true;
	if(r2!="")
	document.getElementById(r2).disabled=true;

	document.getElementById(cnl).style.display="block";
}

function cnl_rd_btns(r1,r2,r3,r4,cnl){
	document.getElementById(r1).checked=false;
	if(r2!="")
	document.getElementById(r2).checked=false;
	document.getElementById(r3).disabled=false;
	if(r4!="")
	document.getElementById(r4).disabled=false;
	document.getElementById(cnl).style.display="none";
}