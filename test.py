import re

string1='''
CreateField (DerefOf (Local0 [0x02]), (Local2 * 0x08), (0x02 * 0x08), BCCU)
BCCU = BRCC
Local2 += 0x02
CreateField (DerefOf (Local0 [0x02]), (Local2 * 0x08), (0x02 * 0x08), BCVO)
BCVO = BRCV
Local2 += 0x02
'''

string2='''
Local2 = ASMB
CreateField (Local0, 0x20, 0x60, CDAT)
CreateField (Local2, 0xA0, 0x60, BDAT)
BDAT = CDAT
Local2 [0x10] = 0x01
ASMB = Local2
\_SB.SSMI (0xEA75, 0x01, 0x1C, 0x574D4953, 0x00)
'''
strings = [string1, string2]
units = [
    {
        'name':'BRCC',
        'offset':168,
        'size':16,
        'OR path':'\\_SB.PCI0.LPCB.EC0.ECRM',
        'read method':'RDB0',
        'write method':'WRB0'
    }, 
    {
        'name':'BRC',
        'offset':161,
        'size':16,
        'OR path':'\\_SB.PCI0.LPCB.EC0.ECRM',
        'read method':'RDB0',
        'write method':'WRB0'
    }, 
    {
        'name':'BDAT',
        'offset':1300,
        'size':16,
        'OR path':'\\_SB.PCI0.LPCB.EC0.ECRM',
        'read method':'RDB0',
        'write method':'WRB0'
    }
]

for unit in units:
    print("\nUnit: %s\n" % unit['name'])
    for string in strings:
        # unit = xxxx (write)
        match = re.findall("%s = (.*)" % unit['name'], string)
        for item in match:
            string = re.sub("%s = %s" % (unit['name'], item), '%s (0x%X, %d, %s)' % (
                    unit["write method"],unit["offset"], unit["size"], item
                ), string)

        # Store (xxxx, unit) (write)
        match = re.findall("Store \\(([A-Z0-9]{4}), %s\\)", string)
        for item in match:
            string = re.sub("Store \\(([A-Z0-9]{4}), %s\\)", 
                "%s (0x%X, %d, %s)" % (unit))
        
        # read (xxxx=unit)
        string = re.sub(".* = %s\n" % unit['name'], '%s (0x%X, %d)\n' % (
            unit['read method'], unit['offset'], unit['size']
        ), string)

        print(string)

    '''
    # write
    reserve = re.findall("%s = ([0-9A-Z]+)" % unit[a]['name'], string[a])
    for item in reserve:
        orig = re.search("%s = %s" % (unit[a]['name'], item), string[a]).group(0)
        str1 = "%s = %s" % (unit[a]['name'], item)
        str2 = "%s (0x%X, %s, %s) //%s" % (unit[a]["write method"], 
            int(unit[a]["offset"]), unit[a]["size"], item, orig)
        string[a] = re.sub(str1, str2, string[a])

    # Read
    reserve = re.findall("([^/\n])%s([^0-9a-zA-Z\n]*)" % unit[a]['name'], string[a])
    for i in range(0, len(reserve)):
        item = list(reserve[i])
        for j in range(0, len(item)):
            if '(' in item[j]:
                item[j] = item[j].replace('(', r'\(')
            elif ')' in item[j]:
                item[j] = item[j].replace(')', r'\)')
        str1 = "%s%s%s" % (item[0], unit[a]['name'], item[1])
        str2 = '%s%s (0x%X, %s)%s //%s' % (
            reserve[i][0], unit[a]['read method'], int(unit[a]['offset']), unit[a]['size'], 
            reserve[i][1], unit[a]['name'])
        
        string[a]=re.sub(str1, str2, string[a])
    print(string[a])

'''