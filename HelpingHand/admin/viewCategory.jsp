
<jsp:include page="../template/admin_template/header.jsp" />
<%@page import="com.helpinghand.serviceImpl.CategoryServiceImpl"%>
<%@page import="com.helpinghand.model.Category"%>

<%
	CategoryServiceImpl categoryService = new CategoryServiceImpl();
%>

<div class="wrapper">
	<jsp:include page="../template/admin_template/banner.jsp" />
	<section class="maincontentsection">
		<div class="container">
			<div class="row">
				
				<%
					String success = "";
					if (request.getParameter("error") != null) {
						success = (String) request.getParameter("error");
				%>
				<div class="alert alert-success alert-dismissible fade in">
				 <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
					<strong>Success!</strong><%=success%>
				</div>

				<%
					}
				%>


				<div class="col-md-11 col-md-offset-1">
					<a
						style="padding: 7px; background: green; color: #FFFFFF; border-radius: 5px; margin-bottom: 10px;"
						href="addCategorydetail.jsp"><i class="fa fa-plus"
						aria-hidden="true"></i> Add Category</a>
					<table class="table table-striped">
						<thead>
							<tr>
								<th scope="col">SL</th>
								<th scope="col">CategoryName</th>
								<th scope="col">Type</th>
								<th scope="col">Date</th>
								<th scope="col">Action</th>
							</tr>
						</thead>
						<tbody>

							<%
								int countRow = 0;
								for (Category category : categoryService.getCategoryList()) {
									countRow += 1;
							%>
							<tr>
								<th scope="row"><%=countRow%></th>
								<td><%=category.getCategoryName()%></td>
								<td><%=category.getType()%></td>
								<td><%=category.getCategorydate()%></td>
								<td><a
									style="color: red; font-weight: bold; font-size: 21px;"
									href="../ManageAdmin?deleteCategoryPOST=<%=category.getCategoryId()%>"
									Onclick="if (!(confirm('Are you sure you want to delete this post?'))) return false"><i
										style="margin-right: 8px;" class="fa fa-times"
										aria-hidden="true"></i></a> <a
									style="color: green; font-weight: bold; font-size: 21px;"
									href="updateCategory.jsp?updateCategory=<%=category.getCategoryId()%>"><i
										style="margin-right: 8px;" class="fa fa-pencil"
										aria-hidden="true"></i></a></td>
							</tr>
							<%
								}
							%>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</section>
	<br /> <br /> <br />
	<jsp:include page="../template/admin_template/footer.jsp" />