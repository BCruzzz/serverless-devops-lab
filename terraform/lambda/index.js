exports.handler = async () => {
  return {
    statusCode: 200,
    body: JSON.stringify({
      message: "🚀 Lambda monitorada com Terraform!"
    })
  };
};
