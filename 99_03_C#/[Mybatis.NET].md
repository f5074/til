
## Mybatis.NET 기본소스 다운로드
https://code.google.com/archive/p/mybatisnet/downloads


## [Error]인스턴스 참조를 사용하여 액세스할 수 없습니다. 대신 형식 이름을 사용하여 한정하십시오.
http://m.blog.daum.net/vulcan31/21?tp_nil_a=2


1. Unable to load embedded resource from assembly

-> xml 파일의 속성탭에서 빌드 작업의 설정 값을 "포함 리소스"로 변경

https://m.blog.naver.com/PostView.nhn?blogId=hacap07&logNo=130172272070&proxyReferer=https%3A%2F%2Fwww.google.com%2F

2. Mybatis.NET HybridWebThreadSessionStore

https://blissfuljoon.tistory.com/215

3. namespace
https://m.blog.naver.com/PostView.nhn?blogId=sunlit79&logNo=140190159633&proxyReferer=https%3A%2F%2Fwww.google.com%2F
<sqlMap namespace="Product">

 <typeAlias alias="product" type="com.dreamer.domain.Product" />
 <!-- getProductList -->
 <resultMap id="productMap" class="product">
  <result property="id" column="id" />
  <result property="word" column="word" />
  <result property="rate" column="rate" />
 </resultMap>
 <select id="getProductList" remapResults="true" resultMap="productMap">
  select id, word, rate from word
 </select>
</sqlMap>
 
* 위 붉은색으로 강조된 부분의 namespace로 구문을 호출해 사용하기 위해서는 sqlMap 에 namespace 를 사용하겠다는 속성을 아래와 같이 정의해 주어야 한다.
<sqlMapConfig>
  <settings useStatementNamespaces="true"/>
  <sqlMap resource="com/dreamer/domain/Product.xml"/>
</sqlMapConfig>

4.동적맵핑
http://www.mybatis.org/mybatis-3/ko/sqlmap-xml.html


## MyBatis.NET 환경설정
https://sunnyspace.tistory.com/146

## ODP넷 사용법
https://yaraba.tistory.com/316
http://cafe.daum.net/_c21_/bbs_search_read?grpid=1LT1j&fldid=kEZi&datanum=4&q=odp&_referer=V7kfJwkeLEGMZxGlgqZEmerOWlrOTSBx


<provider
    name="ODP.NET Managed"
    description="Oracle, ODP.NET Managed 4.122.18.3"
    enabled="true"
    assemblyName="Oracle.ManagedDataAccess, Version=4.122.18.3, Culture=neutral, PublicKeyToken=89b483f429c47342"
    connectionClass="Oracle.ManagedDataAccess.Client.OracleConnection"
    commandClass="Oracle.ManagedDataAccess.Client.OracleCommand"
    parameterClass="Oracle.ManagedDataAccess.Client.OracleParameter"
    parameterDbTypeClass="Oracle.ManagedDataAccess.Client.OracleDbType"
    parameterDbTypeProperty="OracleDbType"
    dataAdapterClass="Oracle.ManagedDataAccess.Client.OracleDataAdapter"
    commandBuilderClass="Oracle.ManagedDataAccess.Client.OracleCommandBuilder"
    usePositionalParameters="true"
    useParameterPrefixInSql="true"
    useParameterPrefixInParameter="true"
    parameterPrefix=":"
    useDeriveParameters="false"
    allowMARS="false"/>


    <provider name="ODP.NET Managed" />
    <dataSource name="MyOracle" connectionString="Data Source=(DESCRIPTION=(ADDRESS_LIST= (ADDRESS=(PROTOCOL=TCP) (HOST=127.0.0.1) (PORT=1521))) (CONNECT_DATA = (SERVICE_NAME = XE))); Persist Security Info=True; User Id=hr; Password=hr;"/>
