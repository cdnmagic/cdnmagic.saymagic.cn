#!/usr/bin/env python
# -*- coding:utf-8 -*-

#导入smtplib和MIMEText
from email import encoders
from email.header import Header
from email.mime.text import MIMEText
from email.mime.base import MIMEBase
from email.mime.multipart import MIMEMultipart
from email.utils import parseaddr, formataddr

import smtplib

#####################
#设置服务器，用户名、口令以及邮箱的后缀
mail_host="smtp.163.com"
mail_user="***@163.com"
mail_pass="*******"
mail_postfix="163.com"

######################
def send_mail(to_list,sub,content,attachment,user=mail_user,pwd=mail_pass,host=mail_host):
    '''
    to_list:发给谁（接受的参数是列表）
    sub:主题
    content:内容
    attachment:附件的地址（接受的参数是列表）
    user:发件人的邮箱(可选参数)
    pwd:发件人邮箱的密码(可选参数)

    return : 
           True:发送成功
           False:发送失败
    ex: send_mail(［"a@cym.so"］,"sub","content","/Users/lanyy/Desktop/screenshot_at_2014-11-5_0_34_25.png","/Users/lanyy/Desktop/hannuo.py")

    '''

    me = _format_addr(u'<%s> <%s>' % (mail_user,mail_user))
    msg = MIMEMultipart()
    msg['Subject'] = sub
    msg['From'] = me
    msg['To'] = ";".join(to_list)

    msg.attach(MIMEText(content, 'plain', 'utf-8'))


    for file in attachment:
        # add file:
        with open(file, 'rb') as f:
            mime = MIMEText(f.read(), 'base64', 'gb2312')
            mime["Content-Type"] = 'application/octet-stream'
            mime["Content-Disposition"] = 'attachment; filename='+file.split("/")[-1]
            #mime = MIMEBase('image', 'png', filename='screenshot_at_2014-11-5_0_34_25.png')
            msg.attach(mime)

    try:
        s = smtplib.SMTP()
        s.connect(host)
        s.login(user,mail_pass)
        s.sendmail(me, to_list, msg.as_string())
        s.close()
        return True
    except Exception, e:
        print str(e)
        return False

def _format_addr(s):
    name, addr = parseaddr(s)
    return formataddr(( \
        Header(name, 'utf-8').encode(), \
        addr.encode('utf-8') if isinstance(addr, unicode) else addr))


if __name__ == '__main__':
    if send_mail(["****@163.com","*****@qq.com"],"测试邮件","这是一封测试邮件",[]):
        print "发送成功"
    else:
        print "发送失败"
