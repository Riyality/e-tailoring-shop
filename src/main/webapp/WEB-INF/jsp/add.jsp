<jsp:include page="modules/header.jsp" />




   <!--  <style type="text/css">
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .button-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            margin-top: 100px;
            margin-left: 100px;
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
        .button-container i {
            margin-right: 8px;
        }
        form {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            margin: 20px auto;
        }
        #input-container {
            margin-bottom: 10px;
        }
        .input-group {
            display: flex;
            align-items: center;
            margin-bottom: 5px;
        }
        .input-group select, .input-group input {
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
        .add-button {
            flex-shrink: 0;
        }
        #form-container {
            display: none;
        }
    </style>

    <div class="button-container">
        <button class="add-button" type="button" onclick="showForm()">
            <i class="fas fa-plus"></i> Add
        </button>
        <button class="view-button" type="button">
            <i class="fas fa-eye"></i> View
        </button>
    </div>

    <div id="form-container">
        <form id="dynamic-form" onsubmit="handleSubmit(event)">
            <div id="input-container">
                <div class="input-group">
                    <input type="text" name="dynamicInput">
                    <button type="button" class="add-button" onclick="addInput()">+</button>
                </div>
            </div>
            <button type="submit" class="submit-button">Save</button>
        </form>
    </div>

    <script>
        function showForm() {
            document.getElementById('form-container').style.display = 'block';
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

        function handleSubmit(event) {
            event.preventDefault();
            const inputs = document.querySelectorAll('input[name="dynamicInput"]');
            const data = Array.from(inputs).map(input => input.value);
            console.log(data);
        }
    </script>
 -->
 
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .button-container {
            background-color: #fff;
            padding: 20px;
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
        form {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            margin: 20px auto;
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
        .add-button {
            flex-shrink: 0;
        }
        #form-container {
            display: none;
        }
    </style>
</head>
<body>
    <div class="button-container">
        <button class="add-button" type="button" onclick="showForm()">
            <i class="fas fa-plus"></i> Add
        </button>
        <button class="view-button" type="button">
            <i class="fas fa-eye"></i> View
        </button>
    </div>

    <div id="form-container">
        <form id="dynamic-form" onsubmit="handleSubmit(event)">
            <div id="input-container">
                <div class="input-group">
                    <input type="text" name="dynamicInput">
                    <button type="button" class="add-button" onclick="addInput()">+</button>
                </div>
            </div>
            <button type="submit" class="submit-button">Save</button>
        </form>
    </div>

    <script>
        function showForm() {
            document.getElementById('form-container').style.display = 'block';
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
                } else {
                    console.error('Error:', response.statusText);
                }
            } catch (error) {
                console.error('Error:', error);
            }
        }
    </script>
 
 
<jsp:include page="modules/footer.jsp" />