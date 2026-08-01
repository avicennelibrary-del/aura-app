-- Add receipt_url column to payments table if it doesn't exist
ALTER TABLE payments ADD COLUMN IF NOT EXISTS receipt_url TEXT;
