import re

def great_function(text):
    print('Great!')
    text = text.decode('utf-8')
    text = re.sub(r'(\d+)', r'[\g<1>]', text)
    text = text.encode('utf-8')
    return text
