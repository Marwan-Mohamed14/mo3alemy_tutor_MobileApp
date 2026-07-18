import { Router } from 'express';

export const reservationsRouter = Router();

// Wire route handlers here, e.g.:
// reservationsRouter.post('/', reservationsController.create);            // book a slot -> status "pending"
// reservationsRouter.patch('/:id/confirm', reservationsController.confirm); // tutor confirms
// reservationsRouter.patch('/:id/decline', reservationsController.decline); // tutor declines
// reservationsRouter.patch('/:id/cancel', reservationsController.cancel);   // student cancels; service applies
//   the 24h-free / ~12h-partial-charge policy
// reservationsRouter.post('/:id/note', reservationsController.addPreSessionNote); // mandatory before tutor confirms
// reservationsRouter.post('/:id/check-in', reservationsController.checkIn);       // QR scan at session start,
//   unlocks payment release + review eligibility
