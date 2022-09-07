const app = require("express")();

app.get("/", (req, res) => res.send("Hello!"));
app.get("/foo", (req, res) => res.send("Hello from foo!"));
app.get("/*", (req, res) => res.send("This is an official 404"));

app.listen(5544, () => console.log("Listening on 5544!"));
