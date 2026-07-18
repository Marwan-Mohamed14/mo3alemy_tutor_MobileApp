import { Router } from 'express';

export const paymentsRouter = Router();

// Wire route handlers here, e.g.:
// paymentsRouter.post('/charge', paymentsController.charge);   // Instapay/Fawry, or draw from prepaid credit pack
// paymentsRouter.post('/release/:reservationId', paymentsController.release); // unlocked by QR check-in
// paymentsRouter.get('/me', paymentsController.myEarnings);    // tutor earnings / payment log
