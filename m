Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E8CA63249FD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Feb 2021 06:19:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 419AE4EC30;
	Thu, 25 Feb 2021 05:19:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vpNTMbQBVqK7; Thu, 25 Feb 2021 05:19:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DB3BA4E43C;
	Thu, 25 Feb 2021 05:19:31 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CE1EE1BF584
 for <intel-wired-lan@osuosl.org>; Thu, 25 Feb 2021 05:19:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C9CAD6F6BD
 for <intel-wired-lan@osuosl.org>; Thu, 25 Feb 2021 05:19:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=unrealservers.net
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JH8_bBYytsxo for <intel-wired-lan@osuosl.org>;
 Thu, 25 Feb 2021 05:19:25 +0000 (UTC)
X-Greylist: delayed 00:15:46 by SQLgrey-1.8.0
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com
 [209.85.167.179])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C825B6F60C
 for <intel-wired-lan@osuosl.org>; Thu, 25 Feb 2021 05:19:25 +0000 (UTC)
Received: by mail-oi1-f179.google.com with SMTP id i21so2683126oii.2
 for <intel-wired-lan@osuosl.org>; Wed, 24 Feb 2021 21:19:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=unrealservers.net; s=gsuite;
 h=mime-version:from:date:message-id:subject:to;
 bh=mRPenMecG68d3niftIV4DutSJv5NQHVRmLfUrFB7iLw=;
 b=bR3XCw4d0MtoXpie2bmnhFBUbPeFWV/GEIuicAshoNshvPd/6MasIcWjO3zbbzGxfM
 HBpmvyw8GJsggbXZt1wGnwWm83Hw15Ot9UhFh8DWSpsmxUEsBCm+wR2tr9lXRX7o2c7s
 yny/H4Lhz8nR4/syZIsd4KuRw7AwKiNZMFOrw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=mRPenMecG68d3niftIV4DutSJv5NQHVRmLfUrFB7iLw=;
 b=IYtGoNtkDxTxim8Uy+LsUC48Ww1O7rjIWE7TfdXoscuJM0xZ4h6x4ExcETcgS934vd
 BA1ULOiYReG1id7LjjPN3me6ZKkAtPprOulh+C1afmzuy/26CwnNSD4nJ3OT0M6FQrQ4
 Zvsts/uD08mn1bEv0ZnMT4ZyZKWlhCQeCGcc0SuQl1Tl4wAtGO1uKVZcyGTZz7MMY0MX
 0cQ3GtLbXCoOyB2uY8e5RWlxA4NnqVePvZzjGPlocQgDYrsf2JtpOAiuMicD+lPyneg4
 X/7kbO8kKL305+rpb8txi685RPLixxcE/sVDHmz5FhdX/66SRnQiaQrNJD4siL3PSQfC
 vLFA==
X-Gm-Message-State: AOAM533NRd3Amnb3/+8dYoNEGrrwWi2wOzoKhqylSRgTIXvBE68KwpDA
 j2wvG0iL42AHTzEzrPXGfvDsEwMe+3K5i9U9AIuF9decvK8=
X-Google-Smtp-Source: ABdhPJxAoTKVbGxyTiVOICE9h+qWBmj2iVxGo2O2+C+FHzwzFL/D2r7LyBoU/Q/+B4GZbTNph+hBH4fxcXjetnCzt8M=
X-Received: by 2002:a17:90a:5914:: with SMTP id
 k20mr1439056pji.199.1614229070021; 
 Wed, 24 Feb 2021 20:57:50 -0800 (PST)
MIME-Version: 1.0
From: Billy Croan <BCroan@unrealservers.net>
Date: Wed, 24 Feb 2021 22:57:37 -0600
Message-ID: <CABJL2KoxdiBV6BBOJKfU4pAxANy3F-65c3+mtM2BhS5Lu89vfw@mail.gmail.com>
To: intel-wired-lan@osuosl.org
Subject: [Intel-wired-lan] How to "arm" WoL with OS running?
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
Content-Type: multipart/mixed; boundary="===============4783235366188268871=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============4783235366188268871==
Content-Type: multipart/alternative; boundary="0000000000004e1d5d05bc21fe05"

--0000000000004e1d5d05bc21fe05
Content-Type: text/plain; charset="UTF-8"

I was reading https://en.wikipedia.org/wiki/Wake-on-LAN and came across
this phrase: "not armed for WOL"

I have some OpenCompute hardware which uses the WoL signal from the intel
network chip to cause a reset/reboot.

this works when the system is in bios or in memtest86, but not when an OS
is loaded.  I suspect that the e1000e driver "disarms" WoL on load, and 're
arms' it when unloaded or when the OS shuts down or changes to a lower ACPI
state.

Is there a technical reason any WoL can not be armed at the same time as OS
is using the nic?

I get that it serves no useful purpose of the os is already running, but
does it pose a problem?

--0000000000004e1d5d05bc21fe05
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div dir=3D"ltr"><div>I was reading <a href=3D"https://en=
.wikipedia.org/wiki/Wake-on-LAN" target=3D"_blank" rel=3D"noreferrer">https=
://en.wikipedia.org/wiki/Wake-on-LAN</a> and came across this phrase: &quot=
;not armed for WOL&quot;</div><div><br></div><div>I have some OpenCompute h=
ardware which uses the WoL signal from the intel network chip to cause a re=
set/reboot.</div><div><br></div><div>this works when the system is in bios =
or in memtest86, but not when an OS is loaded.=C2=A0 I suspect that the e10=
00e driver &quot;disarms&quot; WoL on load, and &#39;re arms&#39; it when u=
nloaded or when the OS shuts down or changes to a lower ACPI state.</div><d=
iv><br></div><div>Is there a technical reason any WoL can not be armed at t=
he same time as OS is using the nic?<br></div><div dir=3D"auto"><br></div><=
div dir=3D"auto">I get that it serves no useful purpose of the os is alread=
y running, but does it pose a problem?</div></div></div>

--0000000000004e1d5d05bc21fe05--

--===============4783235366188268871==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============4783235366188268871==--
