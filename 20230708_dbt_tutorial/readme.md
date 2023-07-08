# 一学就会系列 002 - dbt入门
大家好，我是老徐，这个里就是我们教程的代码了。

大家可以在老徐的网站找到具体教程：https://careervista.net/setup-postgres-and-work-with-dbt/

教程仅供入门dbt使用，并不代表best practice。老徐的目的是让大家能尽快开始dbt的练习，为自己的简历添加新技能。

想要1v1辅导简历面试，欢迎大家在linkedin联系老徐：https://linkedin.com/in/allenfeixu


## 准备工作
需要使用Docker把Postgres架设起来：

`docker run --name postgres -p 5432:5432 -e POSTGRES_PASSWORD=mysecretpassword -d postgres`


## 使用方法
1. 用VSCode打开20230708_dbt_tutorial文件夹。

2. 准备Python环境：

假设大家有使用pipenv激活project环境:
`pipenv shell`

安装所有的dependencies：
`pip install -r requirements.txt`

3. 在VSCode的terminal中进入dbt_tutorial文件夹
`cd dbt_tutorial`

4. 现在大家就可以运行dbt相关指令了，例如：

`dbt debug`用来测试数据库链接

`dbt compile -m _staging_fact_rental_payment`用来compile我们的代码

`dbt run -m _staging_fact_rental_payment fact_rental_payment`用来操作数据库