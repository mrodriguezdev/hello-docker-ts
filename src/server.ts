import express, { Request, Response } from 'express';

const app = express();

app.get('/hello', (req: Request, res: Response) => {
    res.json({ message: 'Hello, Docker!' });
});

const PORT = 3000;
app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
});
