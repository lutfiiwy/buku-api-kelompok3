const express = require("express");
const app = express();

require("dotenv").config();

app.use(express.urlencoded({ extended: false }));
app.use(express.json());

const bukuRouter = require("./routes/buku.router");

app.use("/buku", bukuRouter);

const PORT = process.env.PORT || 4000;

app.listen(PORT, () => {
  console.log("Server running....");
});
