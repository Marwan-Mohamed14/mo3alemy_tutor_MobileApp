// Plain types describing the shapes moved between repository, service, and controller.
// export interface NotificationRecord {
//   id: string;
//   userId: string;
//   message: string;
//   readAt: string | null;
// }

// Trigger names from the product spec — documentation only, no dispatch logic yet.
// export type NotificationTrigger =
//   // to student/parent
//   | 'reservation_confirmed'
//   | 'session_reminder_24h'
//   | 'session_reminder_1h'
//   | 'late_cancel_warning'
//   | 'payment_receipt'
//   | 'session_summary_posted'
//   | 'review_request'
//   // to tutor
//   | 'tutor_new_pending_reservation'
//   | 'tutor_reservation_cancelled_by_student'
//   | 'tutor_payment_received'
//   | 'tutor_strike_issued'
//   | 'tutor_doc_review_result'
//   | 'tutor_low_slot_availability'
//   // to admin
//   | 'admin_new_document_submitted'
//   | 'admin_dispute_opened'
//   | 'admin_payment_reconciliation_flagged'
//   | 'admin_strike_threshold_reached';
