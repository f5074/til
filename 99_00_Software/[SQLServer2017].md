Select @@version

sp_configure

sp_configure 'external scripts enabled', 1

reconfigure





execute sp_execute_external_script
@language = N'Python',
@script = N'print("Welcome to Data on My View")'

https://www.youtube.com/watch?v=P6yIqvp7eiA




https://dba.stackexchange.com/questions/188907/sql-server-2017-external-python-modules