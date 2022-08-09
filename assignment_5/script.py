import fileinput
import collections
import re


# iterate through test cases to find IPs and add them to list
hits = []
for line in fileinput.input(files=('test_cases.txt')):
    ip = re.findall( r'[0-9]+(?:\.[0-9]+){3}', line )
    if ip:
        for i in ip:
            print(i)
            hits.append(i)


# Transform hits list => counter => dict => reverse sorted dict
frequency = collections.Counter(hits)
dict_ips = dict(frequency)
answer = {k: v for k, v in sorted(dict_ips.items(), key=lambda item: item[1], reverse=True)}
print(answer)

