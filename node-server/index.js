const app = require("express")();

app.get("/node", (req, res) => res.send("Hello!"));
app.get("/node/foo", (req, res) => res.send("Hello from foo!"));
app.get("/node/*", (req, res) => res.send("This is an official 404"));

app.listen(5544, () => console.log("Listening on 5544!"));
