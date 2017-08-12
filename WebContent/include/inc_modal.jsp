<nav class="navbar navbar-default navbar-fixed-top">
    <div class="navbar-header">
        <a class="navbar-brand" href="#"><s:property value="getText('LOGO_TITLE')"/></a>
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
    </div>
    <div class="colla pse navbar-collapse" id="menutile1">
          <ul class="nav navbar-nav">
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Masters<b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="#">Company Details</a></li>
				<li class="divider"></li>
                <li><a><s:a name="productProperty" action="productprop">Product Properties</s:a></a></li>
				<li><a><s:a name="productMaster" action="createproduct">Product Master</s:a></a></li>
                <li><a><s:a name="productMaster" action="createuom">UOM Master</s:a></a></li>
                <li><a href="#">Customer Master</a></li>
                <li class="divider"></li>
                <li><a href="#">Tax Head</a></li>
				<li><a href="#">Tax Master</a></li>
				<li class="divider"></li>
				<li><a href="#">Customerwise Product Price</a></li>
				<li><a href="#">Currency Master</a></li>
				<li><a href="#">Opening Stock</a></li>
				<li><a href="#">Year Begin Numbers - Transaction wise</a></li>
              </ul>
            </li>
          </ul>
          <ul class="nav navbar-nav">
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Transactions <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="#">Purchase Order - Local</a></li>
                <li><a href="#">Purchase Order - Import</a></li>
                <li class="divider"></li>
				<li><a href="#">Purchase Local</a></li>
                <li><a href="#">Purchase Import</a></li>
                <li class="divider"></li>
                <li><a href="#">Purchase Return Local</a></li>
                <li><a href="#">Purchase Return Import</a></li>
                <li class="divider"></li>
				<li><a href="#">Stock Master</a></li>
				<li><a href="#">Sales Quotation</a></li>
				<li><a href="#">Proforma Invoice</a></li>
				<li><a href="#">Delivery Challan</a></li>
				<li class="divider"></li>
				<li><a href="#">Sales</a></li>
				<li><a href="#">Sales Return</a></li>
				<li class="divider"></li>
				<li><a href="#">Stock Adjustment</a></li>
              </ul>
            </li>
          </ul>
		    <ul class="nav navbar-nav">
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Reports <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li class="dropdown dropdown-submenu">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Master Reports</a>
              <ul class="dropdown-menu">
                <li><a href="#">Product Group Report </a></li>
                <li><a href="#">Product Property Report</a></li>
                <li><a href="#">UOM Master Report</a></li>
                <li><a href="#">Tax Master Report</a></li>
				<li><a href="#">Customer List</a></li>
				<li><a href="#">Supplier List</a></li>
				<li><a href="#">List of Products</a></li>
              </ul>
			  </li>
              <li class="dropdown dropdown-submenu">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Transaction Reports</a>
              <ul class="dropdown-menu">
                <li><a href="#">Purchase Order Local</a></li>
                <li><a href="#">Purchase Order Import</a></li>
                <li><a href="#">Purchase Local</a></li>
                <li><a href="#">Purchase Return Local</a></li>
				<li><a href="#">Purchase Import</a></li>
				<li><a href="#">Purchase Return Import</a></li>
				<li><a href="#">Stock Transfer</a></li>
				<li><a href="#">Sales Quotation</a></li>
				<li><a href="#">Work Contract</a></li>
				<li><a href="#">Proforma Invoice</a></li>
				<li><a href="#">Delivery Challan</a></li>
				<li><a href="#">Sales Invoice</a></li>
				<li><a href="#">Sales Return</a></li>
				<li><a href="#">Stock Adjustment</a></li>
              </ul>
			  </li>
                <li class="divider"></li>
				<li><a href="#">Purchase Register Periodwise</a></li>
                <li><a href="#">Purchase Return Periodwise</a></li>
                <li class="divider"></li>
                <li><a href="#">Import Purchase Register</a></li>
                <li><a href="#">Import Purchase Return Register</a></li>
                <li class="divider"></li>
				<li><a href="#">Sales Register</a></li>
				<li><a href="#">Sales Return Register</a></li>
				<li><a href="#">Stock Transfer Register</a></li>
				<li><a href="#">Closing Stock Report</a></li>
				<li class="divider"></li>
				<li><a href="#">Customerwise Price List</a></li>
				<li><a href="#">Sales Register Taxwise</a></li>
				<li class="divider"></li>
				<li><a href="#">VAT Report</a></li>
				<li><a href="#">Form Status Report</a></li>
				<li><a href="#">Customer Address - Label</a></li>
				<li><a href="#">Ledger Report</a></li>
				<li class="dropdown dropdown-submenu">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Product Reports</a>
              <ul class="dropdown-menu">
                <li><a href="#">Month-wise Report</a></li>
                <li><a href="#">QTY-wise Report</a></li>
                <li><a href="#">Invoice-wise Report</a></li>
                <li><a href="#">DC-wise Return Report</a></li>
				<li><a href="#">Customer-wise Report</a></li>
              </ul>
			  </li>
			  <li class="dropdown dropdown-submenu">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Pending Reports</a>
              <ul class="dropdown-menu">
                <li><a href="#">Pending Quotations</a></li>
                <li><a href="#">Pending Proforma</a></li>
                <li><a href="#">Pending DC</a></li>
                <li><a href="#">Pending Purchase Order Total - Local</a></li>
                <li><a href="#">Pending Purchase Order Total - Import</a></li>
              </ul>
			  </li>
				
              </ul>
            </li>
          </ul>
          <ul class="nav navbar-nav">
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">House Keeping<b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="#">Backup Database</a></li>
                <li><a href="#">Year End Process</a></li>
                <li class="divider"></li>
				<li><a href="#">About Cusoft</a></li>
				<li><a href="#">Exit</a></li>
              </ul>
            </li>
          </ul>   
         
         <div class="navbar-right-20px">
         <ul class="nav navbar-nav">
            <li class="dropdown">
              <a class="dropdown-toggle text-capitalize" href="#">Welcome <s:property value="#session.userName" /></a>
              <ul class="dropdown-menu">
                <li><a><s:a var="logout" action="logout">Logout</s:a></a></li>
                <!-- <li><a href="#">Year End Process</a></li>
                <li class="divider"></li>
				<li><a href="#">About Cusoft</a></li>
				<li><a href="#">Exit</a></li> -->
              </ul>
            </li>
          </ul>
          </div>
         
   		 <div class="navbar-right-20px">
      	 
        	<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".nav-collapse">
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
        	</button>
   		 </div>
   		 
   		 </div>
</nav>