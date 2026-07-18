import { createClient } from '@supabase/supabase-js';

// Falls back to placeholder values so the app can boot before
// SUPABASE_URL / SUPABASE_SERVICE_ROLE_KEY are configured in .env.
const url = process.env.SUPABASE_URL || 'https://placeholder.supabase.co';
const serviceRoleKey =
  process.env.SUPABASE_SERVICE_ROLE_KEY || 'placeholder-service-role-key';

export const supabase = createClient(url, serviceRoleKey);
