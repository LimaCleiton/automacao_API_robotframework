import  curlify
import  requests

def geraCurl(response):
    return curlify.to_curl(response.request)