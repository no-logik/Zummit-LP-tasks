const fs = require('fs');
const mysql = require('mysql');


const http = require('http');
const url = require('url');
const { stringify } = require('querystring');
let db = [];
let dummy = [];
let tableString = ``;

function generateTable (db_array = []) {
    const records = db.length;   
    const cols = (Object.getOwnPropertyNames(db[0]).length);
    const colsArray = Object.getOwnPropertyNames(db[0]);
    let headRow =`<tr>`, dummyHeadRow = ``, tableBody = ``, dummyBodyRow = ``;
    for(i=0;i<cols;i++){
        
            dummyHeadRow = `<th>
                                ${(Object.getOwnPropertyNames(db[0]))[i]}
                            </th>`;
        headRow += dummyHeadRow;
    }
    
    for(i=0;i<records;i++){

        for(j=0;j<cols;j++){
            
            dummyBodyRow += `<td>${db[i][String(colsArray[j])]}</td>`
        }
        tableBody += `<tr>
                    ${dummyBodyRow}
                    </tr>`
        dummyBodyRow = ``;
        
    }

    let table = `
    <table>
        <thead>
            ${headRow}
            </tr>
        </thead
        <tbody>
            ${tableBody}
        </tbody>
    </table>
    `;

    return table;
}
function assignDB (value) {   
    dummy = value;
    const jsonContent = JSON.stringify(dummy);
    db = JSON.parse(jsonContent);    
    tableString = generateTable(db);
};

const conn = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'password',
    database: `lp-task`,
});

conn.connect((err) => {
    if(err) throw err;
    console.log('connected!');
});

conn.query('SELECT * FROM `lp-task`.customer', (err, result, fields) => {
    assignDB(result);
    console.log('assigned');
});

const newServer = http.createServer((req, res) => {
    if(req.url === '/'){
        res.end('Welcome to index');
    } else if(req.url === '/overview'){
        res.end('welcome to overview');
    }else if(req.url === '/table'){
        res.writeHead(200, {
            'content-type': 'text/html'
        });
        res.end(`<html><body>${tableString}</body></html>`);
    }
    // res.end('Welcome to the server');
});

newServer.listen(5500, '127.0.0.1', () =>{
    console.log('Listening to server requests');
})
