## 1. 스케쥴 등록 시간 관련

https://www.freeformatter.com/cron-expression-generator-quartz.html

매일 2시 30분 실행 

<job group="TestBatchGroup" name="BatchTest" triggerName="BatchTest" cronExpression= "0 30 2 * * ?"
        targetClass="com.tistory.f5074.batch.BatchTest">
</job>