FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y python3

CMD ["python3", "-c", "\
def isHappy(n):\n\
    visited=set()\n\
    origin_n=n\n\
    tmp=0\n\
    if(n==1): return True\n\
    while tmp!=1:\n\
        if(tmp in visited): return False\n\
\n\
        visited.add(tmp)\n\
        tmp=0 \n\
\n\
        while n>0:\n\
            next_n=n//10\n\
            val=n%10\n\
            tmp+=val**2\n\
            n=next_n\n\
\n\
        if (tmp==origin_n): return False\n\
\n\
        n=tmp\n\
\n\
    return True\n\
\n\
print(isHappy(19))\n\
print(isHappy(2))\n\
"]