-- ================================================
-- Job Application Tracker - Schema
-- ================================================

CREATE TABLE IF NOT EXISTS applications (
    id          INTEGER PRIMARY KEY AUTOINCREMENT,
    company     TEXT    NOT NULL,
    position    TEXT    NOT NULL,
    link        TEXT,
    status      TEXT    NOT NULL CHECK(status IN (
                    'not_applied',
                    'pending',
                    'rejected',
                    '1st_interview',
                    '2nd_interview',
                    'offer'
                )),
    date_applied    DATE,
    end_date        DATE,
    notes           TEXT
);
