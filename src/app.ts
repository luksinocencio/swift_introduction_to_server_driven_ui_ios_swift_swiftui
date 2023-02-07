import cors from 'cors';
import express, { Request, Response } from 'express';

const app = express();

app.use(cors());
app.use(express.json());

app.get('/', (request: Request, response: Response) => {
  response.json({ message: 'Hello World' });
});

app.get('/pet-listing', (request: Request, response: Response) => {
  const model = {
    pageTitle: 'Pets',
    components: [
      {
        type: 'featuredImage',
        data: {
          imageUrl:
            'https://images.unsplash.com/photo-1517331156700-3c241d2b4d83?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1468&q=80',
        },
      },
    ],
  };

  response.json(model);
});

app.listen(3333, () => {
  console.log('Server started on port 3000 🚀');
});
