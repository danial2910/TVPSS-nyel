<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TVPSS - Crew & Resource Management</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	background-color: #f8f9fa;
}

.main-container {
	display: flex;
	min-height: 100vh;
}

/* Sidebar styles */
.sidebar {
	width: 250px;
	background-color: white;
	padding: 20px;
	box-shadow: 2px 0 5px rgba(0, 0, 0, 0.05);
}

.nav-item {
	padding: 12px 16px;
	margin: 4px 0;
	border-radius: 8px;
	color: #666;
	cursor: pointer;
	display: flex;
	align-items: center;
	transition: all 0.3s ease;
}

.nav-item {
	padding: 12px 16px;
	margin: 4px 0;
	border-radius: 8px;
	color: #666;
	cursor: pointer;
	display: flex;
	align-items: center;
	transition: all 0.3s ease;
	text-decoration: none; /* Added for links */
}

.nav-item:hover {
	background-color: #f8f9fa;
	text-decoration: none; /* Added for links */
	color: #666;
}

.nav-item.active {
	background-color: #9c27b0;
	color: white;
}

.nav-item.active:hover {
	color: white;
}

/* Main content styles */
.main-content {
	flex: 1;
	padding: 20px 40px;
	background-color: white;
}

.search-bar {
	width: 100%;
	max-width: 400px;
	padding: 8px 16px;
	border: 1px solid #ddd;
	border-radius: 8px;
	margin-bottom: 2rem;
}

/* Table styles */
.content-card {
	background: white;
	border-radius: 8px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.05);
	padding: 20px;
}

.manage-btn {
	background-color: #9c27b0;
	color: white;
	border: none;
	padding: 6px 16px;
	border-radius: 4px;
	transition: background-color 0.3s ease;
}

.manage-btn:hover {
	background-color: #7b1fa2;
}

/* Header styles */
.user-section {
	display: flex;
	align-items: center;
	gap: 10px;
	position: absolute;
	top: 20px;
	right: 40px;
}

.user-avatar {
	width: 40px;
	height: 40px;
	border-radius: 50%;
	background-color: #ddd;
}

.table th {
	color: #666;
	font-weight: 500;
	border-bottom: 2px solid #eee;
}

.table td {
	vertical-align: middle;
}

/* Logo link style */
.logo {
	font-size: 1.5rem;
	font-weight: bold;
	margin-bottom: 2rem;
	text-decoration: none;
	color: #333;
}
</style>
</head>
<body>
	<div class="main-container">
		<!-- Sidebar -->
		<div class="sidebar">
			<a href="${pageContext.request.contextPath}/" class="logo">TVPSS</a>

			<a href="${pageContext.request.contextPath}/crew-resource"
				class="nav-item ${currentPage == 'crew-resource' ? 'active' : ''}">
				<span>👥 Crew & Resource</span>
			</a> <a href="${pageContext.request.contextPath}/video-validation"
				class="nav-item ${currentPage == 'video-validation' ? 'active' : ''}">
				<span>🎥 Video Validation</span>
			</a> <a href="${pageContext.request.contextPath}/deals"
				class="nav-item ${currentPage == 'deals' ? 'active' : ''}"> <span>💼
					Deals</span>
			</a> <a href="${pageContext.request.contextPath}/contacts"
				class="nav-item ${currentPage == 'contacts' ? 'active' : ''}"> <span>📞
					Contacts</span>
			</a> <a href="${pageContext.request.contextPath}/reports"
				class="nav-item ${currentPage == 'reports' ? 'active' : ''}"> <span>📊
					Reports</span>
			</a>
		</div>


		<!-- Main Content -->
		<div class="main-content">
			<!-- User Section -->
			<div class="user-section">
				<div class="user-avatar"></div>
				<span>Katie Pena (Admin)</span>
			</div>

			<!-- Search Bar -->
			<input type="text" class="search-bar" placeholder="Search...">

			<h4 class="mb-4">Crew & Resource Management</h4>

			<div class="content-card">
				<h6 class="mb-4">List of School</h6>

				<table class="table">
					<thead>
						<tr>
							<th>No.</th>
							<th>School Name</th>
							<th>Total Crew</th>
							<th>Total Resources</th>
							<th>Available Resources</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${schools}" var="school" varStatus="status">
							<tr>
								<td>${status.count}</td>
								<td>${school.name}</td>
								<td>${school.totalCrew}</td>
								<td>${school.totalResources}</td>
								<td>${school.availableResources}</td>
								<td>
									<button class="manage-btn">Manage</button>
								</td>
							</tr>
						</c:forEach>

						<!-- Sample data (remove when using real data) -->
						<tr>
							<td>1.</td>
							<td>Sekolah Kebangsaan Taman Bukit Dahlia</td>
							<td>2</td>
							<td>5</td>
							<td>2</td>
							<td>
								<button class="manage-btn">Manage</button>
							</td>
						</tr>
						<tr>
							<td>2.</td>
							<td>Sekolah Kebangsaan Taman Cendana</td>
							<td>7</td>
							<td>6</td>
							<td>0</td>
							<td>
								<button class="manage-btn">Manage</button>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>