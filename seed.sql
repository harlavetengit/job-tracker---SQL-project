-- ================================================
-- Job Application Tracker - Seed Data
-- ================================================

INSERT INTO applications (company, position, link, status, date_applied, end_date, notes) VALUES
    ('Københavns Kommune',   'Medarbejder i bookingteamet',          'login rekruterringssystem',     'pending',      '2026-04-22', NULL,         NULL),
    ('SSP',                  'Medhjælper',                           NULL,                            'pending',      '2026-04-07', NULL,         NULL),
    ('DMI vejrtjeneste',     'Meteorolog',                           'jobopslag',                     'not_applied',  NULL,         NULL,         'Ring ind og spørg om betragtning'),
    ('Københavns Kommune',   'Vært til drift af skøjtehaller',       'jobopslag',                     'not_applied',  NULL,         NULL,         'Overvej om dette giver mening'),
    ('Rose Maimonide',       'Personlig Assistent',                  NULL,                            'rejected',     '2026-04-20', '2026-04-27', 'Ikke ressourcer til begrundet svar men andre mere kvalificerede'),
    ('Upright Music',        'Label Administrator',                  'stillingsopslag',               'rejected',     '2026-04-15', '2026-04-29', 'Not moving forward with application'),
    ('AKQA',                 'Executive Creative Service Assistant', NULL,                            'rejected',     '2026-04-14', '2026-04-15', 'Identified candidates more closely aligned with requirements'),
    ('SSP',                  'Supervisor',                           NULL,                            'rejected',     '2026-04-07', '2026-04-17', 'Har valgt at gå videre med en anden'),
    ('Danske Bank',          'Personal Assistant',                   NULL,                            'rejected',     '2026-04-07', '2026-04-10', 'Did not see a match for this position'),
    ('Team-Temp',            'Executive Assistant',                  NULL,                            'rejected',     '2026-04-07', '2026-04-24', 'Ikke går videre denne omgang'),
    ('Le Management',        'Administrative Assistent',             NULL,                            'rejected',     '2026-04-17', '2026-04-23', 'Har valgt at gå videre med andre kandidater');
