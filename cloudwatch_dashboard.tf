resource "aws_cloudwatch_dashboard" "lambda_dashboard" {
  dashboard_name = "serverless-devops-dashboard"

  dashboard_body = jsonencode({
    widgets = [
      {
        type = "metric"
        x = 0
        y = 0
        width = 12
        height = 6

        properties = {
          metrics = [
            [ "AWS/Lambda", "Invocations", "FunctionName", aws_lambda_function.app.function_name ],
            [ ".", "Errors", ".", "." ],
            [ ".", "Duration", ".", "." ]
          ]
          period = 300
          stat   = "Sum"
          region = var.aws_region
          title  = "Lambda Metrics"
        }
      }
    ]
  })
}
