

import re
import os
import os.path

# Ok, this is kind of a mess, but it currently seems to work without major crashes or causing any 
# invalid code output, at least as far as I have been able to check.

funcFind = re.compile(r"(if\(eventNo == \d*?\) )\{\W*")
funcExtr = re.compile(r"if\(eventNo == (\d*)\) (\w*)\(\)")

simpleCRe = re.compile(r"[ 	]simpleChoices\([\w\"\ \,]*?\);")
choicesRe = re.compile(r"choices\([\w\"\ \,]*?\);")
doYesNoRe = re.compile(r"doYesNo\([\w\"\ \,]*?\);")
doNextRe = re.compile(r"doNext\(\d*?\);")

searchREs = [simpleCRe, choicesRe, doYesNoRe, doNextRe]

def cleanEventNumbers():

	eventF = open("./includes/doEvent.as", "r")
	eventS = eventF.read()
	eventF.close()

	eventS = funcFind.sub(r"\1", eventS)

	print "done"
	#print eventS
	res = funcExtr.findall(eventS)
	res = dict(res)

	#Ok, now we have a eventNo <-> function name dictionary
	
	filelist = os.listdir("./includes")
	print filelist
	for filename in filelist:
		if filename.endswith(".as") and not filename.find("doEvent")+1:			#Iterate over all the .as files in ./includes, and skip the doEvent file
			print filename
			with open(os.path.join("./includes", filename), "r") as fileH:
				tmp = fileH.read()

			# BRUTE FORCE IT. BECAUSE LAZY
			tmpO = tmp

			reRes = True
			for repRe in searchREs:
				print repRe.pattern
				insertionPoint = 0
				while repRe.search(tmp[insertionPoint:]):
				
					m = repRe.search(tmp[insertionPoint:])
					start, length = m.start()+insertionPoint, len(m.group())

					prefix, call, postfix = tmp[:start], tmp[start:start+length], tmp[start+length:]

					oldCall = call
					for key, value in res.iteritems():
						if key in call:
							#print key, value
							call = call.replace(key, value)

					if oldCall != call:		
						print "Old:", oldCall
						print "New:", call

					tmp = prefix+call+postfix

					insertionPoint = start+length

			print len(tmpO), len(tmp)
			print "Length Delta", len(tmp)-len(tmpO) 

			with open(os.path.join("./includes", filename), "w") as fileH:
				tmp = fileH.write(tmp)




if __name__ == "__main__":

	print "OMG WE'S BREAKIN STUF!!111one!"

	cleanEventNumbers()

	#print eventS
	#print eventS
