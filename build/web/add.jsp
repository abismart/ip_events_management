<%-- 
    Document   : add
    Created on : 19-Apr-2020, 04:46:34
    Author     : Abishek
--%>
<%

String usr = (String)session.getAttribute("userid");
if(usr == null )
{
 response.sendRedirect("index.jsp");
}
else{
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en"><head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>        
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      	<link href="https://fonts.googleapis.com/css2?family=Concert+One&display=swap" rel="stylesheet">
<title>EVENTS MANAGEMENT</title>
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
            <div class="col-sm-6">
                <center>    <svg style="width:500px;height:500px;" xmlns="http://www.w3.org/2000/svg" id="e52a4b2b-2a17-41ef-b2dc-8e680caf5c3b" data-name="Layer 1" width="609.76746" height="727.77805" viewBox="0 0 609.76746 727.77805" class="injected-svg modal__media modal__lg_media" data-src="https://42f2671d685f51e10fc6-b9fcecea3e50b3b59bdc28dead054ebc.ssl.cf5.rackcdn.com/illustrations/add_tasks_mxew.svg" xmlns:xlink="http://www.w3.org/1999/xlink"><path d="M658.00555,259.05823h-3.99878V149.51289A63.40184,63.40184,0,0,0,590.605,86.111H358.51828a63.40185,63.40185,0,0,0-63.402,63.40168V750.48711A63.40186,63.40186,0,0,0,358.51806,813.889H590.60473a63.40186,63.40186,0,0,0,63.402-63.40167V337.03447h3.99878Z" transform="translate(-295.11627 -86.11098)" fill="#3f3d56"></path><path d="M640.51374,149.95491v600.09a47.3451,47.3451,0,0,1-40.83,46.9,46.76843,46.76843,0,0,1-6.52.45h-233.21a46.76855,46.76855,0,0,1-6.52-.45,47.345,47.345,0,0,1-40.82-46.9v-600.09a47.35091,47.35091,0,0,1,47.35-47.35h28.29a22.4862,22.4862,0,0,0,20.83,30.99h132.96a22.48078,22.48078,0,0,0,20.82-30.99h30.30005A47.3509,47.3509,0,0,1,640.51374,149.95491Z" transform="translate(-295.11627 -86.11098)" fill="#fff"></path><path d="M640.51374,597.9449v152.1a47.3451,47.3451,0,0,1-40.83,46.9h-246.25a47.345,47.345,0,0,1-40.82-46.9v-152.1Z" transform="translate(-295.11627 -86.11098)" fill="#e6e6e6"></path><circle cx="181.44745" cy="611.33392" r="31.32001" fill="#fff"></circle><polygon points="200.239 611.334 183.327 611.334 183.327 594.421 179.568 594.421 179.568 611.334 162.655 611.334 162.655 615.092 179.568 615.092 179.568 632.005 183.327 632.005 183.327 615.092 200.239 615.092 200.239 611.334" fill="#e6e6e6"></polygon><path d="M532.17669,500.54844v28.13067L517.7312,545.40546s-6.08231-2.28087-6.08231-17.48663L509.368,505.87046Z" transform="translate(-295.11627 -86.11098)" fill="#ffb9b9"></path><path d="M517.73123,528.6791s23.56894-15.966,24.32922-21.28807,22.60528-29.27886,28.891-14.44548c5.93229,13.99935-18.06771,25.99935-18.06771,25.99935s-16.90555,31.02227-28.30988,30.262S513.16949,534.00112,517.73123,528.6791Z" transform="translate(-295.11627 -86.11098)" fill="#ffb9b9"></path><polygon points="208.93 613.633 206.649 627.319 218.814 624.277 218.814 613.633 208.93 613.633" fill="#ffb9b9"></polygon><path d="M506.32688,707.34688s14.05974-8.32965,14.63274-4.545,6.65534,18.23016,9.69647,19.75073,6.84259,18.24692,0,17.48664c-5.29965-.58884-24.73756-10.75522-33.23416-15.31009a4.64254,4.64254,0,0,1-1.99621-6.067,9.57885,9.57885,0,0,0,1.01742-2.95218C496.44316,714.18947,506.32688,707.34688,506.32688,707.34688Z" transform="translate(-295.11627 -86.11098)" fill="#2f2e41"></path><path d="M499.48429,553.00834s55.501,25.84981,50.179,45.61729-25.08948,103.39923-25.08948,103.39923-22.04837,5.322-23.56894,0,14.44549-88.19345,12.92489-91.23462-29.65124-22.80865-29.65124-22.80865l-57.78192-24.32926,24.32922-22.8086Z" transform="translate(-295.11627 -86.11098)" fill="#2f2e41"></path><polygon points="246.184 618.195 253.027 635.682 240.862 641.004 233.259 627.319 246.184 618.195" fill="#ffb9b9"></polygon><path d="M500.24459,428.321s-6.8426,9.12345-1.52058,13.68519,1.52058,21.28807,1.52058,21.28807l-6.8426,19.0072-27.37038-5.322V445.80767l1.52059-15.20577S481.23739,417.677,482.758,407.79326,500.24459,428.321,500.24459,428.321Z" transform="translate(-295.11627 -86.11098)" fill="#ffb9b9"></path><path d="M454.62728,546.926s35.73356,39.535,35.73356,41.05556S509.368,620.674,509.368,620.674l37.25412,82.87143s-14.44547,19.76749-20.5278,18.24692-49.41874-89.714-49.41874-89.714-7.60289-19.76749-28.13067-24.32922-36.49385-20.52781-28.891-38.77472S454.62728,546.926,454.62728,546.926Z" transform="translate(-295.11627 -86.11098)" fill="#2f2e41"></path><circle cx="205.12831" cy="323.20284" r="24.32923" fill="#ffb9b9"></circle><path d="M499.48429,448.84882s-3.04115,17.48664-6.0823,19.00722-5.322,6.84261-12.16461-.76029-12.92491-22.80865-12.92491-22.80865l-23.56894,28.891-2.28086,79.83023s26.61009-6.84259,34.97327,0,26.61011,6.08232,26.61011,6.08232l-3.80144-15.20577,3.04115-25.8498-.76028-23.56894-.76029-16.72635Z" transform="translate(-295.11627 -86.11098)" fill="#000000"></path><path d="M496.80593,436.05166s10.28125,5.19427,11.04154,8.23542,14.44549,9.12346,14.44549,9.12346,5.322,5.322,5.322,8.36318S509.368,499.78814,509.368,499.78814s-3.80144,23.569-2.28089,28.13067-3.04115,22.04836-3.04115,22.04836l9.12346,10.644h-8.36317s-9.12346-4.56174-9.12346-6.84259,1.52057-18.24692,2.28085-25.08953.76028-31.17181-.76028-39.535-.76029-30.41155-.76029-35.73357S496.80593,436.05166,496.80593,436.05166Z" transform="translate(-295.11627 -86.11098)" fill="#3f3d56"></path><path d="M473.25434,424.50708s-3.42129.7728-13.305,3.814-25.08953,7.60289-30.41155,13.68519a94.2474,94.2474,0,0,0-9.88374,14.44547l3.04115,54.74077s-6.0823,11.40432-5.322,17.48663,6.8426,6.8426,2.28086,19.7675-13.68519,24.32924-5.322,25.84981,30.41153-3.80145,40.29529-.76029,21.28808-11.40432,21.28808-11.40432-15.20576,1.52057-12.92491-4.56174,27.37039-74.50827,22.04837-89.714S473.25434,424.50708,473.25434,424.50708Z" transform="translate(-295.11627 -86.11098)" fill="#3f3d56"></path><path d="M523.81353,457.97233l3.80146,3.04115s10.644,38.01442,7.60287,41.81586-27.37039,12.16461-28.891,6.84259S523.81353,457.97233,523.81353,457.97233Z" transform="translate(-295.11627 -86.11098)" fill="#3f3d56"></path><path d="M411.29083,484.58239s-11.40433,32.6924-11.40433,41.81586,1.52057,62.34365,1.52057,62.34365,7.6029,31.94539,23.569,22.82191-6.84262-24.34251-6.84262-24.34251.76028-60.06277,6.84259-68.42594,8.36317-20.52779,8.36317-20.52779Z" transform="translate(-295.11627 -86.11098)" fill="#ffb9b9"></path><path d="M535.97815,721.03206s11.40432-6.0823,13.68518-1.52056,14.44549,29.65124,12.92489,32.69241-9.88376,15.20578-19.76748,12.16461-10.644-19.0072-10.644-19.0072l-.76028-18.24692Z" transform="translate(-295.11627 -86.11098)" fill="#2f2e41"></path><path d="M505.00862,403.43705c-1.67591.78887-3.66405,1.26021-4.71715,2.784-.78034,1.1291-.8579,2.59639-1.42728,3.84523a5.43744,5.43744,0,0,1-6.99527,2.55818,6.03219,6.03219,0,0,0-2.45993-3.73583,3.583,3.583,0,0,0-4.25368.23352c-1.56706,1.494-1.01243,4.09923-1.74363,6.1371a12.95315,12.95315,0,0,1-2.78617,3.82048c-1.66407,1.92-2.9898,4.17181-4.99377,5.73377s-5.043,2.23888-7.03394.66032c-1.6741-1.32737-2.0211-3.77624-1.61457-5.87368s1.41475-4.02891,1.98335-6.08834c1.84762-6.69178-1.098-13.83609-.18662-20.71817,1.16776-8.81839,8.66294-15.784,17.02889-18.80695a19.922,19.922,0,0,1,10.994-1.16482c3.82594.85429,7.09438,3.29007,10.75864,4.68315,3.91855,1.48974,8.17956,1.74987,12.28027,2.62079s8.32062,2.55482,10.70026,6.00614c1.65973,2.40721,2.23022,5.39673,3.60571,7.97693a14.311,14.311,0,0,0,7.24878,6.49424l-4.33481-.24707a12.77713,12.77713,0,0,0,3.45386,5.04091,9.26937,9.26937,0,0,1-6.00092-.79324A6.52323,6.52323,0,0,0,536.752,409.28c-3.33563-.10048-6.85321-.25422-9.67172-2.041-1.38059-.87519-2.50644-2.09416-3.80561-3.08621-2.76919-2.11458-6.20477-3.11829-9.55389-4.07949-1.75861-.5047-3.87537-1.20652-5.46579-.0755C506.93048,400.93967,506.7214,402.63083,505.00862,403.43705Z" transform="translate(-295.11627 -86.11098)" fill="#2f2e41"></path><path d="M431.05835,447.32824,419.654,456.4517,404.44825,491.425s21.28807,16.72635,26.6101,14.44548,14.44548-42.57611,14.44548-42.57611Z" transform="translate(-295.11627 -86.11098)" fill="#3f3d56"></path><ellipse cx="577.42732" cy="499.71021" rx="0.4415" ry="0.37643" transform="translate(-471.31438 536.81171) rotate(-50.15848)" fill="#f2f2f2"></ellipse><path d="M566.73055,432.69873a4.94181,4.94181,0,0,0-4.93654,4.93654v82.657a4.94233,4.94233,0,0,0,4.93654,4.93715H899.94719a4.94233,4.94233,0,0,0,4.93654-4.93715v-82.657a4.94181,4.94181,0,0,0-4.93654-4.93654Z" transform="translate(-295.11627 -86.11098)" fill="#fff"></path><path d="M566.73055,432.69873a4.94181,4.94181,0,0,0-4.93654,4.93654v82.657a4.94233,4.94233,0,0,0,4.93654,4.93715H899.94719a4.94233,4.94233,0,0,0,4.93654-4.93715v-82.657a4.94181,4.94181,0,0,0-4.93654-4.93654Z" transform="translate(-295.11627 -86.11098)" fill="#e6e6e6"></path><path d="M567.34747,519.6754H899.33V438.25257H567.34747Z" transform="translate(-295.11627 -86.11098)" fill="#fff"></path><circle cx="314.80903" cy="392.85278" r="25.91685" fill="#000000"></circle><path d="M669.78088,461.68585a4.31948,4.31948,0,0,0,0,8.63895H873.41327a4.31947,4.31947,0,0,0,0-8.63895Z" transform="translate(-295.11627 -86.11098)" fill="#e6e6e6"></path><path d="M669.78088,487.6027a4.31948,4.31948,0,0,0,0,8.63895H873.41327a4.31947,4.31947,0,0,0,0-8.63895Z" transform="translate(-295.11627 -86.11098)" fill="#e6e6e6"></path><path d="M353.437,182.9449a3.64688,3.64688,0,0,0-3.643,3.643v60.998a3.64727,3.64727,0,0,0,3.643,3.64345H599.33957a3.64727,3.64727,0,0,0,3.643-3.64345v-60.998a3.64688,3.64688,0,0,0-3.643-3.643Z" transform="translate(-295.11627 -86.11098)" fill="#fff"></path><path d="M353.437,182.9449a3.64688,3.64688,0,0,0-3.643,3.643v60.998a3.64727,3.64727,0,0,0,3.643,3.64345H599.33957a3.64727,3.64727,0,0,0,3.643-3.64345v-60.998a3.64688,3.64688,0,0,0-3.643-3.643Z" transform="translate(-295.11627 -86.11098)" fill="#e6e6e6"></path><path d="M353.89227,247.13073H598.88409V187.04345H353.89227Z" transform="translate(-295.11627 -86.11098)" fill="#fff"></path><circle cx="90.197" cy="130.97594" r="19.12575" fill="#000000"></circle><path d="M429.48465,204.33641a3.18763,3.18763,0,0,0,0,6.37526H579.75844a3.18763,3.18763,0,1,0,0-6.37526Z" transform="translate(-295.11627 -86.11098)" fill="#e6e6e6"></path><path d="M429.48465,223.46217a3.18763,3.18763,0,0,0,0,6.37525H579.75844a3.18763,3.18763,0,1,0,0-6.37525Z" transform="translate(-295.11627 -86.11098)" fill="#e6e6e6"></path><path d="M353.437,291.9449a3.64688,3.64688,0,0,0-3.643,3.643v60.998a3.64727,3.64727,0,0,0,3.643,3.64345H599.33957a3.64727,3.64727,0,0,0,3.643-3.64345v-60.998a3.64688,3.64688,0,0,0-3.643-3.643Z" transform="translate(-295.11627 -86.11098)" fill="#fff"></path><path d="M353.437,291.9449a3.64688,3.64688,0,0,0-3.643,3.643v60.998a3.64727,3.64727,0,0,0,3.643,3.64345H599.33957a3.64727,3.64727,0,0,0,3.643-3.64345v-60.998a3.64688,3.64688,0,0,0-3.643-3.643Z" transform="translate(-295.11627 -86.11098)" fill="#e6e6e6"></path><path d="M353.89227,356.13073H598.88409V296.04345H353.89227Z" transform="translate(-295.11627 -86.11098)" fill="#fff"></path><circle cx="90.197" cy="239.97594" r="19.12575" fill="#000000"></circle><path d="M429.48465,313.33641a3.18763,3.18763,0,0,0,0,6.37526H579.75844a3.18763,3.18763,0,1,0,0-6.37526Z" transform="translate(-295.11627 -86.11098)" fill="#e6e6e6"></path><path d="M429.48465,332.46217a3.18763,3.18763,0,0,0,0,6.37525H579.75844a3.18762,3.18762,0,1,0,0-6.37525Z" transform="translate(-295.11627 -86.11098)" fill="#e6e6e6"></path></svg> 
                </center></div>
            <div class="col-sm-6"><center>
<form class="login-form" action="addevents.jsp" method="post">
<h2 class="login-form__hdg">ADD EVENTS</h2>
<div class="login-form__field">
<div class="input-group">
<input class="input-group__input" id="email" name="event_name" type="text" placeholder=" " required>
<label class="input-group__label" for="email">Event Name</label>
</div>
<div class="input-group">
<input class="input-group__input" id="email" name="event_type" type="text" placeholder=" " required>
<label class="input-group__label" for="email">Event Type</label>
</div>
<div class="input-group">
<input class="input-group__input" id="email" name="event_venu" type="text" placeholder=" " required>
<label class="input-group__label" for="email">Venue</label>
</div>    
<div class="input-group">
<input class="input-group__input" id="password" name="event_time" type="text" placeholder=" " required>
<label class="input-group__label" for="password">Time</label>
</div>
</div>
<input class="login-btn" type="submit" value="Add" name="add">
    <h1></h1>
    <button class="login-btn"><a href="admin.jsp" style="text-decoration:none;color:white;">Go Home</a></button> 
</form>
                </center>      </div>
        </div>
    </div>
<script src="https://static.codepen.io/assets/editor/iframe/iframeRefreshCSS-e03f509ba0a671350b4b363ff105b2eb009850f34a2b4deaadaa63ed5d970b37.js"></script>


</body></html>
<%
}
%>