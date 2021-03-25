Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CFB06348D8D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Mar 2021 10:58:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 955F840F29;
	Thu, 25 Mar 2021 09:58:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eNmy7_V-9PSd; Thu, 25 Mar 2021 09:58:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4585440F27;
	Thu, 25 Mar 2021 09:58:39 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 659651BF5DE
 for <intel-wired-lan@osuosl.org>; Thu, 25 Mar 2021 09:58:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 53CC840193
 for <intel-wired-lan@osuosl.org>; Thu, 25 Mar 2021 09:58:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=yahoo.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vd8-Y0xXabWJ for <intel-wired-lan@osuosl.org>;
 Thu, 25 Mar 2021 09:58:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from sonic307-54.consmr.mail.gq1.yahoo.com
 (sonic307-54.consmr.mail.gq1.yahoo.com [98.137.64.30])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1B39240146
 for <intel-wired-lan@osuosl.org>; Thu, 25 Mar 2021 09:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1616666312; bh=WZxb+exkcKfopKtpkfVwBVXg/Hk60FR8nM2DBcCc5Mg=;
 h=Date:From:Reply-To:To:Subject:References:From:Subject:Reply-To;
 b=FHcWRiA08VmpV0Fay1RvSZkAEpohrloM6bAwg3B2c0swt6vHAt5GAQ041K4i+FlIguE45Xr55Amnkc3q/6A4Bcm/sUsvbCAvT/4GzRV1GOTTzeOqRJCQ1whiUQX9CsWCfzSxd+ZUWD0naTz+eisXo/H87byhd6VQffhkJMPGOBJwUgsDG760Alq3l5GUuFzAyWb6N7xSdwKnaNEHqfPIHWWHQ/H2AzPrSn4xBSJOBRs2biOsqg/C0fXn8xq0i76yNnQvkiK5nCDpApUCJlWPiATMGL7Nu8e69AouYDdw3x+KUsnc3bH9YK378k5S3Yn7RhF0/7TGLZs5sX+JXBiJLQ==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1616666312; bh=qH9loSFvTTR4CVD827kUq5ScX29XWpm17JFwe3w396Y=;
 h=X-Sonic-MF:Date:From:To:Subject:From:Subject;
 b=N+HTvlZbV+44k81EwyPaKm+dWKuWYdtvIJcWkbpcLsunPKkxOLOe723i0RdGCVfN4EjqLVJq+PLFqhAA4HNXNJsDgLB/yuLQhXmEjg/Z5b06uR9z8Ca5Tyk6g6aLX7wS3mrap4OfYlxdPSAxC3/kRYIY5eSJ/FGynUxMIApxo5OOow2LNjymfuPwBsvX0dvIlA4QQT/K+Y1BBNv4HKxQKJOpZo5/LWrVHWeiRG/1i3NZ+aSW2cAKLE4atQfC1GdwwKLf/U8FZMxZpjdkGkMNJFw9+NDG/0umhkziQcnL3VWipOofqVYYUXrsGgp0CJNAeaG4J1IlvETocnJOlRbM8g==
X-YMail-OSG: bI8hBLwVM1lxkEcLe1zT4UW0pOqmeSwGjoLECVFy6C4xUEUzb40AaPBoXQHD_JA
 vzEKGKrkBv5dwJh7nnsa.h49BI1R7b3mC7_j.Bn424wvZb0enepoeLpaEF.02PH2HlF1pEBUed6C
 ytqY5UiLiBbL_JsEJLckLWd8aeBxgEkGCCgzQiHz9ao1oHL2Q8hkeyZmDcXq2.j.PL2D19MUJkfl
 x4jk5FYCakYykl8VB9Jb_Jcv_9aS1G0kn4Zr9vy9QN59zirooDZOpM5Q96PJhRo6IxRLKO21Y6A5
 _XIm2rIBbi4s5KwwhPta2L2VazKtpmCyYTQJnzDNOPIXiw7YeGmdQYal50uCZ4GG9uSm5PLYoS3Y
 cgyWDl0PhImKSgZpcXHx8P4beLlrD9P6BpPQzHoKHgeDgARuWAjTZgyDVEMcI.a8oQg7X0ahUoXd
 SYqbsjH2dvCseTmvAp4RPnKJsIVNxis4EmZiDdcmsNF9nqz3KD8QFOv8_g_l_sV.wlu4tD4IxN7V
 ftsHZxp0inglAy0_SRNRYF.eZl_fr7IJV_ItHrqnkskMl9kW8ulpnSDkZVXGg74ip2E.bZjl0wnm
 732JrcxCBer6YLZnurVwJFMKu4isSmfrMtHBczesIN43cnk1uVvpVfyMDz5bSokZLEdvjFU3iWMF
 nMsIdOPLnjvAgznOpc82iH4cPHxl5xyRCTtBH_DE6BpTTNCQgufYBQIfEYSPzgexymTfp_epHTuM
 y8RX3subGAJMr69nSPpwzu2B9Z9b4tbhbWdWuVyjTda493kNL8AIt5vxX3NlR4TMRumoJMxMP4Bk
 LWwUr9duArbWAXkQEgf4wzYDBxNKYQbRyvcP8fxpsnqAlYrygVw0XFE5WHe1pFlEs3hRzd7XSWE5
 He.JwBi4ZwPC79X5P3TwhnSiKF1cbu2NEdjLifAQ1IYY7Hhi2LZeLxeSlWhuL3RT0E.cAfILDcAa
 m6iSNeJFeg6TGgaqioLsLvCwC3BGuD9UiAwK6AbCpvXeNHhEHc2MwcPW78OGFyeSJfUpw8HTmqNl
 V65RPAf_A95B_0cmVhM6hqTDrUIyAogMHvhOA92Qad8g_U93X3DIHxYrk1VnISZcpyTFNJ0rZxN_
 FId5.TFBuTd5lvRXvCM3YPsoEpf.JTvOAg1e35iK_jnXFi6.ltK.KHTweEBgWg8RJYbWyhb22fyK
 Ke7C21CxnhMHofhOMEaYpVx7WSskef.mh2cdo8nqNp4OG1jjoYmDtOKvV5EI4YpJMwAdXA.FQeqw
 T0wpqYkK_aFYSRN5mDtJBret5Atc4OvHl3pisa9v1VZiYcDfRjhE24dwrogoiYiXpOK3Ym1QjSWH
 sehjkWDICq9l6COhC..jBf0cquv9_nefWlm02lvlKU40Q2kC5bCbnx26NloeZTwJFN0KQOphBVal
 BTFZGgfCYnrRPwRkKcTz8bSqhM8jZK4tylsAmEkZ83Rfkj0eUD7kqNmvTs3stQqq0rYBVjMfw7Wi
 Y3ES6vEWKDyY54tjKDqiesF5p5f20_eev7HHS._13.ctZitgeRkPBkbrexBAIQA029iPBMc9SFlQ
 f37YomCk961G_TVRaWv84dXwegEK4yFi3qdaxQgvCKq5foPazLy_PYXiuftxz8_3npFRVlIp6C7n
 buJR5Ai5iMYC7xbcRY.29EV1vcicXRE8hQnRmhUeIvNPt_Ap2Jw.RlkaAz25VSl3PMPcx7Df4eIm
 kA_vey8K2EtB9t3g8a0MQBGL9verVLtvWhRuAJh7d3.9V0Y5eP7uGfB8cB1n1Vpq6FN6GTqOXT6r
 ocyoWco3oISjCbcmlQbwStsnGqd06m4rsCxpU2lviNnKdRFsl_kQFhVfFTHLBLQT8uTc7NNevz_c
 3sfgQ_.2Hu4WjxmqxS7JfWdOEmK8tSr7hGPWKWarmwG8ov7FO5s4aTXHjkcD0I5dIO4TZ0MRLvdD
 hURBBk3j0KWA4Fcn3tHiBJjf7FCkOQfsJ0uEYvvc9AquIZuNCqfVIc4jvVAlH7x0v.jf55iPUika
 6yaMsnAKboEmzGKANevAXMXQl8tHlpP7jyyPw34BD14byAHqsMM547cufxeqOOwbYY31jQTWkgcu
 npamchC6CVcl28kwDao.v.aJrlKTjWWxl2zMf0Dovw3cIXIiY9cHwQyFmWzqMES2J.2b4G83Tg6J
 eHM6m6UPM2oYi4.Z0Da6IQ_46SBJahM6lS9Bld4LJY371_otq3cvvkdsFTDhVmyaZ1WTeah3Dre_
 1f.yd3KLfqblCNNKeYLjKdaH8oE4e_z06DnHg8lnlDdIO3F.JsibVmBM.4VmE.6mq.J_hy.RvNwV
 .P9g5JCrfo6dY6Bp7EjbSSC5W3iunQZ0OBqUTNpqjIGOMGnlQsUzqzNMj2EZw2FbSqO5wRb5X.pM
 Bvqs_Oc.HwHZPkYV0v3H6uFRbIgM0U3DR8CFtLFWmRaGly1fetu1GXkYzzZkZv4JbwFCqrRH7cnB
 RxTDu26ezBDomEj2TnuXlzhC_rydE4vITI7jhYwFp72c.b6w14HIcFOgDTQXROyNiXaXhAdV.GdB
 dT2Abc2G3svuPtXaWpn3aWXLikivp8GVLvPcYpH.21Jug8Y.dD2.d39g0nq2JlfSM3NuI
X-Sonic-MF: <tallubko@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic307.consmr.mail.gq1.yahoo.com with HTTP; Thu, 25 Mar 2021 09:58:32 +0000
Date: Thu, 25 Mar 2021 09:58:22 +0000 (UTC)
From: Tal Lubko <tallubko@yahoo.com>
To: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Message-ID: <695025580.69134.1616666302689@mail.yahoo.com>
MIME-Version: 1.0
References: <695025580.69134.1616666302689.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.17936 YahooMailAndroidMobile YMobile/1.0
 (com.yahoo.mobile.client.android.mail/6.21.1; Android/11; RP1A.200720.012; a50;
 samsung; SM-A505F; 5.91; 2131x1080; )
Subject: [Intel-wired-lan] Boot Linux Quickly Including Network on Intel
 Platfirm
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
Reply-To: Tal Lubko <tallubko@yahoo.com>
Content-Type: multipart/mixed; boundary="===============4796076863376688286=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============4796076863376688286==
Content-Type: multipart/alternative; 
	boundary="----=_Part_69133_1190316870.1616666302688"

------=_Part_69133_1190316870.1616666302688
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


Hi

I'm trying to boot Linux and start Ethernet Quickly (up to 3 seconds) on Intel's Whiskey-Lake CRB (8th generation Intel Core) which has i219-LM NIC.
My destained system is embedded system which means I can have customized solution to meet the link time requirement.
I'm not sure yet about 1G/100M connection (I want 1G connection but may be able to use 100M in case it helps to meet the link time requirement).
I may also be able to disable other options (like auto-negotiation, power management, etcetera) if needed.
Later on I'll intergrate this core to another carrier but currently I'm using Intel's CRB for evaluation.

For fast boot I have intergrated Intel's SBL (Slim Boot Loader) on this platform.
With SBL, Linux boots in ~1.7 seconds (from power-up until some user space application).
Ethernet is working (I get ping reply) in ~7.5 seconds (from power-up until ping reply) on 1G connection.
I've also checked how much does it take to bring Ethernet down, back up and pinging and got ~5.7 seconds (on 1G connection).

I wonder if it possible on this CRB with the given NIC and with Intel core NICs in general.
With some Xilinx's SOC and some TI PHY (which has "fast link" capability) we were able to get Ethernet working in less than 2 seconds.

My questions are:
1) Is it possible? Are you familiar with similar projects which reach this goal? Similar projects can be on this platform or another.
2) I will be glad to get some suggestions as how to try and reach my goal.
3) Any other suggestions?

Regards,
Tal


------=_Part_69133_1190316870.1616666302688
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p style=3D"overflow-wrap: break-word; font-family: sans-serif;" id=3D"yMai=
l_cursorElementTracker_1616666214627"><b id=3D"yMail_cursorElementTracker_1=
616666216164">Hi</b></p><p style=3D"overflow-wrap: break-word; font-family:=
 sans-serif;" id=3D"yMail_cursorElementTracker_1616666219452">I'm trying to=
 boot Linux and start Ethernet Quickly (up to 3 seconds) on Intel's Whiskey=
-Lake CRB (8th generation Intel Core) which has i219-LM NIC.<br style=3D"ov=
erflow-wrap: break-word;">My destained system is embedded system which mean=
s I can have customized solution to meet the link time requirement.<br styl=
e=3D"overflow-wrap: break-word;">I'm not sure yet about 1G/100M connection =
(I want 1G connection but may be able to use 100M in case it helps to meet =
the link time requirement).<br style=3D"overflow-wrap: break-word;">I may a=
lso be able to disable other options (like auto-negotiation, power manageme=
nt, etcetera) if needed.<br style=3D"overflow-wrap: break-word;">Later on I=
'll intergrate this core to another carrier but currently I'm using Intel's=
 CRB for evaluation.</p><p style=3D"overflow-wrap: break-word; font-family:=
 sans-serif;">For fast boot I have intergrated Intel's SBL (Slim Boot Loade=
r) on this platform.<br style=3D"overflow-wrap: break-word;">With SBL, Linu=
x boots in ~1.7 seconds (from power-up until some user space application).<=
br style=3D"overflow-wrap: break-word;">Ethernet is working (I get ping rep=
ly) in ~7.5 seconds (from power-up until ping reply) on 1G connection.<br s=
tyle=3D"overflow-wrap: break-word;">I've also checked how much does it take=
 to bring Ethernet down, back up and pinging and got ~5.7 seconds (on 1G co=
nnection).</p><p style=3D"overflow-wrap: break-word; font-family: sans-seri=
f;">I wonder if it possible on this CRB with the given NIC and with Intel c=
ore NICs in general.<br style=3D"overflow-wrap: break-word;">With some Xili=
nx's SOC and some TI PHY (which has "fast link" capability) we were able to=
 get Ethernet working in less than 2 seconds.</p><p style=3D"overflow-wrap:=
 break-word; font-family: sans-serif;">My questions are:<br style=3D"overfl=
ow-wrap: break-word;">1) Is it possible? Are you familiar with similar proj=
ects which reach this goal? Similar projects can be on this platform or ano=
ther.<br style=3D"overflow-wrap: break-word;">2) I will be glad to get some=
 suggestions as how to try and reach my goal.<br style=3D"overflow-wrap: br=
eak-word;">3) Any other suggestions?</p><p style=3D"overflow-wrap: break-wo=
rd; font-family: sans-serif;">Regards,<br style=3D"overflow-wrap: break-wor=
d;">Tal</p><hr style=3D"overflow-wrap: break-word; font-family: sans-serif;=
"><br>
------=_Part_69133_1190316870.1616666302688--

--===============4796076863376688286==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============4796076863376688286==--
