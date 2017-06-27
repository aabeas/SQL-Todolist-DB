CREATE TABLE todos
  (id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details TEXT,
  priority INTEGER NOT NULL DEFAULT '1',
  created_at TIMESTAMP NOT NULL,
  completed_at TIME DATE)
;

SELECT * FROM todos;

INSERT INTO todos (title, details, priority, created_at) VALUES
  ('Car Wash','Clear Coat, High Tech, No Brushes Wash, Hot Air Dryers, Wheel Bright, Underbody Wash, Tire Shine', 4, current_timestamp),
  ('Buy Dental Hygene Products','Pick up three tubes of toothpaste, fifty yards of apple flavored floss and a buckees fiftieth anniversary toothbrush - limited edition', 3, current_timestamp),
  ('Nike Air Jordan','Left shoe only. Inquire salesperson about donating display model', 1, current_timestamp),
  ('Eight Count Body Builders','Do 80, every two hours.  If skipped, do twice as many the next time around', 2, current_timestamp)
;

INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES
  ('Acquire a box of rocks','Just that, a box of rocks. If only igneous available, no need to worry', 5, current_timestamp, current_timestamp)
;

SELECT * FROM todos WHERE completed_at IS NULL;

SELECT * FROM todos WHERE priority > 1;

UPDATE todos SET completed_at = current_timestamp WHERE id = 5;

DELETE FROM todos WHERE completed_at IS NOT NULL;
