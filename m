Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF0B5651084
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Dec 2022 17:34:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4689A405B1;
	Mon, 19 Dec 2022 16:34:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4689A405B1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671467668;
	bh=T1AdFDCTG4xG5yWzcRsI6qOT2/RsBkwHr82rYzU3LUw=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xQYgc2QqiFnWAmjKVw8g6VoqlDZTBG7C/rxZIKoZjIuHyA+QLpHaSQygNaAbWOLBK
	 o96ip9Gg8Sk9cjFjPwgGF3JpNhU83bEOWl2bGj6kJllc4LtQGb8Q20BCX13agrZHfv
	 atNz6b1PI6bPAsX6KkX6LXML3TIUPGkjulQ4Ls4PXZ75zPFjO2/v4OXZeE9wUraWcv
	 SVdJVelQAmzxR7SnkASyVtq3dQRb4xnY14DOZIeQreHUhwhzK+rMkhvlzJ7jjvelrn
	 QZTOazlGlg8l/pCvQsC2RqmCgyUl5zyUGCp2ItREFbMOtYkGSIjKv7MtP66TLorkXs
	 yGoYG7CPSGKZg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JQBPDQ_5nwBa; Mon, 19 Dec 2022 16:34:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4292F405A7;
	Mon, 19 Dec 2022 16:34:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4292F405A7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AE5FC1BF3F2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Dec 2022 03:05:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 881228217E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Dec 2022 03:05:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 881228217E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6YNpMe_YvNJQ for <intel-wired-lan@lists.osuosl.org>;
 Sat, 17 Dec 2022 03:05:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 23CDA8217D
Received: from chinatelecom.cn (prt-mail.chinatelecom.cn [42.123.76.220])
 by smtp1.osuosl.org (Postfix) with ESMTP id 23CDA8217D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Dec 2022 03:05:31 +0000 (UTC)
HMM_SOURCE_IP: 172.18.0.218:60306.2040010943
HMM_ATTACHE_NUM: 0000
HMM_SOURCE_TYPE: SMTP
Received: from clientip-101.90.10.131 (unknown [172.18.0.218])
 by chinatelecom.cn (HERMES) with SMTP id C070A280098;
 Sat, 17 Dec 2022 11:05:11 +0800 (CST)
X-189-SAVE-TO-SEND: 31801060@chinatelecom.cn
Received: from  ([101.90.10.131])
 by app0025 with ESMTP id 2d1bfcc411d945cb8abb9071dcc10071 for
 jesse.brandeburg@intel.com; Sat, 17 Dec 2022 11:05:24 CST
X-Transaction-ID: 2d1bfcc411d945cb8abb9071dcc10071
X-Real-From: shensongjie.sh@chinatelecom.cn
X-Receive-IP: 101.90.10.131
X-MEDUSA-Status: 0
From: "shensongjie.sh" <shensongjie.sh@chinatelecom.cn>
Message-ID: <9F6F7958-EF01-492B-BD2F-ED33C20D7C43@chinatelecom.cn>
Date: Sat, 17 Dec 2022 11:05:09 +0800
References: <BB603E57-30F2-425B-9901-E715B1FE63DF@chinatelecom.cn>
In-Reply-To: <140a1757-878d-3235-7053-146c3715590d@intel.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
X-Mailer: MailMasterIOS/7.11.1.1885 (15.7.1)
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 19 Dec 2022 16:34:17 +0000
Subject: Re: [Intel-wired-lan] [need help]after insmod Ice.ko message show A
 parallel fault was detected which port unlink.intel E810 2 port card
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: multipart/mixed; boundary="===============6585078646385405615=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============6585078646385405615==
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks for replying=21&nbsp;<div><br></div><div>My Intel server have two =
&nbsp;e810 dual port card.&nbsp;</div><div>And we connect cable to switch=
 two link by every card one link.&nbsp;</div><div><br><div>Which ports ha=
ve no cable link will report the message nonstop. Ports Connect to switch=
 was on.&nbsp;</div></div><div><br></div><div>And we have test if we clos=
e the switch port, the ports have cable also report same message nonstop.=
&nbsp;</div><div><br></div><div>I try ethtool off msglevel for link probe=
 drv, but not work.&nbsp;</div><div><br></div><div>I will upload the info=
 soon.&nbsp;</div><div><br></div><div>Thanks again</div><div id=3D=22imai=
l=5Fsignature=22 class=3D=22ntes-signature=22></div><div class=3D=22ntes-=
mailmaster-quote=22 style=3D=22padding-top: 1px; padding-bottom: 1px=22><=
div style=3D=22margin-top: 2em;margin-bottom: 1em;font-size: 14px;line-he=
ight: 1.25;color: =2378787a;=22>---- Replied Message ----</div><div style=
=3D=22margin-bottom: 1em;font-size: 12px;line-height: 1.25;color: =232323=
24;padding: 0.5em 0.25em;border-radius: 0.67em;background-color: =23f0f0f=
0;=22><table width=3D=22100%=22 cellpadding=3D=220=22 cellspacing=3D=229=22=
 border=3D=220=22><tbody><tr><td valign=3D=22top=22 style=3D=22width: 4.2=
5em;font-size: 12px;line-height: 1.25;color: =2378787a;=22><span style=3D=
=22color:=238b8d94=22>=46rom</span></td><td valign=3D=22top=22 style=3D=22=
font-size: 12px;line-height: 1.25;color: =23232324;word-break: break-all;=
=22><a class=3D=22mail-from=22 style=3D=22color: =230886e8; text-decorati=
on: none=22 href=3D=22mailto:jesse.brandeburg=40intel.com=22>Jesse Brande=
burg&lt;jesse.brandeburg=40intel.com&gt;</a></td></tr><tr><td valign=3D=22=
top=22 style=3D=22width: 4.25em;font-size: 12px;line-height: 1.25;color: =
=2378787a;=22><span style=3D=22color:=238b8d94=22>Date</span></td><td cla=
ss=3D=22mail-date=22 valign=3D=22top=22 style=3D=22font-size: 12px;line-h=
eight: 1.25;color: =23232324;word-break: break-all;=22><span class=3D=22m=
ail-date=22 style=3D=22color:black=22>12/17/2022 01:42</span></td></tr><t=
r><td valign=3D=22top=22 style=3D=22width: 4.25em;font-size: 12px;line-he=
ight: 1.25;color: =2378787a;=22> <span style=3D=22color:=238b8d94=22>To</=
span></td><td valign=3D=22top=22 style=3D=22font-size: 12px;line-height: =
1.25;color: =23232324;word-break: break-all;=22><a class=3D=22mail-to=22 =
style=3D=22color: =230886e8; text-decoration: none=22 href=3D=22mailto:sh=
ensongjie.sh=40chinatelecom.cn=22>shensongjie.sh&lt;shensongjie.sh=40chin=
atelecom.cn&gt;</a>,<br><a class=3D=22mail-to=22 style=3D=22color: =23088=
6e8; text-decoration: none=22 href=3D=22mailto:intel-wired-lan=40lists.os=
uosl.org=22>intel-wired-lan=40lists.osuosl.org&lt;intel-wired-lan=40lists=
.osuosl.org&gt;</a></td></tr><tr><td valign=3D=22top=22 style=3D=22width:=
 4.25em;font-size: 12px;line-height: 1.25;color: =2378787a;=22><span styl=
e=3D=22color:=238b8d94=22>Subject</span></td><td class=3D=22mail-subject=22=
 valign=3D=22top=22 style=3D=22font-size: 12px;line-height: 1.25;color: =23=
232324;word-break: break-all;=22><span class=3D=22mail-subject=22 style=3D=
=22color:black=22>Re: =5BIntel-wired-lan=5D =5Bneed help=5Dafter insmod I=
ce.ko message show A parallel fault was detected which port unlink.intel =
E810 2 port card</span></td></tr></tbody></table></div><div>On 12/12/2022=
 4:39 AM, shensongjie.sh wrote:
<br>&gt; =5B601618.781778=5D ice 0000:17:00.1&nbsp;A parallel fault was d=
etected
<br>&gt; Possible Solution: Check link partner connection and configurati=
ol
<br>&gt; Port Mumber: 1
<br>&gt; Aparallel fault was detected
<br>&gt; Possible Solution: Check link partner connection and configurati=
or
<br>&gt; Part Number:1
<br>
<br>Hello, sorry for the delay in replying. This message indicates that y=
our =20
<br>card is having trouble linking with the remote link partner, this cou=
ld =20
<br>be due to the cable you're using or due to your link partner or link =
=20
<br>partner settings. Have you tried a different cable or link partner=3F=

<br>
<br>What kind of device / brand is your link partner=3F
<br>Is it a switch=3F
<br>Does it have any logs saying what's wrong=3F
<br>What speed is your device and switch port set to=3F
<br>
<br>please include ethtool -m eth0 output on your device. Actually please=
 =20
<br>include all the troubleshooting info.
<br>
<br>ethtool -i
<br>ethtool -S
<br>devlink dev info
<br>uname -r
<br>full dmesg from boot.
<br>
<br>This info can be attached to a bug report at e1000.sourceforge.net or=
 =20
<br>you can email it.
<br>
<br>Jesse
<br></div></div>

--===============6585078646385405615==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============6585078646385405615==--
