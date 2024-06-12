<jsp:include page="modules/header.jsp" />

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f5f5f5;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height:1000px;
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
        background-color: rgb(0,0,0);
        background-color: rgba(0,0,0,0.4);
    }
    .modal-content {
        background-color: #fefefe;
        margin: 15% auto;
        padding: 20px;
        border: 1px solid #888;
        width: 80%;
        max-width: 500px;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    .close {
        color: #aaa;
        float: right;
        font-size: 28px;
        font-weight: bold;
    }
    .close:hover,
    .close:focus {
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
    #input-container {
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
   
</style>
</head>
<body>
    <div class="button-container">
        <button class="add-button" type="button" onclick="showPantTypePopup()">
           <i class="fa fa-plus" aria-hidden="true"></i>
        </button>
        <button class="view-button" type="button">
           <i class="fa fa-eye" aria-hidden="true"></i>
        </button>
        <h6>Pant type</h6>
    </div>

    <div id="form-modal" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeForm()">&times;</span>
            <form id="dynamic-form" onsubmit="handleSubmit(event)">
                <div id="input-container">
                    <div class="input-group">
                        <input type="text" name="dynamicInput">
                        <button type="button" class="add-button" onclick="addInput()">+</button>
                    </div>
                </div>
                <button type="submit" class="submit-button">Save</button>
                <div id="message" class="message">Succesfully added</div>
            </form>
        </div>
    </div>
    
     <div id="form-modal-pant-type" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeForm()">&times;</span>
            <form id="dynamic-form" onsubmit="handlePantTypeSubmit(event)">
                <div id="input-container-pant-type">
                    <div class="input-group">
                        <input type="text" name="dynamicInput-pant-type">
                        <button type="button" class="add-button" onclick="addInputForPantType()">+</button>
                    </div>
                </div>
                <button type="submit" class="submit-button">Save Bag</button>
                <div id="message" class="message">Succesfully added</div>
            </form>
        </div>
    </div>
    
    
     <div class="button-container">
        <button class="add-button" type="button" onclick="showForm()">
           <i class="fa fa-plus" aria-hidden="true"></i>
        </button>
        <button class="view-button" type="button">
           <i class="fa fa-eye" aria-hidden="true"></i>
        </button>
        <h6>Pant tip Type</h6>
    </div>

    <div id="form-modal" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeForm()">&times;</span>
            <form id="dynamic-form" onsubmit="handleSubmit(event)">
                <div id="input-container1">
                    <div class="input-group1">
                        <input type="text" name="dynamicInput1">
                        <button type="button" class="add-button" onclick="addInput()">+</button>
                    </div>
                </div>
                <button type="submit" class="submit-button">Save</button>
                <div id="message" class="message">Succesfully added</div>
            </form>
        </div>
    </div>
    
   
     <div class="button-container">
        <button class="add-button" type="button" onclick="showForm()">
           <i class="fa fa-plus" aria-hidden="true"></i>
        </button>
        <button class="view-button" type="button">
           <i class="fa fa-eye" aria-hidden="true"></i>
        </button>
        <h6>Pant press Type</h6>
    </div>

    <div id="form-modal" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeForm()">&times;</span>
            <form id="dynamic-form" onsubmit="handleSubmit(event)">
                <div id="input-container2">
                    <div class="input-group2">
                        <input type="text" name="dynamicInput2">
                        <button type="button" class="add-button" onclick="addInput()">+</button>
                    </div>
                </div>
                <button type="submit" class="submit-button">Save</button>
                <div id="message" class="message">Succesfully added</div>
            </form>
        </div>
    </div>
     <div class="button-container">
        <button class="add-button" type="button" onclick="showForm()">
           <i class="fa fa-plus" aria-hidden="true"></i>
        </button>
        <button class="view-button" type="button">
           <i class="fa fa-eye" aria-hidden="true"></i>
        </button>
        <h6>Pocket Type</h6>
    </div>

    <div id="form-modal" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeForm()">&times;</span>
            <form id="dynamic-form3" onsubmit="handleSubmit(event)">
                <div id="input-container3">
                    <div class="input-group3">
                        <input type="text" name="dynamicInput3">
                        <button type="button" class="add-button" onclick="addInput()">+</button>
                    </div>
                </div>
                <button type="submit" class="submit-button">Save</button>
                <div id="message" class="message">Succesfully added</div>
            </form>
        </div>
    </div>
    

    <script>
        function showForm() {
            document.getElementById('form-modal').style.display = 'block';
        }
        function showPantTypePopup() {
            document.getElementById('form-modal-pant-type').style.display = 'block';
        }

        function closeForm() {
            document.getElementById('form-modal').style.display = 'none';
        }

        function addInput() {
            const container = document.getElementById('input-container');
            const div = document.createElement('div');
            div.classList.add('input-group');
            div.innerHTML = `
                <input type="text" name="dynamicInput">
            `;
            container.appendChild(div);
        }
        
        function addInputForPantType() {
            const container = document.getElementById('input-container-pant-type');
            const div = document.createElement('div');
            div.classList.add('input-group');
            div.innerHTML = `
                <input type="text" name="dynamicInput-pant-type">
            `;
            container.appendChild(div);
        }

        async function handleSubmit(event) {
            event.preventDefault();
            const inputs = document.querySelectorAll('input[name="dynamicInput"]');
            const data = Array.from(inputs).map(input => input.value);
            
            try {
                const response = await fetch('/your-controller-endpoint', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify({ inputs: data })
                });

                if (response.ok) {
                    const result = await response.json();
                    console.log('Success:', result);
                    document.getElementById('message').style.display = 'block'; // Show success message
                    setTimeout(() => {
                        document.getElementById('message').style.display = 'none'; // Hide success message after 3 seconds
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
            console.log(data)
            try {
                const response = await fetch('/your-controller', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify({ inputs: data })
                    
                    
                });

                if (response.ok) {
                    const result = await response.json();
                    console.log('Success:', result);
                    document.getElementById('message').style.display = 'block'; // Show success message
                    setTimeout(() => {
                        document.getElementById('message').style.display = 'none'; // Hide success message after 3 seconds
                    }, 3000);
                } else {
                    console.error('Error:', response.statusText);
                }
            } catch (error) {
                console.error('Error:', error);
            }
        }

        window.onclick = function(event) {
            const modal = document.getElementById('form-modal');
            if (event.target == modal) {
                closeForm();
            }
        }
    </script>
<jsp:include page="modules/footer.jsp" />
