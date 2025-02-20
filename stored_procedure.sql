--Name: --
--Description: --
--Author: William Ng
--Date Created 20/02/2025 
--Version 1.0
--Path: --

DECLARE @START_DATE DATE = '______________';
DECLARE @END_DATE DATE = '_________________';

  -- Start thr Try and Catch
BEGIN TRY
  -- Initiate the SQL code





END TRY
BEGIN CATCH

  DECLARE @ErrorMessage NVARCHAR(4000) = ERORR_MESSAGE();
  DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
  DECLARE @ErrorState INT = ERROR_STATE();

  PRINT 'Error occurred: ' + @ErrorMessage;

  -- Optional: Log error into the error log table if exist. Alternatively, can be logged in external format.
  INSERT INTO error_log (error_message, error_severity, error_state, error_time)
  VALUES (@ErrorMessage, @ErrorSeverity, @ErrorState, GETDATE());

  -- Optional: Return an empty dataset instead of failing completely
  SELECT 'Error occured. Check logs for details' AS error_message;

END CATCH;

