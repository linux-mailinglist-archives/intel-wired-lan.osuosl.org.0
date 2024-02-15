Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 19AA085669A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Feb 2024 15:54:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 334CE41D8E;
	Thu, 15 Feb 2024 14:54:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fghUpcYH76nI; Thu, 15 Feb 2024 14:54:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AE84E41E2D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708008857;
	bh=IT6a5Nw4dZlYOm4J/MrtHC1WGfvjoiWJ6lT8CMBCrxg=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=GXGczm4OYVpypf6/IOfcpCf2YGTOE5n4/dw5TPp+QfwQbcChiBmcRKczjC33FUGgs
	 FDso6hcNQWgU9xpGZjJ7c9xyTG/nH5yW+r6qbuM1pQl5GQ+YOYXQuUAwYFtMYupW52
	 ud/raBoHm9greXULoWx7lvJmBzF8Ip6NWL0te1HtKdE6uIVEy/3rIns5oAYAWKNTSj
	 yXXEVBke742oON7zV27oF+kC9cE32UU4QLiG7Mu26vknaJ2tA104FB+DcLZ6XDECXh
	 3SCXh3SusBXVeMCLkPJt8Gb5tguZPq47ciFUerzWs+GDHbV9x7YCljIYqyr/fBUaFD
	 Ic6Rm2IGrqBdw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AE84E41E2D;
	Thu, 15 Feb 2024 14:54:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DC2581BF575
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Feb 2024 11:07:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C88226075B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Feb 2024 11:07:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id upPkQ9pJOKav for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Feb 2024 11:07:42 +0000 (UTC)
X-Greylist: delayed 318 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 15 Feb 2024 11:07:42 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 258D260668
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 258D260668
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.83.229.9;
 helo=mail.ycharbi.fr; envelope-from=kernel.org-fo5k2w@ycharbi.fr;
 receiver=<UNKNOWN> 
Received: from mail.ycharbi.fr (mail.ycharbi.fr [45.83.229.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 258D260668
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Feb 2024 11:07:42 +0000 (UTC)
MIME-Version: 1.0
Date: Thu, 15 Feb 2024 11:02:18 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
From: kernel.org-fo5k2w@ycharbi.fr
Message-ID: <8267673cce94022974bcf35b2bf0f6545105d03e@ycharbi.fr>
TLS-Required: No
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com
X-Mailman-Approved-At: Thu, 15 Feb 2024 14:54:15 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=ycharbi.fr; s=mail; 
 t=1707994938; bh=IT6a5Nw4dZlYOm4J/MrtHC1WGfvjoiWJ6lT8CMBCrxg=;
 h=Date:List-Unsubscribe:From:Subject:To:Cc:From;
 b=Gey/D1rY1Hh6LQ8897aj1ktICIoWwsHtOVA1Dz4ABSCaqriRfzCPyfCC36nDOKxzx
 7WDcI7QIoQZQHF8pWTWu4i+sQtg2J7u5JyMgFRIg4yf3oJ7EFeGAlV1btEWdfnOCmk
 FkldulEYtnKqVKDO5/ahsGkhUftH0Fri5FFiBp2u+PQZLs7NMXr8sOSjS+16q2InpM
 1B4DU6JHi+WXQGnQqcje6fGZnBoVzrDo8Tu1hXqNFVr2WnyenJJskK3etGXvkDjSoP
 UWnXwsCE5f63JNvIMrdt8kodP8s98azNKIz9t/1hMVj4OLOUcwW0x14wtuDMfVnuCY
 hgfNVT8UiarSj/XniYofUtMAe/8UqYNRULX6wjzin9MHdl1mwXLtHqoCy/uijoXBxy
 CYoo8ORCyLuof44QM4725YIFKCfu9vG5oJ/69ogGFk+F/TnXRpUbTFY4dYmWjw4iY+
 LJf5JaTXYo1p0kxJ1/DJyGeZFLO16A+DeT4pUh+ircDF2eIOSzsfo1HIhgMtUvEGuk
 bv6ICX2XyptQAJtjFnjF8piGk6d55sI1o/TudOxWge1L27FEz0wxaqT74TvOwlzzBQ
 ck2qRo3k1z0SGSbC+4dJBRLG3tiAZ3QwgNUzCSaI4WomcJqyqxEhc0ffdVU0YLnYBz
 jaUqQSjaPoDOYK7wxeTulh/Q=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=ycharbi.fr
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (4096-bit key,
 unprotected) header.d=ycharbi.fr header.i=@ycharbi.fr header.a=rsa-sha256
 header.s=mail header.b=Gey/D1rY
Subject: [Intel-wired-lan] Non-functional ixgbe driver between Intel X553
 chipset and Cisco switch via kernel >=6.1 under Debian
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello,

(Please note that I don't speak English, sorry if the traction is not fai=
thful to your language)

Following Bjorn Helgaas's advice (https://bugzilla.kernel.org/show_bug.cg=
i?id=3D218050#c14), I'm coming to you in the hope of finding a solution t=
o a problem encountered by several users of the ixgbe driver. The subject=
 has been discussed in the messages and comments on the following pages:
https://marc.info/?l=3Dlinux-netdev&m=3D170118007007901&w=3D2
https://forum.proxmox.com/threads/intel-x553-sfp-ixgbe-no-go-on-pve8.1351=
29/
https://www.servethehome.com/the-everything-fanless-home-server-firewall-=
router-and-nas-appliance-qotom-qnap-teamgroup/
https://www.servethehome.com/intel-x553-networking-and-proxmox-ve-8-1-3/?=
unapproved=3D518173&moderation-hash=3De57a05288058d3ff253ceb42e9ada905
https://forum.proxmox.com/threads/proxmox-8-kernel-6-2-16-4-pve-ixgbe-dri=
ver-fails-to-load-due-to-pci-device-probing-failure.131203/
https://bugzilla.kernel.org/show_bug.cgi?id=3D218491
https://bugzilla.kernel.org/show_bug.cgi?id=3D218050

Having myself decided to purchase a Qotom Q20332G9-S10 machine with X553 =
chipset for testing purposes, I can see the effectiveness of the connecti=
on problem between the PC's X553 SFP+ and a Cisco switch SFP+. For my par=
t, this happens under GNU/Linux Debian 12 - kernel 6.1.76 and Sid - kerne=
l 6.6.13. So it's not specific to Proxmox.
I should point out that under GNU/Linux Debian 11 - kernel 5.10, the netw=
ork card (X553 via ixgbe) works without problems. So this is a relatively=
 "recent" bug.

Here's my test environment:
- 1 Qotom Q20332G9-S10 (I used a 16GB Intel Optane M10 M.2 SSD with a fre=
sh GNU/Linux Debian 12)
- 1 Cisco DAC cable (tested with a 1M and a 3M)
- 1 PC with Mellanox Connectx-3 2x SFP+ network card (running GNU/Linux D=
ebian SID installed several years ago)
- 1 Cisco 3560CX-12PD-S switch (2 SFP+ ports) with IOS 15.2(7)E2

Connecting the Qotom Q20332G9-S10 (X553) to the Mellanox Connectx-3 works=
 without a hitch and without any special handling (the linux-image-6.1.0-=
17-amd64 ixgbe driver works in this configuration). Full 10gbps speeds be=
tween the two with an "iperf".

At this stage, I've ruled out a hardware incompatibility (OSI level 1) si=
nce the DAC works with the X553. So there's no need to use compatibility =
tricks as suggested in the link comments with the "allow_unsupported_sfp=
=3D1" parameter. This will be useless in the following tests (I've checke=
d).

Where it gets tricky is when you connect it (the Qotom) to the Cisco swit=
ch.
Before an "ip link eno1 up", the Cisco raises the link on its side, but t=
he Debian doesn't (link DOWN). After the "ip link eno1 up", the link drop=
s and never comes back. There does seem to be a driver problem in recent =
kernels (GNU/Linux Debian Stable and Sid).

After compiling the driver manually (https://downloadmirror.intel.com/812=
532/ixgbe-5.19.9.tar.gz) following the documentation already shared by ot=
hers (https://www.xmodulo.com/download-install-ixgbe-driver-ubuntu-debian=
.html), it works with the Cisco (after a "shut/no shut" of the latter's 1=
0gbe port).

So we end up with a working machine (I even configured and used the SR-IO=
V successfully right afterwards).

PS: I also tested with Debian Sid

I've finally tried the commands you were giving Skyler without any result=
 (rmmod ixgbe; modprobe ixgbe; ethtool -S eno1 | grep fault).

For the moment, the Qotom machine is dedicated to testing, so I'm availab=
le to carry out any manipulations you may wish to make to advance the sub=
ject.
Can we work on diagnosing this problem so that the next stable release of=
 Debian is fully functional with this Intel network card?

Best regards.

=E2=A2=80=E2=A3=B4=E2=A0=BE=E2=A0=BB=E2=A2=B6=E2=A3=A6=E2=A0=80
=E2=A3=BE=E2=A0=81=E2=A2=A0=E2=A0=92=E2=A0=80=E2=A3=BF=E2=A1=81 Yohan Cha=
rbi
=E2=A2=BF=E2=A1=84=E2=A0=98=E2=A0=B7=E2=A0=9A=E2=A0=8B=E2=A0=80 Cordialem=
ent
=E2=A0=88=E2=A0=B3=E2=A3=84=E2=A0=80
