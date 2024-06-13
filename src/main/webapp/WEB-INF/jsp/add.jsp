<jsp:include page="modules/header.jsp" />

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Dynamic Forms</title>
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

    <div id="form-modal-pant-type" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeForm('form-modal-pant-type')">&times;</span>
            <form id="dynamic-form-pant-type" onsubmit="handlePantTypeSubmit(event)">
                <div id="input-container-pant-type" class="input-container">
                    <div class="input-group">
                        <input type="text" name="dynamicInput-pant-type">
                        <button type="button" class="add-button" onclick="addInputForPantType()">+</button>
                    </div>
                </div>
                <button type="submit" class="submit-button">Save</button>
                <div id="message-pant-type" class="message">Successfully added</div>
            </form>
        </div>
    </div>
    <div class="button-container">
        <button class="add-button" type="button" onclick="showPantTipTypePopup()">
           <i class="fa fa-plus" aria-hidden="true"></i>
        </button>
        <button class="view-button" type="button">
           <i class="fa fa-eye" aria-hidden="true"></i>
        </button>
        <h6>Pant tip Type</h6>
    </div>

    <div id="form-modal-pant-tip-type" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeForm('form-modal-pant-tip-type')">&times;</span>
            <form id="dynamic-form-pant-tip-type" onsubmit="handlePantTipTypeSubmit(event)">
                <div id="input-container1" class="input-container">
                    <div class="input-group">
                        <input type="text" name="dynamicInput-pant-tip-type">
                        <button type="button" class="add-button" onclick="addInputForPantTipType()">+</button>
                    </div>
                </div>
                <button type="submit" class="submit-button">Save</button>
                <div id="message-pant-tip-type" class="message">Successfully added</div>
            </form>
        </div>
    </div>

    <div class="button-container">
        <button class="add-button" type="button" onclick="showPantPressTypePopup()">
           <i class="fa fa-plus" aria-hidden="true"></i>
        </button>
        <button class="view-button" type="button">
           <i class="fa fa-eye" aria-hidden="true"></i>
        </button>
        <h6>Pant press Type</h6>
    </div>

    <div id="form-modal-pant-press-type" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeForm('form-modal-pant-press-type')">&times;</span>
            <form id="dynamic-form-pant-press-type" onsubmit="handlePantPressTypeSubmit(event)">
                <div id="input-container-pant-press-type" class="input-container">
                    <div class="input-group">
                        <input type="text" name="dynamicInput-pant-press-type">
                        <button type="button" class="add-button" onclick="addInputForPantPressType()">+</button>
                    </div>
                </div>
                <button type="submit" class="submit-button">Save</button>
                <div id="message-pant-press-type" class="message">Successfully added</div>
            </form>
        </div>
    </div>

    <div class="button-container">
        <button class="add-button" type="button" onclick="showPocketTypePopup()">
           <i class="fa fa-plus" aria-hidden="true"></i>
        </button>
        <button class="view-button" type="button">
           <i class="fa fa-eye" aria-hidden="true"></i>
        </button>
        <h6>Pocket Type</h6>
    </div>

    <div id="form-modal-pocket-type" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeForm('form-modal-pocket-type')">&times;</span>
            <form id="dynamic-form-pocket-type" onsubmit="handlePocketTypeSubmit(event)">
                <div id="input-container-pocket-type" class="input-container">
                    <div class="input-group">
                        <input type="text" name="dynamicInput-pocket-type">
                        <button type="button" class="add-button" onclick="addInputForPocketType()">+</button>
                    </div>
                </div>
                <button type="submit" class="submit-button">Save</button>
                <div id="message-pocket-type" class="message">Successfully added</div>
            </form>
        </div>
    </div>

    <script>
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

        function closeForm(modalId) {
            document.getElementById(modalId).style.display = 'none';
        }
        
        function addInput(containerId, inputName) {
            const container = document.getElementById(containerId);
            const div = document.createElement('div');
            div.classList.add('input-group');
            div.innerHTML = `<input type="text" name="${inputName}">`;
            container.appendChild(div);
        }

        function addInputForPocketType() {
            addInput('input-container-pocket-type', 'dynamicInput-pocket-type');
        }

        function addInputForPantType() {
            addInput('input-container-pant-type', 'dynamicInput-pant-type');
        }
        
        function addInputForPantPressType() {
            addInput('input-container-pant-press-type', 'dynamicInput-pant-press-type');
        }

        function addInputForPantTipType() {
            addInput('input-container1', 'dynamicInput-pant-tip-type');
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

        window.onclick = function(event) {
            const modals = document.querySelectorAll('.modal');
            modals.forEach(modal => {
                if (event.target == modal) {
                    closeForm(modal.id);
                }
            });
        }
    </script>
    <jsp:include page="modules/footer.jsp" />
</body>
</html>
