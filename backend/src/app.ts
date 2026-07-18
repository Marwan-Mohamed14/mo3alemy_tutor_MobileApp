import express, { Express } from 'express';
import { healthRouter } from './health/health.routes';
import { authRouter } from './auth/auth.routes';
import { documentsRouter } from './documents/documents.routes';
import { notificationsRouter } from './notifications/notifications.routes';
import { paymentsRouter } from './payments/payments.routes';
import { reservationsRouter } from './reservations/reservations.routes';
import { tutorsRouter } from './tutors/tutors.routes';
import { availabilityRouter } from './availability/availability.routes';
import { reviewsRouter } from './reviews/reviews.routes';

export function createApp(): Express {
  const app = express();
  app.use(express.json());

  app.get('/', (_req, res) => res.send('Hello World!'));
  app.use('/health', healthRouter);
  app.use('/auth', authRouter);
  app.use('/documents', documentsRouter);
  app.use('/notifications', notificationsRouter);
  app.use('/payments', paymentsRouter);
  app.use('/reservations', reservationsRouter);
  app.use('/tutors', tutorsRouter);
  app.use('/availability', availabilityRouter);
  app.use('/reviews', reviewsRouter);

  return app;
}
