<jsp:include page="modules/header.jsp" />

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f5f5f5;
        margin: 0;
        padding: 0;
        min-height: 100vh;
        display: flex;
        flex-direction: column;
        align-items: center;
        height: 700px;
    }
    .button-container {
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        text-align: center;
        margin-top: 20px;
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
        max-width: 400px;
        margin: 20px 0;
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
    .form-container {
        display: none;
    }
    
    #div1{
      margin-top: 400px;
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
        <button class="add-button" type="button" onclick="showForm('form-container1')">
            <i class="fa fa-plus" aria-hidden="true"></i>
        </button>
        <button class="view-button" type="button">
            <i class="fa fa-eye" aria-hidden="true"></i>
        </button>
        <h6>Pocket Type 1</h6>
    </div>
    <div id="form-container1" class="form-container">
        <form id="dynamic-form1" onsubmit="handleSubmit(event, 'dynamic-form1')">
            <div id="input-container1" class="input-container">
                <div class="input-group">
                    <input type="text" name="dynamicInput">
                    <button type="button" class="add-button" onclick="addInput('input-container1')">+</button>
                </div>
            </div>
            <button type="submit" class="submit-button">Save</button>
        </form>
    </div>

    <div class="button-container">
        <button class="add-button" type="button" onclick="showForm('form-container2')">

    <div class="button-container">
        <button class="add-button" type="button" onclick="showForm()">
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
        <h6>Pant Type</h6>
    </div>
    <div id="form-container2" class="form-container">
        <form id="dynamic-form2" onsubmit="handleSubmit(event, 'dynamic-form2')">
            <div id="input-container2" class="input-container">
                <div class="input-group">
                    <input type="text" name="dynamicInput1">
                    <button type="button" class="add-button" onclick="addInput('input-container2')">+</button>
                </div>
            </div>
            <button type="submit" class="submit-button">Save</button>
        </form>
    </div>

    <div class="button-container">
        <button class="add-button" type="button" onclick="showForm('form-container3')">
           <i class="fa fa-plus" aria-hidden="true"></i>
        </button>
        <button class="view-button" type="button">
           <i class="fa fa-eye" aria-hidden="true"></i>
        </button>
        <h6>Pocket Type 3</h6>
    </div>

    <div id="form-container3" class="form-container">
        <form id="dynamic-form3" onsubmit="handleSubmit(event, 'dynamic-form3')">
            <div id="input-container3" class="input-container">
                <div class="input-group">
                    <input type="text" name="dynamicInput">
                    <button type="button" class="add-button" onclick="addInput('input-container3')">+</button>
                </div>
                
            </div>
            <button type="submit" class="submit-button">Save</button>
        </form>
    </div>
    
    
     <div class="button-container">
        <button class="add-button" type="button" onclick="showForm('form-container4')">
           <i class="fa fa-plus" aria-hidden="true"></i>
        </button>
        <button class="view-button" type="button">
           <i class="fa fa-eye" aria-hidden="true"></i>
        </button>
        <h6>Pocket Type 4</h6>
    </div>

    <div id="form-container4" class="form-container">
        <form id="dynamic-form4" onsubmit="handleSubmit(event, 'dynamic-form4')">
            <div id="input-container4" class="input-container">
                <div class="input-group">
                    <input type="text" name="dynamicInput2">
                    <button type="button" class="add-button" onclick="addInput('input-container4')">+</button>
                </div>
                
            </div>
            <button type="submit" class="submit-button">Save</button>
        </form>
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
    function showForm(formId) {
        document.getElementById(formId).style.display = 'block';
    }

    function addInput(containerId) {
        const container = document.getElementById(containerId);
        const div = document.createElement('div');
        div.classList.add('input-group');
        div.innerHTML = '<input type="text" name="dynamicInput">';
        container.appendChild(div);
    }

    async function handleSubmit(event, formId) {
        event.preventDefault();
        const form = document.getElementById(formId);
        const inputs = form.querySelectorAll('input[name="dynamicInput"]');
        const data = Array.from(inputs).map(input => input.value);

        try {
            const response = await fetch('/pocket-type', {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
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
        function showForm() {
            document.getElementById('form-modal').style.display = 'block';
        }

        function closeForm() {
            document.getElementById('form-modal').style.display = 'none';
        }
    

        function showForm(formId) {
            document.getElementById(formId).style.display = 'block';
        }

        function addInput(containerId) {
            const container = document.getElementById(containerId);
            const div = document.createElement('div');
            div.classList.add('input-group');
            div.innerHTML = `
                <input type="text" name="dynamicInput1">
            `;
            container.appendChild(div);
        }
        
        
          
        
        async function handleSubmit(event, formId) {
            event.preventDefault();
            const form = document.getElementById(formId);
            const ptype = form.querySelectorAll('input[name="dynamicInput1"]');
            const data = Array.from(ptype).map(input => input.value);
            
            if( formId == 'dynamic-form1')
            {
            try {
                const response = await fetch('/your-controller', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify({ ptype: data })
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
            else if(formId == 'dynamic-form2')
            	{
            	 try {
                     const response = await fetch('/your-controller', {
                         method: 'POST',
                         headers: {
                             'Content-Type': 'application/json'
                         },
                         body: JSON.stringify({ ptype: data })
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
            
            
            function showForm(formId) {
                document.getElementById(formId).style.display = 'block';
            }

            function addInput(containerId) {
                const container = document.getElementById(containerId);
                const div = document.createElement('div');
                div.classList.add('input-group');
                div.innerHTML = `
                    <input type="text" name="dynamicInput2">
                `;
                container.appendChild(div);
            }
            
            
              
            
           /*  async function handleSubmit(event, formId) {
                event.preventDefault();
                const form = document.getElementById(formId);
                const ptype = form.querySelectorAll('input[name="dynamicInput2"]');
                const data = Array.from(ptype).map(input => input.value);
                
                if( formId == 'dynamic-form1')
                {
                try {
                    const response = await fetch('/your-controller', {
                        method: 'POST',
                        headers: {
                            'Content-Type': 'application/json'
                        },
                        body: JSON.stringify({ ptype: data })
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
                else if(formId == 'dynamic-form2')
                	{
                	 try {
                         const response = await fetch('/your-controller', {
                             method: 'POST',
                             headers: {
                                 'Content-Type': 'application/json'
                             },
                             body: JSON.stringify({ ptype: data })
                         });

                         if (response.ok) {
                             const result = await response.json();
                             console.log('Success:', result);
                         }
                         
                         else if(formId == 'dynamic-form3')
                     	{
                     	 try {
                              const response = await fetch('controller', {
                                  method: 'POST',
                                  headers: {
                                      'Content-Type': 'application/json'
                                  },
                                  body: JSON.stringify({ ptype: data })
                              });

                              if (response.ok) {
                                  const result = await response.json();
                                  console.log('Success:', result);
                              }
                         
                         else {
                             console.error('Error:', response.statusText);
                         }
                     } catch (error) {
                         console.error('Error:', error);
                     }
                	
                	}
                
             */
        }

        window.onclick = function(event) {
            const modal = document.getElementById('form-modal');
            if (event.target == modal) {
                closeForm();
            }
        }
    </script>
<jsp:include page="modules/footer.jsp" />
