def app(env, start_response):
    body = ''
    query = env['QUERY_STRING'].split('&')
    for l in query:
         body = body + l + '\r\n'
    status = '200 OK'
    headers = [
        ('Content-Type', 'text/plain')
    ]
    start_response(status, headers )
    return [bytes(body, 'utf-8') ]

