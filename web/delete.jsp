<%-- 
    Document   : add
    Created on : 19-Apr-2020, 04:46:34
    Author     : Abishek
--%>
<%

String usr = (String)session.getAttribute("userid");
if(usr == null)
{
 response.sendRedirect("index.jsp");
}
else{
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html lang="en"><head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>        
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      	<link href="https://fonts.googleapis.com/css2?family=Concert+One&display=swap" rel="stylesheet">
<title>ADD MEDICINE</title>
<script>
            function confirmGo(m,u) {
                if ( confirm(m) ) {
                    window.location = u;
                }
            }
        </script>
<style>
* {
  box-sizing: border-box;
 font-family: 'Concert One', cursive;
}

body {
  background-image: linear-gradient(-225deg, #FFE29F 0%, #FFA99F 48%, #FF719A 100%);
  
}

.login-form {
  width: 400px;
  height: auto;
  padding: 32px;
  display: block;
  background-color: #34495e;
  border-radius: 13px;
  box-shadow: 3px 3px 10px #777;
}
.login-form__hdg {
  display: block;
  width: max-content;
  margin: 0 auto;
  margin-bottom: 32px;
  font-size: 28px;
  color: #fff;
  letter-spacing: 0.05em;
}
.login-form__field {
  display: grid;
  gap: 24px;
  margin-bottom: 40px;
}

.input-group {
  display: block;
  width: 100%;
  height: auto;
  position: relative;
}
.input-group__input {
  display: block;
  -moz-appearance: none;
  -webkit-appearance: none;
  appearance: none;
  width: 100%;
  background-color: transparent;
  font-size: 18px;
  letter-spacing: 0.1em;
  color: #fff;
  padding: 8px 4px;
  outline: none;
  border: none;
  border-radius: 0px;
  border-bottom: 2px solid #fff;
  /* Floating animation */
}
.input-group__input:valid ~ .input-group__label {
  color: #2ecc71;
}
.input-group__input:invalid ~ .input-group__label {
  color: #e74c3c;
}
.input-group__input:placeholder-shown ~ .input-group__label {
  color: #fff;
}
.input-group__input:focus ~ .input-group__label, .input-group__input:not(:placeholder-shown) ~ .input-group__label {
  transform: translateX(-8px) translateY(-28px) scale(0.8);
}
.input-group__label {
  font-size: 20px;
  letter-spacing: 0.07em;
  position: absolute;
  top: 8px;
  left: 4px;
  cursor: text;
  user-select: none;
  transition: all 0.3s ease;
}

.login-btn {
  -moz-appearance: none;
  -webkit-appearance: none;
  appearance: none;
  font-size: 20px;
  letter-spacing: 0.05em;
  color: #fff;
  width: 100%;
  padding: 8px;
  border-radius: 30px;
  background-color: transparent;
  border: solid 2px #fff;
  outline: none;
  cursor: pointer;
  user-select: none;
  transition: all 0.3s ease;
}
.login-btn:hover {
  color: #2ecc71;
  border: 2px solid #2ecc71;
}
.login-btn:active {
  transform: scale(0.9);
}
.box{
    background: #00000029;
    padding: 20px;
    border-radius: 15px;
}
table{
	color:black;
	width:-webkit-fill-available;
        border:2px solid black;
	border-radius:15px;
	padding:20px;
}
td{
    font-size: larger;
}
th{
    color: white;
}
a{
			font-size:large;
			color:aqua;
			text-decoration:none !important;
		}
</style>
<script>
  window.console = window.console || function(t) {};
</script>
<script>
  if (document.location.search.match(/type=embed/gi)) {
    window.parent.postMessage("resize", "*");
  }
</script>
</head>
<body translate="no">
      <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/events"
                           user="root"  password=""/>
 
        <sql:query dataSource="${dbsource}" var="result">
            SELECT * from event;
        </sql:query>
    <div class="container-fluid">
        <div class="row" style="background-image: linear-gradient(-225deg, #FFE29F 0%, #FFA99F 48%, #FF719A 100%);">
		<div class="col-sm-8">
			<center><h1 style="font-size:4em;"><b>EVENTS MANAGEMENT</b></h1></center>
		</div>
		<div class="col-sm-2">
			<center>
				<h2 style="padding-top:12px;"><b style="background-color:black;color:white;padding:10px;border-radius:11px;"><i class="fa fa-circle" style="font-size:24px;color:#25ee25;"></i>ABISHEK</b></h2>
			</center>
		</div>
		<div class="col-sm-2">
			<center>
                            <a href="logout.jsp" style="text-decoration:none;"><h2 style="padding-top:12px;"><b style="background-color:black;color:white;padding:10px;border-radius:11px;"><i class="fa fa-sign-out" style="font-size:30px;"></i>Logout</b></h2></a>
			</center>
		</div>	
	</div>
        <div class="row" style="padding:50px;">
            <div class="col-sm-5">
              <center>
               <svg style="margin-top: -30px;width: 500px;height: 500px;" xmlns="http://www.w3.org/2000/svg" id="b579c4f0-774b-4bd6-bbf3-fbc1b87111a5" data-name="Layer 1" width="909" height="591.27023" viewBox="0 0 909 591.27023" class="injected-svg modal__media modal__lg_media" data-src="https://42f2671d685f51e10fc6-b9fcecea3e50b3b59bdc28dead054ebc.ssl.cf5.rackcdn.com/illustrations/throw_away_ldjd.svg" xmlns:xlink="http://www.w3.org/1999/xlink"><title>throw_away</title><path d="M452.09472,744.33309H185.22779s-5.40946-79.33882,26.59654-80.24039,28.39969,35.16152,68.51988-14.42524,88.80538-46.882,95.11643-17.58076-12.1713,52.74228,21.63786,45.52966S479.59283,689.33686,452.09472,744.33309Z" transform="translate(-145.5 -154.36488)" fill="#000000"></path><path d="M314.15645,744.35114l-.9007-.0361c2.10053-52.236,13.04052-85.79821,21.84807-104.75467,9.563-20.58331,18.77817-28.91585,18.87017-28.99774l.59915.67377c-.09069.081-9.19847,8.33078-18.68484,28.77476C327.12939,658.88749,316.24927,692.31189,314.15645,744.35114Z" transform="translate(-145.5 -154.36488)" fill="#f2f2f2"></path><path d="M410.74234,744.459l-.86548-.2518c10.42185-35.77167,34.96386-58.35689,35.21082-58.581l.60575.66738C445.44867,686.51591,421.09023,708.94133,410.74234,744.459Z" transform="translate(-145.5 -154.36488)" fill="#f2f2f2"></path><path d="M227.26054,744.39516l-.89321-.12414c3.53587-25.50126-2.85111-45.28666-8.832-57.39368-6.47591-13.109-13.86484-20.26877-13.9388-20.33964l.6238-.65065c.07506.07175,7.57822,7.3416,14.12325,20.591C224.38038,698.69865,230.82789,718.66675,227.26054,744.39516Z" transform="translate(-145.5 -154.36488)" fill="#f2f2f2"></path><path d="M488.31362,745.53914H156.44368l-.07656-1.12419c-.1908-2.79665-4.42434-68.76359,16.95-92.301,4.77826-5.26173,10.53408-8.02363,17.10728-8.20854,13.93256-.39633,22.68819,4.82242,29.75017,9.0112,13.31069,7.89644,22.104,13.11342,54.07547-26.40232,34.635-42.80824,72.00485-52.0179,93.48758-46.8969,13.88015,3.30956,23.44668,12.66291,26.24686,25.66209,2.65118,12.309,1.80671,23.8748,1.12831,33.16809-.7261,9.94342-1.29968,17.79745,2.78428,21.35671,3.40909,2.96977,10.21372,3.24007,21.41324.84977,22.78006-4.85953,54.56543-.70137,70.51966,19.91216,8.58367,11.09,15.34532,31.24889-1.18308,64.30627ZM158.70855,743.127H486.82019c12.31665-24.9884,12.7012-46.09836,1.1024-61.08445-14.6357-18.90987-45.341-23.88718-68.10933-19.02942-12.16766,2.59642-19.41808,2.16771-23.50086-1.39037-4.9932-4.35072-4.38076-12.73535-3.60578-23.35069.66781-9.13959,1.49814-20.514-1.08-32.485-2.59642-12.05459-11.50751-20.73779-24.44839-23.823-20.79726-4.962-57.123,4.13165-91.0531,46.06715-33.28175,41.13519-43.30761,35.18975-57.1807,26.96-7.14913-4.24-15.2664-9.04889-28.45166-8.67495-5.89244.16607-11.07,2.66238-15.39007,7.41944C155.89247,674.88933,158.238,734.20888,158.70855,743.127Z" transform="translate(-145.5 -154.36488)" fill="#cfcce0"></path><path d="M816.2402,575.54422l-96.5491-16.78764c17.25764-35.79353,25.14382-71.15859,18.40573-105.855l96.5491,16.78765A214.51078,214.51078,0,0,0,816.2402,575.54422Z" transform="translate(-145.5 -154.36488)" fill="#f2f2f2"></path><rect x="757.44686" y="480.47141" width="50.7699" height="2.36139" transform="translate(-51.41788 -281.34917) rotate(9.86379)" fill="#3f3d56"></rect><rect x="755.82878" y="489.77734" width="50.7699" height="2.36139" transform="translate(-49.84764 -280.93442) rotate(9.86379)" fill="#3f3d56"></rect><rect x="754.21069" y="499.08328" width="50.7699" height="2.36139" transform="matrix(0.98522, 0.17131, -0.17131, 0.98522, -48.27739, -280.51967)" fill="#3f3d56"></rect><rect x="752.5926" y="508.38922" width="50.7699" height="2.36139" transform="translate(-46.70714 -280.10492) rotate(9.86379)" fill="#3f3d56"></rect><rect x="750.97452" y="517.69516" width="50.7699" height="2.36139" transform="translate(-45.13689 -279.69016) rotate(9.86379)" fill="#3f3d56"></rect><rect x="749.35643" y="527.00109" width="50.7699" height="2.36139" transform="translate(-43.56664 -279.27541) rotate(9.86379)" fill="#3f3d56"></rect><rect x="747.73834" y="536.30703" width="50.7699" height="2.36139" transform="translate(-41.99639 -278.86066) rotate(9.86379)" fill="#3f3d56"></rect><rect x="746.12026" y="545.61297" width="50.7699" height="2.36139" transform="translate(-40.42614 -278.44591) rotate(9.86379)" fill="#3f3d56"></rect><path d="M859.2402,609.54422l-96.5491-16.78764c17.25764-35.79353,25.14382-71.15859,18.40573-105.855l96.5491,16.78765A214.51078,214.51078,0,0,0,859.2402,609.54422Z" transform="translate(-145.5 -154.36488)" fill="#f2f2f2"></path><rect x="800.44686" y="514.47141" width="50.7699" height="2.36139" transform="translate(-44.95783 -288.21275) rotate(9.86379)" fill="#3f3d56"></rect><rect x="798.82878" y="523.77734" width="50.7699" height="2.36139" transform="translate(-43.38758 -287.798) rotate(9.86379)" fill="#3f3d56"></rect><rect x="797.21069" y="533.08328" width="50.7699" height="2.36139" transform="matrix(0.98522, 0.17131, -0.17131, 0.98522, -41.81733, -287.38325)" fill="#3f3d56"></rect><rect x="795.5926" y="542.38922" width="50.7699" height="2.36139" transform="translate(-40.24708 -286.9685) rotate(9.86379)" fill="#3f3d56"></rect><rect x="793.97452" y="551.69516" width="50.7699" height="2.36139" transform="translate(-38.67683 -286.55375) rotate(9.86379)" fill="#3f3d56"></rect><rect x="792.35643" y="561.00109" width="50.7699" height="2.36139" transform="translate(-37.10659 -286.139) rotate(9.86379)" fill="#3f3d56"></rect><rect x="790.73834" y="570.30703" width="50.7699" height="2.36139" transform="translate(-35.53634 -285.72425) rotate(9.86379)" fill="#3f3d56"></rect><rect x="789.12026" y="579.61297" width="50.7699" height="2.36139" transform="translate(-33.96609 -285.30949) rotate(9.86379)" fill="#3f3d56"></rect><path d="M885.55762,744.24477H713.3418l-.03321-.96485-8.22265-235.17578H893.81348Zm-170.28418-2H883.626l8.11718-232.14063H707.15625Z" transform="translate(-145.5 -154.36488)" fill="#3f3d56"></path><polygon points="730.627 577.241 577.272 577.241 569.899 366.378 738 366.378 730.627 577.241" fill="#3f3d56"></polygon><g opacity="0.2"><rect x="595.82376" y="397.31046" width="13.09875" height="162.09701" fill="#fff"></rect><rect x="647.40008" y="397.31046" width="13.09875" height="162.09701" fill="#fff"></rect><rect x="698.97641" y="397.31046" width="13.09875" height="162.09701" fill="#fff"></rect></g><rect x="883.81188" y="371.58956" width="32.74687" height="252.15091" transform="translate(-146.99977 838.24263) rotate(-57.69865)" fill="#3f3d56"></rect><path d="M930.605,449.54838a38.45916,38.45916,0,0,0-58.62044,38.06983l10.19586,6.44589a30.3441,30.3441,0,1,1,28.98,18.32135l10.19585,6.44589a38.45915,38.45915,0,0,0,9.24874-69.283Z" transform="translate(-145.5 -154.36488)" fill="#3f3d56"></path><rect y="588.5" width="909" height="2" fill="#3f3d56"></rect><path d="M625.5,402.86488s39,29,23,34-36-17-35-23S625.5,402.86488,625.5,402.86488Z" transform="translate(-145.5 -154.36488)" fill="#ffb8b8"></path><polygon points="446 211.5 486 248.5 470 265.5 443 245.5 446 211.5" fill="#575a89"></polygon><path d="M681.008,517.8044l-82.46814-52.93921c29.79536-26.29142,50.78741-55.82468,58.04178-90.41687l82.46814,52.93921A214.51093,214.51093,0,0,0,681.008,517.8044Z" transform="translate(-145.5 -154.36488)" fill="#000000"></path><rect x="661.26883" y="417.12509" width="50.7699" height="2.36139" transform="translate(189.28559 -459.01271) rotate(32.69784)" fill="#3f3d56"></rect><rect x="656.16625" y="425.07382" width="50.7699" height="2.36139" transform="translate(192.77096 -454.99663) rotate(32.69784)" fill="#3f3d56"></rect><rect x="651.06368" y="433.02256" width="50.7699" height="2.36139" transform="translate(196.25634 -450.98055) rotate(32.69784)" fill="#3f3d56"></rect><rect x="645.96111" y="440.9713" width="50.7699" height="2.36139" transform="translate(199.74172 -446.96446) rotate(32.69784)" fill="#3f3d56"></rect><rect x="640.85853" y="448.92003" width="50.7699" height="2.36139" transform="translate(203.22709 -442.94838) rotate(32.69784)" fill="#3f3d56"></rect><rect x="635.75596" y="456.86877" width="50.7699" height="2.36139" transform="translate(206.71247 -438.9323) rotate(32.69784)" fill="#3f3d56"></rect><rect x="630.65338" y="464.8175" width="50.7699" height="2.36139" transform="translate(210.19785 -434.91622) rotate(32.69784)" fill="#3f3d56"></rect><rect x="625.55081" y="472.76624" width="50.7699" height="2.36139" transform="translate(213.68322 -430.90014) rotate(32.69784)" fill="#3f3d56"></rect><polygon points="303.165 490.416 287.987 522.348 330.446 532.508 329.263 501.725 303.165 490.416" fill="#ffb8b8"></polygon><polygon points="455 533.5 460 568.5 501 553.5 483 528.5 455 533.5" fill="#ffb8b8"></polygon><path d="M509.69185,358.27065s-6.28309,40.23087-4.57334,59.364-5.03144,99.85833-5.03144,99.85833-30.153,32.79933-36.99741,70.258a312.689,312.689,0,0,1-21.46982,68.55689l35.52851,11.564,70.40647-133.29639S598.04641,424.06938,593.029,413.542s-12.88445-52.94328-12.88445-52.94328Z" transform="translate(-145.5 -154.36488)" fill="#2f2e41"></path><path d="M442.61935,668.37028s-.043-18.02771-6.40352-10.24671-27.126,22.80749-14.89746,33.31765,83.64359,67.47407,87.48678,50.82385c2.13364-9.24378-33.48383-71.63844-33.48383-71.63844s-11.89349.74487-12.71826,3.7977S442.61935,668.37028,442.61935,668.37028Z" transform="translate(-145.5 -154.36488)" fill="#2f2e41"></path><polygon points="424 40.5 397 71.5 424 99.5 449 61.5 424 40.5" fill="#ffb8b8"></polygon><path d="M615.5,196.86488a27.01163,27.01163,0,1,1-.49-5.11A27.00223,27.00223,0,0,1,615.5,196.86488Z" transform="translate(-145.5 -154.36488)" fill="#ffb8b8"></path><path d="M570.71494,176.42347c9.37029-4.35474,20.41342-3.79867,30.297-.7851,5.60679,1.70956,11.141,4.28669,15.06511,8.641s5.94341,10.76868,3.90251,16.26353l-8.17236-6.18019-.74886,5.44719c-5.39378-8.41458-15.63876-12.07049-25.14056-15.17109-2.97176-.96973-6.91679-1.63184-8.63038.98261-.7222,1.10187-.80413,2.53991-1.57236,3.6102-1.43969,2.00577-4.44914,1.82912-6.65324,2.94167-2.06384,1.04175-3.31374,3.16881-4.42655,5.19521s-.6195,4.86408-2.63522,5.99639c-8.08359,4.54053-3.31824-12.94456-2-16C562.60336,181.33076,564.77258,179.18512,570.71494,176.42347Z" transform="translate(-145.5 -154.36488)" fill="#2f2e41"></path><path d="M493,415.36488s17,37,29,52,51,86,51,86-7,44,8,79a312.68908,312.68908,0,0,1,20,69l36-10-15-150s-19-120-29-126-40-37-40-37Z" transform="translate(-145.5 -154.36488)" fill="#2f2e41"></path><path d="M576.5,251.86488s-17-45-40-31-41,139-41,139-21,57,0,63,38,14,41,3,1-30,6-20,3,22,13,22,49-5,48-12S576.5,251.86488,576.5,251.86488Z" transform="translate(-145.5 -154.36488)" fill="#575a89"></path><path d="M493.5,428.86488s-13,39,5,39,15.39871-39.37416,15.39871-39.37416Z" transform="translate(-145.5 -154.36488)" fill="#ffb8b8"></path><path d="M608.5,710.86488s-10-15-11-5-10,34,6,36,107,10,101-6c-3.33105-8.88279-67.5-41.19444-67.5-41.19444s-9.5,7.19444-8.5,10.19444S608.5,710.86488,608.5,710.86488Z" transform="translate(-145.5 -154.36488)" fill="#2f2e41"></path><path d="M633,203.36488s-4.74,4.07-10.89-3.98a39.01675,39.01675,0,0,1-4.11-7.02,27.46081,27.46081,0,0,0-18.56006-7.97q-.705-.02994-1.43994-.03c-13,0-16-9-16-9l-21,7s3-28,32-28,30,24,30,24S646,187.36488,633,203.36488Z" transform="translate(-145.5 -154.36488)" fill="#575a89"></path><path d="M622.11,199.38484a39.01675,39.01675,0,0,1-4.11-7.02,27.46081,27.46081,0,0,0-18.56006-7.97c7.31006-2.29,20.02-4.95,25.56006,1.97C630.1,192.73488,625.86,197.07485,622.11,199.38484Z" transform="translate(-145.5 -154.36488)" opacity="0.2"></path><path d="M537.5,228.86488s-27-5-34,19-22,95-22,95l9,73-1,18h29v-19c0-2,4-80,4-80l33-75S562.5,235.86488,537.5,228.86488Z" transform="translate(-145.5 -154.36488)" fill="#575a89"></path><polygon points="410.5 116 377.5 181 373.451 274.126 384.5 180 410.5 116" opacity="0.2"></polygon><polygon points="450.525 215.686 458.019 254.094 454.272 219.152 450.525 215.686" opacity="0.2"></polygon><polygon points="365.5 305.5 408.5 366.5 404 375.5 365.5 305.5" opacity="0.2"></polygon></svg>
              </center>
              </div>
            <div class="col-sm-7">
              <center>
    <div class="box">
        <center>
        <form>
            <table cellspacing="20" cellpadding="3" bgcolor="black" style="margin-left:auto; margin-right:auto;"><h1 style="color:black;margin-top: 0px;">Delete Events</h1>
    
                <tr style="padding:8px;background:black;">
                    <th style="padding:8px;">EVENT NAME</th>
                    <th style="padding:8px;">EVENT TYPE</th>
                    <th style="padding:8px;">EVENT VENUE</th>
                    <th style="padding:8px;">EVENT TIME</th>

                    <th style="padding:8px;">Action</th>
                </tr>
                <c:forEach var="row" items="${result.rows}">
                    <tr>
                        <td style="padding:8px;"><c:out value="${row.eventname}"/></td>
                        <td style="padding:8px;"><c:out value="${row.eventtype}"/></td>
                        <td style="padding:8px;"><c:out value="${row.eventvenu}"/></td>
                        <td style="padding:8px;"><c:out value="${row.eventtime}"/></td>
                        <td style="padding:8px;"><a href="javascript:confirmGo('Sure to delete this record?','deletedb.jsp?eventname=<c:out value="${row.eventname}"/>')">Delete</a></td>
                    
                    </tr>
                </c:forEach>
            </table>
        </form>
    <c:if test="${not empty param.susMsg}">
         <font color="lightgreen" size="medium">   <h3><c:out value="${param.susMsg}" /></h3></font>
        </c:if>
    <c:if test="${not empty param.susMsgg}">
         <font color="lightgreen" size="medium">   <h3><c:out value="${param.susMsgg}" /></h3></font>
        </c:if>
        <a href="admin.jsp">Go Home</a>
    </center>
  </div>
              </center>  
            </div>
        </div>
    </div>
<script src="https://static.codepen.io/assets/editor/iframe/iframeRefreshCSS-e03f509ba0a671350b4b363ff105b2eb009850f34a2b4deaadaa63ed5d970b37.js"></script>


</body></html>
<%}
%>