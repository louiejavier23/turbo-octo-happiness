<%@page import="java.sql.*,java.util.*"%>
<%
	String p_name = (String)request.getParameter("name");
	String p_qty = (String)request.getParameter("qty");
	String p_img = (String)request.getParameter("img");
	String p_price = (String)request.getParameter("amount");
	
	try{
			
		if(p_qty != ""){
				
			//out.print(p_name+p_qty+p_img);
			
			List<String> newPName = (List<String>)session.getAttribute("pname");
			List<String> newPQty = (List<String>)session.getAttribute("pqty");
			List<String> newPImg = (List<String>)session.getAttribute("pimg");
			List<String> newPAmt = (List<String>)session.getAttribute("pamt");
			
			int quan;
			
			String name,qty,img,amt;
			String tempName;
			int i;
			
			for(i=0;i<newPName.size();i++){
				
				tempName = newPName.get(i);
				
				if(tempName.equalsIgnoreCase(p_name)){

					quan = Integer.parseInt(newPQty.get(i)) + Integer.parseInt(p_qty);
					
					name = newPName.get(i);
					qty = String.valueOf(quan);
					img = newPImg.get(i);
					amt = newPAmt.get(i);
					
					newPName.set(i,name);
					newPQty.set(i,qty);
					newPImg.set(i,img);
					newPAmt.set(i,amt);
					
					break;
				}
				
				//out.println(name+qty+img);
			}
			
			if(i==newPName.size()){
					
				newPName.add(p_name);
				newPQty.add(p_qty);
				newPImg.add(p_img);
				newPAmt.add(p_price);
				
			}
			
			session.setAttribute("pname",newPName);
			session.setAttribute("pqty",newPQty);
			session.setAttribute("pimg",newPImg);
			session.setAttribute("pamt",newPAmt);
		}

	}
	catch(Exception e){
		out.print(e);
	}
	
	response.sendRedirect("store.jsp");
	
%>
