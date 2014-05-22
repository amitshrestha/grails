
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Assignments</title>
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}" type="text/css">
</head>
<body>
	<div class="container" style="margin-top:50px;">
		<div class="row col-md-8 col-md-offset-2 well">
			<g:form url="[resource:userInstance, action:'create']" class="form-horizontal" role="form" >
				<div class="row">
					<div class="col-md-6">
				  	<div class="form-group">
				    	<label for="inputEmail3" class="col-sm-2 control-label">Name</label>
				    	<div class="col-sm-10 ">
				    			<g:textField name="name" value="" class="form-control" id="inputEmail3" placeholder="Name"/>
				    	</div>
					  </div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
				    	<label for="inputEmail3" class="col-sm-2 control-label">Address</label>
					    <div class="col-sm-10">
					    	<g:textField name="address" value="" class="form-control" id="inputEmail3" placeholder="Address"/>
					    </div>
					  </div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<label for="inputEmail3" class="col-sm-2 control-label">Role</label>
							<div class="col-sm-10">
								<g:select name="role" from="${['User', 'Admin']}" valueMessagePrefix="role" class="form-control" />
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<g:actionSubmit name="create" class="btn btn-info" value="Save" />
					</div>
				</div>
			</g:form>
			<h2>List</h2>

			<table class="table table-bordered table-hover">
				<thead>
					<tr>
						<th>Name</th>
						<th>Address</th>
						<th>Role</th>
					</tr>
				</thead>
				<tbody>
					<g:each in="${userList}" var="user">
						<tr>
						  <td>${user.name?.encodeAsHTML()}</td>

						  <td>${user.address?.encodeAsHTML()}</td>

						  <td>${user.role?.encodeAsHTML()}</td>
						</tr>
					</g:each>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>
