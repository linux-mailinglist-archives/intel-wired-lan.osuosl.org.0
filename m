Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B8FC100B67
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Nov 2019 19:22:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A606A21567;
	Mon, 18 Nov 2019 18:22:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 303thohOwXZv; Mon, 18 Nov 2019 18:22:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7C9372155E;
	Mon, 18 Nov 2019 18:22:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 79F091BF846
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Nov 2019 11:51:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 75F2D881C8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Nov 2019 11:51:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BdUVXsXiD8CJ for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 Nov 2019 11:51:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.web.de (mout.web.de [212.227.15.3])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A72E1881AB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Nov 2019 11:51:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1573905045;
 bh=2FsLU14m8g1Gnw2RjUC/Ipb1FCtyEewrnlVaECnP6oE=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=CogjriGdFSh1+zWyZgGFEkvXr6oTY2Uf3KXOTQ/DZzCPybJRMRT6RE2BPfoqpLuS0
 ahnCUP9tQIG3qbY7LTeBdXGsbY3DAuWQJ1IXwy2zB+W4Y1ZomhKhn5z/izJLMOAvvs
 KDWpX7lSvp1Lm3j6VUXiiQpbPaWlUSMtreVif9hw=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from minako.localnet ([95.91.225.185]) by smtp.web.de (mrweb002
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0Mbhen-1iCuJN2Jvx-00J6if; Sat, 16
 Nov 2019 12:50:45 +0100
From: Jan Janssen <medhefgo@web.de>
To: intel-wired-lan@lists.osuosl.org
Date: Sat, 16 Nov 2019 12:50:38 +0100
Message-ID: <3945198.J3aOToa6sv@minako>
MIME-Version: 1.0
X-Provags-ID: V03:K1:pQCtwh4h5PCezuxWVjwMpfn3ch+nKJihXngch1kOVQvNk6M8JFj
 nF1NDRK0ZYvnF1SvuekkIZpeb/p/FJNZ7Y2v9blmLj4obIRTdr+2mTlYCcn4pnVjoCTgTUw
 note2fGWK9gg7izzYuTj1zcoO6Ln8P9dopgsH3Iza0yNOYSmQYaSkwpoB3KJmgrp94Egwyr
 fF31usiyPg8iINPcJ2ozg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:Ut2fAms5/7o=:wmRHyxdlzHot80y6orcEEv
 /2GAPVmkpMDDI8XeeWyXH3kQOmP0LS4zSM10Un16zfAq6KqLp59IPOvuMebb8DE0rjG+pWr5z
 h/36Ep/dY/K7+PyEv4OHlACdBJh6hi7va8c6hJKGZIKjgnQfrdoe8Yq3/gZtlrkzXIo+mwqtx
 gu0vtymH1Tqtyb8t3U7SGQOSlw2XFhWRwvSD9SXDmLkt4OfXrINZWNqPBP5Kh/VTRAOpuAohI
 f3GQEyG+q0y59k4e8GqvGi7FRGJLUOemvlXUXXk75vyYI+rwRoG2YYtOND751Rb9nDoGfGA4A
 bY8fPPEVoahnjlSH8gKqthABBku53vSI1OE38f8eijT3QkkO4vso0qyHKhxAU5AsaYxi1YqyU
 AEcf6lQ44iG59muq6Xa55aaxz0/MVrwdXCzRYUwRZ5s3KoN0n956YKpp3sAQ+h5redH+u1/V+
 mckosMsJa6T2flxXsjcvmMVqoyFll4Ch5rLhjFoa2B6kDtf/XY9azBQQ4VQf0+sgK3Escug4+
 5IKHGfc8N++hzabF3TpBWUrSj1zq5rMou574D73Icewt4QYkq9vwczJT9sM3Ka/WVvGSbt7kT
 DnD98HHZfpy5N10gUUM8X42EMZN7jLnjRsxLPoFc50IZknSC8qjaSu5YmN+zZX/g9HOiXGlui
 mVUtYYighykWo/Q0xwE5y7FfG62w3cfSQ4YpXR/CsriT6Pwu/MURwuTavgaaxzxsxOk4iQvLY
 hdcEZSS+kuibmPQgIZ9ZEcuU0Nm9yXprsi1w8tKxXu+px6tiB60eh0mgpS27S31cMocuQrrpX
 oTik159ci0tAQnpGsHjb6T4hPv8QO66eRSPDIbYinrKRGUnRVUSgqIaDk5s40N+3y5AENVONu
 8Kw7YxSXXnKXY0j4Pntan1lB+dLapAAiy+Z0iNg4SqLXevToqRfJosNntpgWX0RuiJgcHTOLd
 l0cKDcNlUXRUtk4Kj8hs8gNbtmconVOuUM4Ssv0MaPSKklSKllUyiUSn3WwYxB5tZHNLHfdjQ
 YRLhO3pE/6y6DxbmV/ImJD3QjUMGt1DH9m+OGnlOQMLc6ASryx8MMoQ57Cg0sxCPajZchOW8J
 ndtyr86vApY2wv0vKf3EABDJ1LkH84n0XyJ7C7L5lA4aVOm3FIZanNjkGLmNCC9xor+MGFt34
 bjSdxg24RCz4/SzNc51sy2VqS1bNcbtCRHheOBD/HRHhiD8/+S46D3iL9fh+xtmRIEs2mNk+p
 HL8s152qfIx4WCiq6vaeYh1mrW7q9CaTljP4vZRZA8XKf2tnf2XRpxZQiMNU=
X-Mailman-Approved-At: Mon, 18 Nov 2019 18:22:28 +0000
Subject: [Intel-wired-lan] Regression: e1000e link not coming up
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
Cc: "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

since 5.3 my I219-V network interface sometimes doesn't come up when booting
or resuming from suspend. This either forces me to use "ip link down/up" or
reloading the module to get working internet.

I reported this issue previously to netdev@vger.kernel.org where I initially
bisected to a wrong commit. After finding the right one nobody reacted to it,
so now I am trying this again here.

There is also a bugzilla entry for this, but it seems to be ignored by
maintainers too: https://bugzilla.kernel.org/show_bug.cgi?id=205067
For me, this happens with systemd-networkd, but the people in the bugzilla
report are observing this with NetworkManager.

The commit introducing the bug is 59653e6497d16f7ac1d9db088f3959f57ee8c3db
(e1000e: Make watchdog use delayed work) and reverting it did make this bug go
away. Though, it cannot be reverted automatically on the latest git tree from
Torvalds anymore.

I've also tried the master branch on jkirsher/net-queue.git  and
jkirsher/next-queue.git, but the bug is still present there too.

This bug is really annoying and inconvenient, so I would really appreciate if
somebody could fix this bug or at least have the offending commit reverted.

Regards,
Jan


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
