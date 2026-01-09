resource "aws_cloudwatch_dashboard" "lambda_dashboard" {
  dashboard_name = "${var.project_name}-dashboard"

  dashboard_body = jsonencode({
    widgets = [
      {
        type   = "metric"
        x      = 0
        y      = 0
        width  = 12
        height = 6

        properties = {
          metrics = [
            ["AWS/Lambda", "Invocations", "FunctionName", aws_lambda_function.app.function_name],
            ["AWS/Lambda", "Errors", "FunctionName", aws_lambda_function.app.function_name]
          ]
          period = 300
          stat   = "Sum"
          region = var.aws_region
          title  = "Lambda Invocations & Errors"
        }
      },
      {
        type   = "metric"
        x      = 12
        y      = 0
        width  = 12
        height = 6

        properties = {
          metrics = [
            ["AWS/Lambda", "Duration", "FunctionName", aws_lambda_function.app.function_name]
          ]
          period = 300
          stat   = "Average"
          region = var.aws_region
          title  = "Lambda Duration (ms)"
        }
      }
    ]
  })
}
