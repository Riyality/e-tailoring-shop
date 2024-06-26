<jsp:include page="modules/header.jsp" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Dynamic Forms</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f5f5f5;
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 1000px;
}

.button-container {
	background-color: #fff;
	padding: 10px;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	text-align: center;
	margin-top: 100px;
	width: 400px;
}

.button-container button {
	padding: 10px 20px;
	margin: 10px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	display: inline-flex;
	align-items: center;
	font-size: 16px;
}

.button-container .add-button {
	background-color: #28a745;
	color: #fff;
}

.button-container .add-button:hover {
	background-color: #218838;
}

.button-container .view-button {
	background-color: #007bff;
	color: #fff;
}

.button-container .view-button:hover {
	background-color: #0069d9;
}

.modal {
	display: none;
	position: fixed;
	z-index: 1;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgb(0, 0, 0);
	background-color: rgba(0, 0, 0, 0.4);
}

.modal-content {
	background-color: #fefefe;
	margin: 15% auto;
	padding: 20px;
	border: 1px solid #888;
	width: 80%;
	max-width: 600px;
}

.close {
	color: #aaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
	margin-right: 10px;
	position: absolute;
	right: 0;
	top: 0;
}

.close:hover, .close:focus {
	color: black;
	text-decoration: none;
	cursor: pointer;
}

form {
	background-color: #ffffff;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.input-container {
	margin-bottom: 10px;
}

.input-group {
	display: flex;
	align-items: center;
	margin-bottom: 5px;
}

.input-group input {
	padding: 10px;
	border: 1px solid #ddd;
	border-radius: 3px;
	margin-right: 10px;
	flex: 1;
}

.add-button, .submit-button {
	padding: 10px 15px;
	background-color: #007bff;
	color: #ffffff;
	border: none;
	border-radius: 3px;
	cursor: pointer;
}

.add-button:hover, .submit-button:hover {
	background-color: #0056b3;
}

.message {
	margin-top: 10px;
	padding: 10px;
	background-color: #d4edda;
	color: #155724;
	border: 1px solid #c3e6cb;
	border-radius: 5px;
	display: none;
}

.input-group .delete-icon {
	margin-left: 10px;
	color: red;
	cursor: pointer;
	font-size: 18px;
}

.input-group .delete-icon:hover {
	color: darkred;
}
</style>
</head>
<body>

	<!-- pant type div
 -->
	<div class="button-container">
		<button class="add-button" type="button" onclick="showPantTypePopup()">
			<i class="fa fa-plus" aria-hidden="true"></i>
		</button>
		<button class="view-button" type="button"
			onclick="showViewDataPopup()">
			<i class="fa fa-eye" aria-hidden="true"></i>
		</button>
		<h6>Pant type</h6>
	</div>
	<div id="form-modal-pant-type" class="modal">
		<div class="modal-content">
			<h5>Pant Type</h5>
			<span class="close" onclick="closeForm('form-modal-pant-type')">&times;</span>
			<form id="dynamic-form-pant-type"
				onsubmit="handlePantTypeSubmit(event)">
				<div id="input-container-pant-type" class="input-container">
					<div class="input-group">
						<input type="text" name="dynamicInput-pant-type">
						<button type="button" class="add-button"
							onclick="addInputForPantType()">+</button>
					</div>
				</div>
				<button type="submit" class="submit-button">Save</button>
				<div id="message-pant-type" class="message">Successfully added</div>
			</form>
		</div>
	</div>


	<!-- 	Pant tip Type
 -->
	<div class="button-container">
		<button class="add-button" type="button"
			onclick="showPantTipTypePopup()">
			<i class="fa fa-plus" aria-hidden="true"></i>
		</button>
		<button class="view-button" type="button"
			onclick="showViewDataPopup1()">
			<i class="fa fa-eye" aria-hidden="true"></i>
		</button>
		<h6>Pant tip Type</h6>
	</div>

	<div id="form-modal-pant-tip-type" class="modal">
		<div class="modal-content">
			<h5>Pant Tip Type</h5>
			<span class="close" onclick="closeForm('form-modal-pant-tip-type')">&times;</span>
			<form id="dynamic-form-pant-tip-type"
				onsubmit="handlePantTipTypeSubmit(event)">
				<div id="input-container1" class="input-container">
					<div class="input-group">
						<input type="text" name="dynamicInput-pant-tip-type">
						<button type="button" class="add-button"
							onclick="addInputForPantTipType()">+</button>
					</div>
				</div>
				<button type="submit" class="submit-button">Save</button>
				<div id="message-pant-tip-type" class="message">Successfully
					added</div>
			</form>
		</div>
	</div>

	<div class="button-container">
		<button class="add-button" type="button"
			onclick="showPantPressTypePopup()">
			<i class="fa fa-plus" aria-hidden="true"></i>
		</button>
		<button class="view-button" type="button"
			onclick="showViewDataPopup2()">
			<i class="fa fa-eye" aria-hidden="true"></i>
		</button>
		<h6>Pant press Type</h6>
	</div>


	<!-- Pant Press Type
 -->
	<div id="form-modal-pant-press-type" class="modal">
		<div class="modal-content">
			<h5>Pant Press Type</h5>
			<span class="close" onclick="closeForm('form-modal-pant-press-type')">&times;</span>
			<form id="dynamic-form-pant-press-type"
				onsubmit="handlePantPressTypeSubmit(event)">
				<div id="input-container-pant-press-type" class="input-container">
					<div class="input-group">
						<input type="text" name="dynamicInput-pant-press-type">
						<button type="button" class="add-button"
							onclick="addInputForPantPressType()">+</button>
					</div>
				</div>
				<button type="submit" class="submit-button">Save</button>
				<div id="message-pant-press-type" class="message">Successfully
					added</div>
			</form>
		</div>
	</div>

	<!-- Pocket Type
 -->
	<div class="button-container">
		<button class="add-button" type="button"
			onclick="showPocketTypePopup()">
			<i class="fa fa-plus" aria-hidden="true"></i>
		</button>
		<button class="view-button" type="button"
			onclick="showViewDataPopup3()">
			<i class="fa fa-eye" aria-hidden="true"></i>
		</button>
		<h6>Pocket Type</h6>
	</div>

	<div id="form-modal-pocket-type" class="modal">
		<div class="modal-content">
			<h5>Pocket Type</h5>
			<span class="close" onclick="closeForm('form-modal-pocket-type')">&times;</span>
			<form id="dynamic-form-pocket-type"
				onsubmit="handlePocketTypeSubmit(event)">
				<div id="input-container-pocket-type" class="input-container">
					<div class="input-group">
						<input type="text" name="dynamicInput-pocket-type">
						<button type="button" class="add-button"
							onclick="addInputForPocketType()">+</button>
					</div>
				</div>
				<button type="submit" class="submit-button">Save</button>
				<div id="message-pocket-type" class="message">Successfully
					added</div>
			</form>
		</div>
	</div>

	<!-- 	View Pant Types list
 -->
	<div id="form-modal-view-data" class="modal">
		<div class="modal-content">
			<h5>View Pant Types</h5>
			<span class="close" onclick="closeForm('form-modal-view-data')">&times;</span>
			<div id="view-data-container" class="input-container">
				<!-- Data will be dynamically inserted here -->
			</div>
			<button type="button" class="submit-button"
				onclick="openForm('form-modal-add-data')">Add</button>
			<button type="button" class="submit-button"
				onclick="closeForm('form-modal-view-data')">Close</button>
		</div>
	</div>



	<!-- 	add pant type second form
 -->


	<div id="form-modal-add-data" class="modal">
		<div class="modal-content">
			<h5>Pant Type</h5>
			<span class="close" onclick="closeForm('form-modal-add-data')">&times;</span>
			<form id="dynamic-form-pant-type"
				onsubmit="handlePantTypeSubmit1(event)">
				<div id="input-container-pant-type1" class="input-container">
					<div class="input-group">
						<input type="text" name="dynamicInput-pant-type1">
						<button type="button" class="add-button"
							onclick="addInputForPantType1()">+</button>
					</div>
				</div>
				<button type="submit" class="submit-button">Save</button>
				<div id="message-pant-type1" class="message">Successfully
					added</div>
			</form>
		</div>
	</div>


	<!-- 	View Pant Tip Types list
 -->
	<div id="form-modal-view-data1" class="modal">
		<div class="modal-content">
			<h5>View Pant Tip Types</h5>
			<span class="close" onclick="closeForm('form-modal-view-data1')">&times;</span>
			<div id="view-data-container1" class="input-container">
				<!-- Data will be dynamically inserted here -->
			</div>
			<button type="button" class="submit-button"
				onclick="openForm('form-modal-add-data1')">Add</button>
			<button type="button" class="submit-button"
				onclick="closeForm('form-modal-view-data1')">Close</button>
		</div>
	</div>



	<div id="form-modal-add-data1" class="modal">
		<div class="modal-content">
			<h5>Pant Tip Type</h5>
			<span class="close" onclick="closeForm('form-modal-add-data1')">&times;</span>
			<form id="dynamic-form-pant-tip-type1"
				onsubmit="handlePantTipTypeSubmit1(event)">
				<div id="input-container2" class="input-container">
					<div class="input-group">
						<input type="text" name="dynamicInput-pant-tip-type1">
						<button type="button" class="add-button"
							onclick="addInputForPantTipType1()">+</button>
					</div>
				</div>
				<button type="submit" class="submit-button">Save</button>
				<div id="message-pant-tip-type1" class="message">Successfully
					added</div>
			</form>
		</div>
	</div>


	<!-- 	View Pant Press Types list
 -->

	<div id="form-modal-view-data2" class="modal">
		<div class="modal-content">
			<h5>View Pant Press Types</h5>
			<span class="close" onclick="closeForm('form-modal-view-data2')">&times;</span>
			<div id="view-data-container2" class="input-container">
				<!-- Data will be dynamically inserted here -->
			</div>
			<button type="button" class="submit-button"
				onclick="openForm('form-modal-add-data2')">Add</button>

			<button type="button" class="submit-button"
				onclick="closeForm('form-modal-view-data2')">Close</button>
		</div>
	</div>

	<div id="form-modal-add-data2" class="modal">
		<div class="modal-content">
			<h5>Pant Press Type</h5>
			<span class="close" onclick="closeForm('form-modal-add-data2')">&times;</span>
			<form id="dynamic-form-pant-press-type"
				onsubmit="handlePantPressTypeSubmit1(event)">
				<div id="input-container-pant-press-type1" class="input-container">
					<div class="input-group">
						<input type="text" name="dynamicInput-pant-press-type1">
						<button type="button" class="add-button"
							onclick="addInputForPantPressType1()">+</button>
					</div>
				</div>
				<button type="submit" class="submit-button">Save</button>
				<div id="message-pant-press-type1" class="message">Successfully
					added</div>
			</form>
		</div>
	</div>



	<!-- 	View Pocket Types list
 -->
	<div id="form-modal-view-data3" class="modal">
		<div class="modal-content">
			<h5>View Pocket Types</h5>
			<span class="close" onclick="closeForm('form-modal-view-data3')">&times;</span>
			<div id="view-data-container3" class="input-container">
				<!-- Data will be dynamically inserted here -->
			</div>
			<button type="button" class="submit-button"
				onclick="openForm('form-modal-add-data3')">Add</button>
			<button type="button" class="submit-button"
				onclick="closeForm('form-modal-view-data3')">Close</button>
		</div>
	</div>

	<div id="form-modal-add-data3" class="modal">
		<div class="modal-content">
			<h5>Pocket Type</h5>
			<span class="close" onclick="closeForm('form-modal-add-data3')">&times;</span>
			<form id="dynamic-form-pocket-type"
				onsubmit="handlePocketTypeSubmit1(event)">
				<div id="input-container-pocket-type1" class="input-container">
					<div class="input-group">
						<input type="text" name="dynamicInput-pocket-type1">
						<button type="button" class="add-button"
							onclick="addInputForPocketType1()">+</button>
					</div>
				</div>
				<button type="submit" class="submit-button">Save</button>
				<div id="message-pocket-type1" class="message">Successfully
					added</div>
			</form>
		</div>
	</div>



	<script>
	
	    
	    function openForm(modalId) {
	        document.getElementById(modalId).style.display = "block";
	    }

	    function closeForm(modalId) {
	        document.getElementById(modalId).style.display = "none";
	    }

	 
	    
	    
	    
        function showForm(modalId) {
            document.getElementById(modalId).style.display = 'block';
        }

        
        
        function showPocketTypePopup() {
            showForm('form-modal-pocket-type');
        }

        function showPantTypePopup() {
            showForm('form-modal-pant-type');
        }

        function showPantPressTypePopup() {
            showForm('form-modal-pant-press-type');
        }

        function showPantTipTypePopup() {
            showForm('form-modal-pant-tip-type');
        }

        function showViewDataPopup() {
            showForm('form-modal-view-data');
        }
        function showViewDataPopup1() {
            showForm('form-modal-view-data1');
        }
        function showViewDataPopup2() {
            showForm('form-modal-view-data2');
        } 
        function showViewDataPopup3() {
            showForm('form-modal-view-data3');
        }
        function closeForm(modalId) {
            document.getElementById(modalId).style.display = 'none';
        }
        
        
        

        function addInput(containerId, inputName) {
            const container = document.getElementById(containerId);
            if (!container) {
                console.error(`Container with id '${containerId}' not found.`);
                return;
            }

            const div = document.createElement('div');
            div.classList.add('input-group');

            const input = document.createElement('input');
            input.type = 'text';
            input.name = inputName;
            
          

            div.appendChild(input);
          
            container.appendChild(div);
        }
        
        
        
        

        function addInputForPocketType() {
            addInput('input-container-pocket-type', 'dynamicInput-pocket-type');
        }

        function addInputForPocketType1() {
            addInput('input-container-pocket-type1', 'dynamicInput-pocket-type1');
        }

        function addInputForPantType() {
            addInput('input-container-pant-type', 'dynamicInput-pant-type');
        }
        function addInputForPantType1() {
            addInput('input-container-pant-type1', 'dynamicInput-pant-type1');
        }
        

        function addInputForPantPressType() {
            addInput('input-container-pant-press-type', 'dynamicInput-pant-press-type');
        }

        function addInputForPantPressType1() {
            addInput('input-container-pant-press-type1', 'dynamicInput-pant-press-type1');
        }

        function addInputForPantTipType() {
            addInput('input-container1', 'dynamicInput-pant-tip-type');
        }
        
        function addInputForPantTipType1() {
            addInput('input-container2', 'dynamicInput-pant-tip-type1');
        }
        
        
        
        
        
        
        

        async function handlePocketTypeSubmit(event) {
            event.preventDefault();
            const inputs = document.querySelectorAll('input[name="dynamicInput-pocket-type"]');
            const data = Array.from(inputs).map(input => input.value);

            try {
                const response = await fetch('/dropdowns/pockets', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify({ inputs: data })
                });

                if (response.ok) {
                    const result = await response.json();
                    console.log('Success:', result);
                    document.getElementById('message-pocket-type').style.display = 'block';
                    setTimeout(() => {
                        document.getElementById('message-pocket-type').style.display = 'none';
                    }, 3000);
                } else {
                    console.error('Error:', response.statusText);
                }
            } catch (error) {
                console.error('Error:', error);
            }
        }
        
        async function handlePocketTypeSubmit1(event) {
            event.preventDefault();
            const inputs = document.querySelectorAll('input[name="dynamicInput-pocket-type1"]');
            const data = Array.from(inputs).map(input => input.value);

            try {
                const response = await fetch('/dropdowns/pockets', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify({ inputs: data })
                });

                if (response.ok) {
                    const result = await response.json();
                    console.log('Success:', result);
                    document.getElementById('message-pocket-type1').style.display = 'block';
                    setTimeout(() => {
                        document.getElementById('message-pocket-type1').style.display = 'none';
                    }, 3000);
                } else {
                    console.error('Error:', response.statusText);
                }
            } catch (error) {
                console.error('Error:', error);
            }
        }
        
        
        
        async function handlePantTypeSubmit(event) {
            event.preventDefault();
            const inputs = document.querySelectorAll('input[name="dynamicInput-pant-type"]');
            const data = Array.from(inputs).map(input => input.value);
            console.log(data);
            try {
                const response = await fetch('/dropdowns/pants', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify({ inputs: data })
                });

                if (response.ok) {
                    const result = await response.json();
                    console.log('Success:', result);
                    document.getElementById('message-pant-type').style.display = 'block';
                    setTimeout(() => {
                        document.getElementById('message-pant-type').style.display = 'none';
                    }, 3000);
                } else {
                    console.error('Error:', response.statusText);
                }
            } catch (error) {
                console.error('Error:', error);
            }
        }
        



       
        async function handlePantTypeSubmit1(event) {
            event.preventDefault();
            const inputs = document.querySelectorAll('input[name="dynamicInput-pant-type1"]');
            const data = Array.from(inputs).map(input => input.value);
            console.log(data);
            try {
                const response = await fetch('/dropdowns/pants', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify({ inputs: data })
                });

                if (response.ok) {
                    const result = await response.json();
                    console.log('Success:', result);
                    document.getElementById('message-pant-type1').style.display = 'block';
                    setTimeout(() => {
                        document.getElementById('message-pant-type1').style.display = 'none';
                    }, 3000);
                } else {
                    console.error('Error:', response.statusText);
                }
            } catch (error) {
                console.error('Error:', error);
            }
        }
        
        


        async function handlePantPressTypeSubmit(event) {
            event.preventDefault();
            const inputs = document.querySelectorAll('input[name="dynamicInput-pant-press-type"]');
            const data = Array.from(inputs).map(input => input.value);

            try {
                const response = await fetch('/dropdowns/pantpress', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify({ inputs: data })
                });

                if (response.ok) {
                    const result = await response.json();
                    console.log('Success:', result);
                    document.getElementById('message-pant-press-type').style.display = 'block';
                    setTimeout(() => {
                        document.getElementById('message-pant-press-type').style.display = 'none';
                    }, 3000);
                } else {
                    console.error('Error:', response.statusText);
                }
            } catch (error) {
                console.error('Error:', error);
            }
        }

        
        
        async function handlePantPressTypeSubmit1(event) {
            event.preventDefault();
            const inputs = document.querySelectorAll('input[name="dynamicInput-pant-press-type1"]');
            const data = Array.from(inputs).map(input => input.value);

            try {
                const response = await fetch('/dropdowns/pantpress', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify({ inputs: data })
                });

                if (response.ok) {
                    const result = await response.json();
                    console.log('Success:', result);
                    document.getElementById('message-pant-press-type1').style.display = 'block';
                    setTimeout(() => {
                        document.getElementById('message-pant-press-type1').style.display = 'none';
                    }, 3000);
                } else {
                    console.error('Error:', response.statusText);
                }
            } catch (error) {
                console.error('Error:', error);
            }
        }

        
        
        
        async function handlePantTipTypeSubmit(event) {
            event.preventDefault();
            const inputs = document.querySelectorAll('input[name="dynamicInput-pant-tip-type"]');
            const data = Array.from(inputs).map(input => input.value);
            console.log(data);
            try {
                const response = await fetch('/dropdowns/panttip', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify({ inputs: data })
                });

                if (response.ok) {
                    const result = await response.json();
                    console.log('Success:', result);
                    document.getElementById('message-pant-tip-type').style.display = 'block';
                    setTimeout(() => {
                        document.getElementById('message-pant-tip-type').style.display = 'none';
                    }, 3000);
                } else {
                    console.error('Error:', response.statusText);
                }
            } catch (error) {
                console.error('Error:', error);
            }
        }

        
        
        async function handlePantTipTypeSubmit1(event) {
            event.preventDefault();
            const inputs = document.querySelectorAll('input[name="dynamicInput-pant-tip-type1"]');
            const data = Array.from(inputs).map(input => input.value);
            console.log(data);
            try {
                const response = await fetch('/dropdowns/panttip', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify({ inputs: data })
                });

                if (response.ok) {
                    const result = await response.json();
                    console.log('Success:', result);
                    document.getElementById('message-pant-tip-type1').style.display = 'block';
                    setTimeout(() => {
                        document.getElementById('message-pant-tip-type1').style.display = 'none';
                    }, 3000);
                } else {
                    console.error('Error:', response.statusText);
                }
            } catch (error) {
                console.error('Error:', error);
            }
        }

        
        
        
        
        window.onclick = function(event) {
            const modals = document.querySelectorAll('.modal');
            modals.forEach(modal => {
                if (event.target == modal) {
                    closeForm(modal.id);
                }
            });
        }
        
        
        
        async function showViewDataPopup() {
            try {
                const response = await fetch('/dropdowns/pant-types');
                if (response.ok) {
                    const data = await response.json();
                   console.log(data)
                    displayPantTypes(data);
                    showForm('form-modal-view-data');
                } else {
                    console.error('Error fetching pant types:', response.statusText);
                }
            } catch (error) {
                console.error('Error:', error);
            }
        }

        function displayPantTypes(pantTypes) {
            const container = document.getElementById('view-data-container');
            container.innerHTML = ''; // Clear previous data
            pantTypes.forEach(type => {
                const div = document.createElement('div');
                div.classList.add('input-group');
                const input = document.createElement('input');
                input.type = 'text';
                input.value = type.pantType;
                input.disabled = true; 
              
                div.appendChild(input);
               
                container.appendChild(div);
            });
        }
        
        
        
        
        async function showViewDataPopup1() {
            try {
                const response = await fetch('/dropdowns/pant-tip-types');
                if (response.ok) {
                    const data = await response.json();
                    console.log(data)
                    displayPantTipTypes(data);
                    showForm('form-modal-view-data1');
                } else {
                    console.error('Error fetching pant types:', response.statusText);
                }
            } catch (error) {
                console.error('Error:', error);
            }
        }

        function displayPantTipTypes(pantTipTypes) {
            const container = document.getElementById('view-data-container1');
            container.innerHTML = ''; // Clear previous data
            pantTipTypes.forEach(type => {
                const div = document.createElement('div');
                div.classList.add('input-group');
                const input = document.createElement('input');
                input.type = 'text';
                input.value = type.tiptype;
                input.disabled = true; // Disable input to make it read-only
                
              
                div.appendChild(input);
                container.appendChild(div);
            });
            
        }
        
        
        
        
        async function showViewDataPopup2() {
            try {
                const response = await fetch('/dropdowns/pant-press-types');
                if (response.ok) {
                    const data = await response.json();
                    console.log(data)
                    displayPantPressTypes(data);
                    showForm('form-modal-view-data2');
                } else {
                    console.error('Error fetching pant types:', response.statusText);
                }
            } catch (error) {
                console.error('Error:', error);
            }
        }

        function displayPantPressTypes(pantPressTypes) {
            const container = document.getElementById('view-data-container2');
            container.innerHTML = ''; // Clear previous data
            pantPressTypes.forEach(type => {
                const div = document.createElement('div');
                div.classList.add('input-group');
                const input = document.createElement('input');
                input.type = 'text';
                input.value = type.pressType;
                input.disabled = true; // Disable input to make it read-only
                
               
                
                div.appendChild(input);
                container.appendChild(div);
            });
            
        }
        
        
        
        
        
        async function showViewDataPopup3() {
            try {
                const response = await fetch('/dropdowns/pocket-types');
                if (response.ok) {
                    const data = await response.json();
                    displayPantPocketTypes(data);
                    console.log(data)
                    showForm('form-modal-view-data3');
                } else {
                    console.error('Error fetching pant types:', response.statusText);
                }
            } catch (error) {
                console.error('Error:', error);
            }
        }

        function displayPantPocketTypes(pantPocketTypes) {
            const container = document.getElementById('view-data-container3');
            container.innerHTML = ''; // Clear previous data
            pantPocketTypes.forEach(type => {
                const div = document.createElement('div');
                div.classList.add('input-group');
                const input = document.createElement('input');
                input.type = 'text';
                input.value = type.type;
                input.disabled = true; 
                
             
                
                div.appendChild(input);
                container.appendChild(div);
            });
            
        }
        
    

    </script>
	<jsp:include page="modules/footer.jsp" />