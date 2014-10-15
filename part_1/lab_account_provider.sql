-- Where do we keep our mdc_prod schema diagram? The table ACCOUNT_PROVIDER was introduced recently, so this question asks you not to use it. Without ACCOUNT_PROVIDER table, how can we get provider for a lab_account? Explain your steps in words in a file. Write a sql statement to get all providers for LAB_ACCT_KEY=20 in a file named 'answer_to_provider_question.sql'. Please don't specify database name in the script so that the grader can test it in appropriate DB.

SELECT l.LAB_ACCT_KEY, p.PROV_KEY FROM LAB_ACCOUNT AS l
inner join LOCATION as loc on l.LAB_SRC_KEY = loc.LAB_SRC_KEY
inner join LOCATION_PROVIDER as lp on lp.LOC_KEY = loc.LOC_KEY
inner join PROVIDER AS p on lp.PROV_KEY = p.PROV_KEY
where l.LAB_ACCT_KEY = 20;
