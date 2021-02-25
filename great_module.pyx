def great_function(text):
    print('Great!')
    text = text.decode('utf-8')
    text = f'[ {text} ]'
    text = text.encode('utf-8')
    return text
