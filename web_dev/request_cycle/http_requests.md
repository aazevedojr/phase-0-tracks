# HTTP Requests

## What are some common HTTP status codes?

There are 5 classes of HTTP status code. The first digit of the status code indicates its class:
* **1xx**: *Informational responses*
* **2xx**: *Success*
* **3xx**: *Redirection*
* **4xx**: *Client errors*
* **5xx**: *Server error*

The most common code would be 200, which means that everything went as expected and the response was successful.
Common error codes, in contrast, are:
* **403**: *Forbidden*
* **404**: *Not Found*
* **503**: *Service Unavailable*
* **504**: *Gateway Timeout*


## What is the difference between a GET request and a POST request and when might each be used?

* **GET**: *Requests data from a specified resource*
* **POST**: *Submits data to be processed to a specified resource*

**GET** method adds the data to the URL, so it can only contain ASCII characters, have limited length and should never be used to send sensitive data. **POST** method has no restrictions as for data size or content and is relatively safer.

## What is a cookie and how does it relate to HTTP requests?

It's a small data package sent from a the server to the browser and stored on the user's computer while the user is browsing.
Cookies are passed as HTTP headers, both in the request (client to server), and in the response (server to client).

