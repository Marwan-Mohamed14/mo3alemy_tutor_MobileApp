import request from 'supertest';
import { createApp } from '../src/app';

const app = createApp();

describe('app', () => {
  it('GET / returns Hello World!', async () => {
    const res = await request(app).get('/');
    expect(res.status).toBe(200);
    expect(res.text).toBe('Hello World!');
  });

  it('GET /health returns status ok', async () => {
    const res = await request(app).get('/health');
    expect(res.status).toBe(200);
    expect(res.body).toEqual({ status: 'ok' });
  });
});
