#from bottle import route, run, template, error, abort, static_file, request
#import bottle
from bottle import *
#from sys import argv

#template 1 dæmi - if else
@route('/page1')
def index():
    return template("index1.tpl")

#template 1 dæmi - notkun lykkja
@route('/page2')
def index():
    return template("index2.tpl")

#template 1 dæmi - senda inn breytu í template
@route('/page3')
def index():
    return template("index3.tpl", nafn='Tumi')

@route('/page4')
def index():
    #aðskillin gögn (csv) dictinory
    my_dict = {'number': '123', 'street': 'Fake str.', 'city': 'Fakevilla'}
    return template("index4.tpl", my_dict)

@route('/page5')
def index():
    #aðskillin gögn (csv) dictinory
    info = {'title':'Beatles',
            'names': ['John','Paul','Ringo','Georgr']
    }
    return template("index5.tpl", info)

#@route('/myndir/<skra>')
#def static_skra(skra):
#    return static_file(skra, root='myndir')

############################
#@route('/b')
#def b():
#    return """

#   """

#@route('/sida2')
#def page():
#    return ''

############################

@error(404)
def villa(error):
    return "<h2 style='color:red'>Þessi siða finnst ekki</h2><h1>ERROR 404</h2>"

run(host='localhost', port=8080, reloader=True, debug=True)
#run(host='0.0.0.0' ,port=argv[1], debug=True)
