import express from 'express';
const app = express();

const PORT = process.env.PORT || 3000;

app.get('/', (req, res) => {
  res.send('Hello, World! in container');
});

app.listen(3000, () => {
  console.log(`Server is running on port ${PORT}`);
});
