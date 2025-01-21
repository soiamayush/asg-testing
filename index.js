const express = require("express");
const app = express();
const port = 4000; // You can change this port if needed

// Route for /status
app.get("/status", (req, res) => {
  res.status(200).json({ ok: true });
});

// Route for /version
app.get("/", (req, res) => {
  res
    .status(200)
    .json({ version: "1.0.0", message: "API Version 2.0.0bdjhsahjdashjd" });
});

// Start the server
app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});
