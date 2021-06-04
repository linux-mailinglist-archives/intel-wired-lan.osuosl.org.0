Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0904839DE15
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Jun 2021 15:52:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9FBD5400FE;
	Mon,  7 Jun 2021 13:52:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id htDuHkzjXCvL; Mon,  7 Jun 2021 13:52:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E8D8F40125;
	Mon,  7 Jun 2021 13:52:14 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C13581BF2E5
 for <intel-wired-lan@osuosl.org>; Fri,  4 Jun 2021 05:42:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BC4486F939
 for <intel-wired-lan@osuosl.org>; Fri,  4 Jun 2021 05:42:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CGM84JsFiP7e for <intel-wired-lan@osuosl.org>;
 Fri,  4 Jun 2021 05:42:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-io1-xd2b.google.com (mail-io1-xd2b.google.com
 [IPv6:2607:f8b0:4864:20::d2b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F1B226F935
 for <intel-wired-lan@osuosl.org>; Fri,  4 Jun 2021 05:42:56 +0000 (UTC)
Received: by mail-io1-xd2b.google.com with SMTP id b25so8827003iot.5
 for <intel-wired-lan@osuosl.org>; Thu, 03 Jun 2021 22:42:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=pbB2/f3pLYEMuWgsFXiqd/fbchhFqX1Af7pd7z/GYJI=;
 b=tVQoQ/5ncfM+T7HyMko+UCqXp0Oj1+ZEmTwrWiJVaLqNMRwL6GmLKhmd9RiLIF5Di/
 +m65IMeqR2mPYvnqupNETk0uiUXDRvOFTZ0QcEk0I+1jwv1vokkCT/ZSdd/50Oc+FB4Y
 kOxEELUa8o22LGIpQ91Q75yOE/ozPfD36Xko2vI+sWwUq7XWph/CSNqUii+5KD7Whyvv
 JlhnSAR/3J+xXENV1KPfIbKsQr8XjniX3HUdyTR3H3/nXfMguZ0Wack0xYWnGpq7RNsX
 qeM4m2NEfwr8s/srrit1liraFjFYFugHnxNmywMeSeK5g3DfLbYKbBM9jwhzjlQjQx/V
 cPuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=pbB2/f3pLYEMuWgsFXiqd/fbchhFqX1Af7pd7z/GYJI=;
 b=iLGa0/sqPCbzY8o3QY7aLpjqKHA3zNA9/+P/37g3fT9ubPY4b3X74gHt2/w3wft+Ri
 4dEX9uTJX4z78GDn87BjVFicdGas+7JhyjsJbKR0ZBm58j/OFogCxntypNa2Z4KRjArQ
 WKdZq5FHmaz3vYRnANQcZjwrsbpxBjg2YQb4QSOS+IJs9ZgJpXgSVLQpuxNBSt/VaePq
 L78x+5+Him9w5ykj5ejppJ/VGo9LfSeBasic1eJFP3EVBFbJ7qIAT8JgnXbuI3S2Fc7p
 NtVGxJJ1gEtro7uxdEwNgAmjL9ch2Ysi+pYCnwu2vz8hk50jCOY9wAGx5CPZS03K4Q11
 TR9w==
X-Gm-Message-State: AOAM532x10xCKBP6DQAPTCH24po/5hYUdytqgOCXOG8cDEi9RAEX72bx
 FLgdAX2peSZH8j/w7jp3azC0hFtzsedtslVsVMOiXximQH0=
X-Google-Smtp-Source: ABdhPJy9ryWMCXF23bEXo2VDq/3G818oRDKCLOYmfvZU438ndos4HWhWasymfplw9sgPQ8tKY4HXGoJn+b05R50G+EA=
X-Received: by 2002:a05:6602:38d:: with SMTP id
 f13mr2433756iov.109.1622785375918; 
 Thu, 03 Jun 2021 22:42:55 -0700 (PDT)
MIME-Version: 1.0
From: manty kuma <mantykuma@gmail.com>
Date: Fri, 4 Jun 2021 14:42:45 +0900
Message-ID: <CAB6A5-B6kH6hiOJHZ-8JY0H8PqXeab07vUGMdBvfCgGPR8QzBw@mail.gmail.com>
To: intel-wired-lan@osuosl.org
X-Mailman-Approved-At: Mon, 07 Jun 2021 13:52:11 +0000
Subject: [Intel-wired-lan] igb: Random NIC down for 3-4 seconds and then UP
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
Content-Type: multipart/mixed; boundary="===============6595672629383865204=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============6595672629383865204==
Content-Type: multipart/alternative; boundary="000000000000e0dc5f05c3ea29ef"

--000000000000e0dc5f05c3ea29ef
Content-Type: text/plain; charset="UTF-8"

We see random NIC down like shown below. It lasts for a few seconds and
then the connection is back up.

From kernel Log:
```
[ 3306.560431] igb 0000:03:00.0 enp3s0: igb: enp3s0 NIC Link is Down
[ 3309.532558] igb 0000:03:00.0 enp3s0: igb: enp3s0 NIC Link is Up 1000
Mbps Full Duplex, Flow Control: RX\/TX

[ 3337.380117] igb 0000:02:00.0 enp2s0: igb: enp2s0 NIC Link is Down
[ 3341.672189] igb 0000:02:00.0 enp2s0: igb: enp2s0 NIC Link is Up 100 Mbps
Half Duplex, Flow Control: None
```
Steps to reproduce: Unknown. Happens randomly
Frequency: once in a couple of weeks so far.

Kernel: 5.10
Firmware version: 3.25, 0x800005cf
driver: igb

Is it a known issue?
What can we do to better understand the reason for this behavior and fix it?

--000000000000e0dc5f05c3ea29ef
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>We see random NIC down like shown below. It last=
s for a few seconds and then the connection is back up.</div></div><div><br=
></div><div>From kernel Log:</div><div>```<br></div><div>[ 3306.560431] igb=
 0000:03:00.0 enp3s0: igb: enp3s0 NIC Link is Down</div><div>[ 3309.532558]=
 igb 0000:03:00.0 enp3s0: igb: enp3s0 NIC Link is Up 1000 Mbps Full Duplex,=
 Flow Control: RX\/TX</div><div><br></div><div>[ 3337.380117] igb 0000:02:0=
0.0 enp2s0: igb: enp2s0 NIC Link is Down<br>[ 3341.672189] igb 0000:02:00.0=
 enp2s0: igb: enp2s0 NIC Link is Up 100 Mbps Half Duplex, Flow Control: Non=
e</div><div>```</div><div><div>Steps to reproduce: Unknown. Happens randoml=
y</div><div>Frequency: once in a couple of weeks so far.<br></div><div><br>=
</div><div>Kernel: 5.10</div><div>Firmware version: 3.25, 0x800005cf</div><=
/div><div>driver: igb</div><div><br></div><div>Is it a known issue?<br></di=
v><div></div><div>What can we do to better understand the reason for this b=
ehavior and fix it?</div></div>

--000000000000e0dc5f05c3ea29ef--

--===============6595672629383865204==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============6595672629383865204==--
