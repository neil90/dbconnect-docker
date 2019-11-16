from pyspark.sql import SparkSession


spark = SparkSession.builder.getOrCreate()
print(spark.range(10).count())
