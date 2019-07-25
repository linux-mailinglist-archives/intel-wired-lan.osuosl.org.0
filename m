Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1533A75A7A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jul 2019 00:17:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4927A874DA;
	Thu, 25 Jul 2019 22:17:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CpfXNrtpkJM4; Thu, 25 Jul 2019 22:17:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BD025874F7;
	Thu, 25 Jul 2019 22:17:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 763AA1BF420
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 21:12:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 71F1387487
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 21:12:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zRI12UR5kljV for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jul 2019 21:12:01 +0000 (UTC)
X-Greylist: delayed 00:05:16 by SQLgrey-1.7.6
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6A19F87482
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 21:12:01 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id n4so52255210wrs.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 14:12:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mozilla.com; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=NFDVoJqWhDirnH8E/pgkfOasK9dW4PbEYiK9caiy5Co=;
 b=fgTgev7Zs0K4igWPL7W4A3oLgmrElLU9Ktxr3cM0DKK1eqYkRqSrXUkOR4KMuLPMpe
 +KTcQWBDQOci65UoCzi5+MUztGaGv8qAE9VBZUxxYIFqVdFxMZ4rbRT5lcoU2B/A4NHl
 k+05ky5h6zErfi2/WF/zp7j0d1jmXvm51Y57M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=NFDVoJqWhDirnH8E/pgkfOasK9dW4PbEYiK9caiy5Co=;
 b=Ej3T2KG9AQF4Tn3Z8yvUB0i2JiZ4d7HVrF8aq+Lb0bzIWKqGRGTQVOcbDGsANSNmLT
 OQyMi13SclYGzaEptVXI4UBPRjCK91lzJXpOMefAoa9WEO0tLHZoQ9lPJ0WL8lqkAQ42
 TCrrE7uNY+dCNW9m2xrRMj1A6utip/Ikz/QJBRbuCzDp6tvjo3LUyOIIR7Ig6X482+RS
 XJ+gJWCrxrbLt5CvloXVJY0KrxUN3UiUdCHHbFD0jCDTE5TnOqQMM3Kc8GQeXa+VbG9z
 XCf2dZKq2jXeiLmJgYXgJx27/sw4XJsuc4umka2YLkVscHocqrZgIIO0ASMsU8qY93+K
 v2oQ==
X-Gm-Message-State: APjAAAVBO0uz1F21razaCTVDiAk6IpCTLz0dgh1qSeO/6Bv8A2lus44b
 K5NJqAlb1poXuZNrrzffBted5hdvpG4dzo2N0V1bdaX/bT9qHw==
X-Google-Smtp-Source: APXvYqxq2nBMQjAlXo2pQ5JNkkyH2hasMaCZys5O07DX3TNapNnP85/jj65/qwy7qxyqOKiNxwNeVQvt1YlGzkuyN+Q=
X-Received: by 2002:a5d:668e:: with SMTP id l14mr39638493wru.156.1564088802865; 
 Thu, 25 Jul 2019 14:06:42 -0700 (PDT)
MIME-Version: 1.0
From: Michal Purzynski <michal@mozilla.com>
Date: Thu, 25 Jul 2019 14:06:06 -0700
Message-ID: <CADL_+2hTEZ5pyQ4LeiiMY-5BAH=-2Fay_-X8oAy=W4YrN040Wg@mail.gmail.com>
To: intel-wired-lan@lists.osuosl.org
X-Mailman-Approved-At: Thu, 25 Jul 2019 22:17:09 +0000
Subject: [Intel-wired-lan] (no subject)
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
Content-Type: multipart/mixed; boundary="===============7063012435766239094=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============7063012435766239094==
Content-Type: multipart/alternative; boundary="0000000000007e1cc5058e87cd8f"

--0000000000007e1cc5058e87cd8f
Content-Type: text/plain; charset="UTF-8"

Hey, I found some behavior of the flow-director that looks like a bug and
wanted to share.

When trying to drop some GRE traffic with a rule like this (where
10.251.0.194 is the source of the traffic)

ethtool -N enp17s0f0 flow-type ip4 src-ip 10.251.0.194 action -1

The following rule has been created

root@nsm1~ # ethtool -u enp17s0f0
4 RX rings available
Total 1 rules

Filter: 7679
Rule Type: Raw IPv4
Src IP addr: 10.251.0.194 mask: 0.0.0.0
Dest IP addr: 0.0.0.0 mask: 255.255.255.255
TOS: 0x0 mask: 0xff
Protocol: 0 mask: 0xff
L4 bytes: 0x0 mask: 0xffffffff
Action: Drop

Traffic from 10.251.0.194 is not being dropped at all - I can see it with
tcpdump.

20:27:46.579094 00:0b:86:b5:69:17 > 70:3a:0e:c9:f2:ea, ethertype 802.1Q
(0x8100), length 106: vlan 206, p 0, ethertype IPv4, (tos 0x0, ttl 63, id
51921, offset 0, flags [DF], proto GRE (47), length 88)
    10.251.0.194 > 10.251.1.136: GREv0, Flags [none], proto Loopback
(0x9000), length 68
gre-proto-0x9000

ntuple filters are enabled (and so is RSS with a low-entropy hash key)

ntuple-filters: on
receive-hashing: on

The fdir_sb_match counter keeps increasing, but at a much slower rate than
expected. It goes up by like 1 packets every N seconds - and I have a
steady flow of those GRE packets (over 100/sec).

port.fdir_sb_match: 295983
port.fdir_sb_status: 1

I also tried including the Vlan ID, but the documentation says it's ignored
- and indeed, trying to insert it when a non-vlan rule exists already,
results in a message

root@nsm1~ # ethtool -N enp17s0f0 flow-type ip4 src-ip 10.251.0.194 vlan
206 action -1
rmgr: Cannot insert RX class rule: Invalid argument

The exact same filter works on cards from different vendors, like Mellanox.
Could it be that I'm running into some FD limits here? If you need a pcap,
let me know and I'll share - off the list.

--
Michal Purzynski
Threat Management
Mozilla Corporation

--0000000000007e1cc5058e87cd8f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hey, I found some behavior of the flow-director =
that looks=20
like a bug and wanted to share.</div><div><br></div><div>When trying to dro=
p some GRE traffic with a rule like this (where 10.251.0.194 is the source =
of the traffic)<br></div><div><br></div><div>ethtool -N enp17s0f0 flow-type=
 ip4 src-ip 10.251.0.194 action -1</div><div><br></div><div>The following r=
ule has been created<br></div><div><br></div></div><div>root@nsm1~ # ethtoo=
l -u enp17s0f0</div>4 RX rings available<br>Total 1 rules<br><br>Filter: 76=
79<br>	Rule Type: Raw IPv4<br>	Src IP addr: 10.251.0.194 mask: 0.0.0.0<br>	=
Dest IP addr: 0.0.0.0 mask: 255.255.255.255<br>	TOS: 0x0 mask: 0xff<br>	Pro=
tocol: 0 mask: 0xff<br>	L4 bytes: 0x0 mask: 0xffffffff<br><div>	Action: Dro=
p</div><div><br></div><div>Traffic from 10.251.0.194 is not being dropped a=
t all - I can see it with tcpdump.</div><div><br></div><div>20:27:46.579094=
 00:0b:86:b5:69:17 &gt; 70:3a:0e:c9:f2:ea, ethertype=20
802.1Q (0x8100), length 106: vlan 206, p 0, ethertype IPv4, (tos 0x0,=20
ttl 63, id 51921, offset 0, flags [DF], proto GRE (47), length 88)<br>=C2=
=A0 =C2=A0 10.251.0.194 &gt; <a href=3D"http://10.251.1.136" target=3D"_bla=
nk">10.251.1.136</a>: GREv0, Flags [none], proto Loopback (0x9000), length =
68<br>	gre-proto-0x9000</div><div><br></div><div>ntuple filters are enabled=
 (and so is RSS with a low-entropy hash key)<br></div><div><br></div><div>n=
tuple-filters: on<br>receive-hashing: on</div><div><br></div><div>The
 fdir_sb_match counter keeps increasing, but at a much slower rate than=20
expected. It goes up by like 1 packets every N seconds - and I have a=20
steady flow of those GRE packets (over 100/sec).<br></div><div><br></div><d=
iv>port.fdir_sb_match: 295983<br>port.fdir_sb_status: 1</div><div><br></div=
><div>I
 also tried including the Vlan ID, but the documentation says it&#39;s=20
ignored - and indeed, trying to insert it when a non-vlan rule exists=20
already, results in a message<br></div><div><br></div>root@nsm1~ # ethtool =
-N enp17s0f0 flow-type ip4 src-ip 10.251.0.194 vlan 206 action -1<br><div>r=
mgr: Cannot insert RX class rule: Invalid argument</div><div><br></div><div=
>The
 exact same filter works on cards from different vendors, like Mellanox.
 Could it be that I&#39;m running into some FD limits here? If you need a p=
cap, let me know and I&#39;ll share - off the list.<br></div><div><br></div=
><div>--</div><div>Michal Purzynski</div><div>Threat Management</div><div>M=
ozilla Corporation</div></div>

--0000000000007e1cc5058e87cd8f--

--===============7063012435766239094==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============7063012435766239094==--
