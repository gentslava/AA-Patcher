INSERT OR REPLACE INTO FlagOverrides
  (packageName, flagType, name, user, boolVal, committed)
VALUES
  ('com.google.android.projection.gearhead', 0, 'AppValidation__blocked_packages_by_installer', '', '', 0),
  ('com.google.android.projection.gearhead', 0, 'AppValidation__should_bypass_validation', '', 1, 0)
;
