import { Router } from 'express';
import { healthController } from './health.controller';

export const healthRouter = Router();

healthRouter.get('/', (req, res) => healthController.check(req, res));
