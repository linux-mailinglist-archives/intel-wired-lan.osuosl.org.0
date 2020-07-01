Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2CAF2114BB
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Jul 2020 23:09:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0D2568AA26;
	Wed,  1 Jul 2020 21:09:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nGdhw2Rq9RZT; Wed,  1 Jul 2020 21:09:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 864158AA93;
	Wed,  1 Jul 2020 21:09:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 29A4E1BF5DF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2020 21:09:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 24B348A980
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2020 21:09:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B336Glo9pVqJ for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Jul 2020 21:09:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com
 [209.85.219.170])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 55E338A8A2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2020 21:09:19 +0000 (UTC)
Received: by mail-yb1-f170.google.com with SMTP id k18so12644180ybm.13
 for <intel-wired-lan@lists.osuosl.org>; Wed, 01 Jul 2020 14:09:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=uzmKdyN3faHUsUUBbkEokevabaOJsZwc69vgak31E4g=;
 b=ZsCi3sHz4Q2rVIe2zSMqHWS8ASTvUzCCiUlP6MvLbQKGlt4RK4X80xzh0CPpCPvpiQ
 x1pIKrChIMf8daKJiHmT1uWVD53C4tJ1RuidHM3adR9yxd7bpWe0GIPw8YwDPlg+22uQ
 a4jzXgofeXgnzb1M5QT6vCjKKnqP6UnYhJiHrizLTDvbvqT99EefNeHQuPBkOqnkkExe
 EEXfozSB0ItiFZIpsNqaMv1o4fyRPPXBcNAbdZOTFIa1+MLGTacRP+XmDIs0fRU2yfF6
 C/08lWwkOJhqqeKDjAI1WWwxrXdQatgws059tod1XHD2fDWTLNx4ng5LKT31lNAvxsz2
 SoLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=uzmKdyN3faHUsUUBbkEokevabaOJsZwc69vgak31E4g=;
 b=AMwS1t1MwLl0J0t0jqXR2W4AFeJAXFjotmc+QfUhRaRTCSB+kmGIFsDNvF81QAj5QK
 Vv07ZcCaGa3I92+JRWDZAvH2lO1YLW+PAqDhahq3OViDSdZ7hUPZmFDJVI8V7pBz0hF/
 OoQLEhE1YkKunvUR1A1urLR+e43m4n7gD5LQGZFAtJOxtscsL281ZA0SYSkVhTw44+mC
 jY+eVUbt6TkYfa775gQf+Dnb9wy/IM9qP2G8TDoY/wrXXIrjiuvcZDY3/NZBdtc/oExX
 4u7OoyI0JQbTniHRWbSXYESuQXf5Zil0yySoK/RHkV77ZvbrcyhMhaI9JiJzdn1vWJJl
 FAFg==
X-Gm-Message-State: AOAM533WrvV4Bc3h4u9jaaknczXAWbDgG5nIeNFsaqurRoq+Fuyr2EQY
 3IzBd0kK/Q3ScnEYjbB8VsvJRHBLlNwrpz6V2ccC+hUFNIs=
X-Google-Smtp-Source: ABdhPJwVXab7MU3zllMlumjvLOk2W2EO1jz2I8vfHYGxo/l4AFV785IWRF7kwF5BkhXN+2Kk0o/f1MM0l9/HaMMRiJM=
X-Received: by 2002:a25:3c82:: with SMTP id
 j124mr43699126yba.228.1593637757738; 
 Wed, 01 Jul 2020 14:09:17 -0700 (PDT)
MIME-Version: 1.0
From: Paul Stewart <pstew@google.com>
Date: Wed, 1 Jul 2020 14:09:05 -0700
Message-ID: <CAMcMvsjtsz3A+f-wA4yS7w+3dTaKO9tgCjeWPz_eAC5rMRHTNw@mail.gmail.com>
To: intel-wired-lan@lists.osuosl.org
Subject: [Intel-wired-lan] ixgbe-x550 link detection after boot
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
Content-Type: multipart/mixed; boundary="===============1996515348440833990=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============1996515348440833990==
Content-Type: multipart/alternative; boundary="000000000000740f2905a967b464"

--000000000000740f2905a967b464
Content-Type: text/plain; charset="UTF-8"

Hi there.  I have a system with a Denverton based chipset which has a
built-in 4 ports of 10GBE.  It's properly configured to enumerate
as 8086:15c6 (IXGBE_DEV_ID_X550EM_A_SGMII).  It also successfully detects
link to its backplane partner with the stock ixgbe driver, but only if that
partner is up and running before the driver starts up.  If the Denverton
chipset comes up first, nothing I've tried so far as succeeded in having
the chipset detect link.  I've tried the normal "ifconfig down/up",
"ethtool -A eth1 autoneg off" etc, but nothing so far seems to do as much
as just rebooting the system.  Are there any hints as to how I can get this
going?  I've also tried "hw->mac.ops.reset_hw(hw)" and calling
"hw->mac.ops.setup_link()" again from the kernel and that surprisingly
didn't work either, so I'm getting curious as to what can get the system to
re-evaluate link state.  It's really true that the Links status register
does not mark the link as up (as shown by ethtool -d).

If it's of any consequence the SGMII link partner is a Marvell 88E1512.
MDIO is not connected.  For its part, the Marvell part detects link from
the Denverton whether or not that understanding is reciprocal.

--000000000000740f2905a967b464
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi there.=C2=A0 I have a system with a Denverton based chi=
pset which has a built-in 4 ports of 10GBE.=C2=A0 It&#39;s properly configu=
red to enumerate as=C2=A08086:15c6 (IXGBE_DEV_ID_X550EM_A_SGMII).=C2=A0 It =
also successfully detects link to its backplane partner with the stock ixgb=
e driver, but only if that partner is up and running before the driver star=
ts up.=C2=A0 If the Denverton chipset comes up first, nothing I&#39;ve trie=
d so far as succeeded in having the chipset detect link.=C2=A0 I&#39;ve tri=
ed the normal &quot;ifconfig down/up&quot;, &quot;ethtool -A eth1 autoneg o=
ff&quot; etc, but nothing so far seems to do as much as just rebooting the =
system.=C2=A0 Are there any hints as to how I can get this going?=C2=A0 I&#=
39;ve also tried &quot;hw-&gt;mac.ops.reset_hw(hw)&quot; and calling &quot;=
hw-&gt;mac.ops.setup_link()&quot; again from the kernel and that surprising=
ly didn&#39;t work either, so I&#39;m getting curious=C2=A0as to what=C2=A0=
can get the system to re-evaluate link state.=C2=A0 It&#39;s really true th=
at the Links status register does not mark the link as up (as shown by etht=
ool -d).<div><br></div><div>If it&#39;s of any consequence the SGMII link p=
artner is a=C2=A0Marvell 88E1512.=C2=A0 MDIO is not connected.=C2=A0 For it=
s part, the Marvell part detects link from the Denverton=C2=A0whether or no=
t that understanding is reciprocal.</div></div>

--000000000000740f2905a967b464--

--===============1996515348440833990==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============1996515348440833990==--
