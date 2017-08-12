<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="sx" uri="/struts-dojo-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><s:property value="getText('INDEX_PAGE_TITLE')"/></title>
<!-- Le HTML5 shim, for IE6-8 support of HTML elements -->
<!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/custom/index.css">
</head>
<body>
<div class="container">    
		<div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">                    
			
			<!-- Div Panel -->
			<div class="panel panel-success" >
					
					<!-- Panel Heading -->
					<div class="panel-heading">
						<div class="panel-title"><s:property value="getText('INDEX_PAGE_TITLE')"/></div>
					</div><!-- End panel heading -->
					
					<!-- Panel body -->
					<div class="panel-body" >
							
						<form class="form-horizontal" method="post" action="login" role="form">
							
							<!-- Username -->
							<div class="input-group input-username">
								<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
								<input type="text" class="form-control" name="userName" placeholder="username" autofocus required>
							</div>
								
							<!-- Password -->
							<div class="input-group input-password">
								<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
								<input type="password" class="form-control" name="passWord" placeholder="password" required>
							</div>
							<div class="form-group login-button">
								<div class="col-sm-12 controls">
									<button type="submit" class="btn">Sign in</button>
								</div>
							</div>

						</form><!-- ENd form -->     
					</div><!-- ENd panel body -->
			</div><!-- End panel group -->  

		</div><!-- End col div -->
	</div><!-- End container -->
</body>
</html>