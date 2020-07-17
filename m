Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 520A822330B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Jul 2020 07:47:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7546E85E79;
	Fri, 17 Jul 2020 05:47:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ofV3jB49x2Mv; Fri, 17 Jul 2020 05:47:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B93F6856BF;
	Fri, 17 Jul 2020 05:47:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C92B21BF97A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jul 2020 03:37:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C051F86079
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jul 2020 03:37:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0Eu5BXytDqlK for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Jul 2020 03:37:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11olkn2016.outbound.protection.outlook.com [40.92.19.16])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3EA318605E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jul 2020 03:37:23 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A3aVrQh6TLBTuUt0+SAOQFgWdXj0Pf9o1XW+3pfcP6LNxYG1GKtt+JSQLaMs3LbDZGxMZsawafCxpTgOV9TYZccj0CDkPZGlRecdjUr53GQtY/joVsfKZgXLJKpsxILgnZp0bGDBJoP0P22Qd2q/KE00gaRnLLxmbfLPnHnWBokCO+QR6myw+4QxA38BtaGcJd7wu4eT9HQrI0FwqmLC3kJ4pBorr8GXuWza6LRbV/HPjVrJtKPL0I1JlXTguhoklLP5p6/7tguGl+6PsUQA9zVeBLJ6G/0BS6Dq6MPTC3r606swvIIMqRwF5m9ovIgBKtOE9RCu8O1LcdPRKEvH6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CNBQTHJ8Dfu06CCf9rCTDr7D9oTPmJR5PHGZQ4bU4sk=;
 b=n0nfclejQ/P37fF/21wZdDWQHszj6H+DCuuZLCWlj5TCj4CyN2CdxTcg3ei1qbLYzlgrgjt8qzGfTv6qYhnkzQgVERsip18dxAd4P+vEHOzKVK7mx9WK/Henc8M4qkd/kQztaPlPwpwX9drDWvRACu64eMXtmuGsTWj0xvUyR1VimZLDsptLPmyFcinP3GdkKPGGQlsYJ20VIXhJY9SnxJCPe+4+kml6+PFaX+wKMKHft3dxjwf5OKZeDiG61IsHwfVU+ICbomMcupwwwR1d3E6+XujxKKOeAVlkj5qoGxglGY0VoRIyL4t+/bSrVbOMdax6F1vhSutfr2jK0gyP0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CNBQTHJ8Dfu06CCf9rCTDr7D9oTPmJR5PHGZQ4bU4sk=;
 b=e/9W8SKeQZdScuhNatBVYG0zdM04yjKaoG8mjhsCt6bMV22ujLNIP6sLyDlgGYiqyLmuPMMn2REqPX4q9fkF4C+lyaeFqbQTX5EM2ZFWbg3ykwDfyQwIaVL3Ablm3AaH/tkYtSmyypcnOuZNMLNinZYPjXt61XxC7/j9c3TyrZwRAzt+ZNFz+lr6hHDaWlezLei5mCC0q6lG5mVJ9AC5yhhyvOjm3Iinq7LRD10mrHV5Eg9LB6Dq/OPC1q8bYSoJnC9Wywx7FkHrybZ0ady1MIMYSbz/vGOFTi5VmisT6W4bu51tbUdGGxaLeqdH6VR+ZduVJQawpU4USZqsOIn/Ww==
Received: from DM6NAM11FT026.eop-nam11.prod.protection.outlook.com
 (2a01:111:e400:fc4d::53) by
 DM6NAM11HT013.eop-nam11.prod.protection.outlook.com (2a01:111:e400:fc4d::340)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3195.18; Fri, 17 Jul
 2020 03:37:21 +0000
Received: from SJ0PR07MB7584.namprd07.prod.outlook.com
 (2a01:111:e400:fc4d::51) by DM6NAM11FT026.mail.protection.outlook.com
 (2a01:111:e400:fc4d::161) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3195.18 via Frontend
 Transport; Fri, 17 Jul 2020 03:37:21 +0000
Received: from SJ0PR07MB7584.namprd07.prod.outlook.com
 ([fe80::e809:462f:3e55:1007]) by SJ0PR07MB7584.namprd07.prod.outlook.com
 ([fe80::e809:462f:3e55:1007%9]) with mapi id 15.20.3174.026; Fri, 17 Jul 2020
 03:37:21 +0000
From: Shangshu Qian <qianshangshu_1997@outlook.com>
To: "jeffrey.t.kirsher@intel.com" <jeffrey.t.kirsher@intel.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Thread-Topic: PROBLEM: [e1000e] 10% throughput drop on I219-LM after the
 buffer overrun fix even with TSO&GSO disabled
Thread-Index: AdZb5g/mXp6i3XZRRzSXQldaZE1+VAABUlEA
Date: Fri, 17 Jul 2020 03:37:21 +0000
Message-ID: <SJ0PR07MB7584416FB7A07FD506B8237F9C7C0@SJ0PR07MB7584.namprd07.prod.outlook.com>
References: <SJ0PR07MB7584B6DC5998006092D4D8859C7C0@SJ0PR07MB7584.namprd07.prod.outlook.com>
In-Reply-To: <SJ0PR07MB7584B6DC5998006092D4D8859C7C0@SJ0PR07MB7584.namprd07.prod.outlook.com>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:47E06ABE2A789C6521023D511B50EB18AE76B9743EB9110F27CD1F93AB42E9B1;
 UpperCasedChecksum:F087161E3E72575DB69F8B72087F7733F0F85D98CB93C8ADA626F06162E12652;
 SizeAsReceived:7439; Count:45
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [PRrwyEe30XT2zpg6oPW7fh2+mkiZ66L9YVHSL/S3uc7onkllr1iOfaCXn3+PSKtx]
x-ms-publictraffictype: Email
x-incomingheadercount: 45
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 4bedb248-adc5-45c8-dbc8-08d82a02b67e
x-ms-traffictypediagnostic: DM6NAM11HT013:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ASyoQ/WVneSZOK4P/XTaXjyKvU9vRiuJGLOISDrE46yDl63h9zDfZaYRWGC5k0OPHVOWghcoXHq9f14nKH1n1NbBXc8PnWIEmqsPUvPdkJ5Pz1jM2YguUXy8DpdZmSYHkR8HFIhdTRQyEyhNhJIH91AybKlnzsURbhUlSLZeRVn7LD7fArYkFclzbHeH3F3jalivkaCN+hMYM67DZ5r5btynSiIaP7YI74tAiiGoaaauZgRElOQrkPn20Vmm/948
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR07MB7584.namprd07.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
x-ms-exchange-antispam-messagedata: w+ionIFnbHF9ViyNkp3UJiqPSjtegyyAmvQyI1olOAm/xXlOWhT80HcmiiChZ5dLk335lOV11byeBtvVf/upzIpJ49O/8yEd3eV1FJnbt3huBoSay+kGcQQHtWPLUTMAZ1rBBuNj9N88QY/klhVW66lLzfb/mCd34JPuobFPf8IHdvFRDAi/AB8CQN110xduZ5u2S+RYQV/7222LmvV5tg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM11FT026.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 4bedb248-adc5-45c8-dbc8-08d82a02b67e
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jul 2020 03:37:21.2535 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM11HT013
X-Mailman-Approved-At: Fri, 17 Jul 2020 05:47:41 +0000
Subject: [Intel-wired-lan] PROBLEM: [e1000e] 10% throughput drop on I219-LM
 after the buffer overrun fix even with TSO&GSO disabled
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

[1.] One line summary of the problem:

[e1000e] 10% throughput drop on I219-LM after the buffer overrun fix even w=
ith TSO&GSO disabled

[2.] Full description of the problem/report:

With e1000e 3.6.2-k and 3.8.4-NAPI driver, which include the fix for the bu=
ffer overrun problem (https://github.com/torvalds/linux/commit/b10effb92e27=
2051dd1ec0d7be56bf9ca85ab927, discussion: https://www.spinics.net/lists/net=
dev/msg460589.html), I219-LM network card have a 10% throughput drop in the=
 iperf3 test (with TSO and GSO disabled) compared with the driver without s=
uch patch, and the client is initiating the stream in such test (iperf3 cli=
ent mode without -R option). If the server is initiating the stream (with -=
R option in iperf3 client mode), the performance is not impacted.

That is to say, disabling TSO and GSO as suggested in that patch still have=
 performance impact on the TCP stream, and the throughput drops about 10%.

I tried to rollback the patch introduced to fix the buffer overrun problem =
in the 3.8.4-NAPI driver, with TSO and GSO enabled, iperf3 test still canno=
t max out my 1Gbps uplink. However, with TSO and GSO disabled, 1Gbps uplink=
 can be fully saturated.

I'll attach iperf3 test results for all these situations later in this emai=
l.

[3.] Keywords

Network driver, e1000e

[4.] Kernel information
[4.1.] Kernel version (from /proc/version):

Linux version 5.4.0-31-generic (buildd@lgw01-amd64-059) (gcc version 9.3.0 =
(Ubuntu 9.3.0-10ubuntu2)) #35-Ubuntu SMP Thu May 7 20:20:34 UTC 2020

[4.2.] Kernel .config file:

https://kernel.ubuntu.com/~kernel-ppa/config/focal/linux/5.4.0-31.35/amd64-=
config.flavour.generic

[5.] Most recent kernel version which did not have the bug:

V4.14.2

[6.] Environment

00:1f.6 Ethernet controller: Intel Corporation Ethernet Connection (2) I219=
-LM (rev 31) =


driver: e1000e
version: 3.2.6-k
firmware-version: 0.8-4
expansion-rom-version:
bus-info: 0000:00:1f.6
supports-statistics: yes
supports-test: yes
supports-eeprom-access: yes
supports-register-dump: yes
supports-priv-flags: no

iperf3:
iperf 3.7 (cJSON 1.5.2)
Linux Hetzner 5.4.0-31-generic #35-Ubuntu SMP Thu May 7 20:20:34 UTC 2020 x=
86_64
Optional features available: CPU affinity setting, IPv6 flow label, SCTP, T=
CP congestion algorithm setting, sendfile / zerocopy, socket pacing, authen=
tication

[X.] Other notes, patches, fixes, workarounds:

3.6.2-k w/ TSO & GSO

iperf3 -c bouygues.iperf.fr -d -P 5

[ ID] Interval=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Transfer=A0=A0=A0=A0 Bitrate=
=A0=A0=A0=A0=A0=A0=A0=A0 Retr
[=A0 5]=A0=A0 0.00-10.00=A0 sec=A0=A0 120 MBytes=A0=A0 101 Mbits/sec=A0=A0=
=A0 0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[=A0 5]=A0=A0 0.00-10.02=A0 sec=A0=A0 119 MBytes=A0 99.4 Mbits/sec=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[=A0 7]=A0=A0 0.00-10.00=A0 sec=A0=A0 120 MBytes=A0=A0 101 Mbits/sec=A0=A0=
=A0 0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[=A0 7]=A0=A0 0.00-10.02=A0 sec=A0=A0 119 MBytes=A0 99.4 Mbits/sec=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[=A0 9]=A0=A0 0.00-10.00=A0 sec=A0=A0 120 MBytes=A0=A0 101 Mbits/sec=A0=A0=
=A0 0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[=A0 9]=A0=A0 0.00-10.02=A0 sec=A0=A0 119 MBytes=A0 99.4 Mbits/sec=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[ 11]=A0=A0 0.00-10.00=A0 sec=A0=A0 120 MBytes=A0=A0 101 Mbits/sec=A0=A0=A0=
 0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[ 11]=A0=A0 0.00-10.02=A0 sec=A0=A0 119 MBytes=A0 99.5 Mbits/sec=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[ 13]=A0=A0 0.00-10.00=A0 sec=A0=A0 120 MBytes=A0=A0 101 Mbits/sec=A0=A0=A0=
 0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[ 13]=A0=A0 0.00-10.02=A0 sec=A0=A0 119 MBytes=A0 99.5 Mbits/sec=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[SUM]=A0=A0 0.00-10.00=A0 sec=A0=A0 601 MBytes=A0=A0 504 Mbits/sec=A0=A0=A0=
 0=A0=A0=A0=A0=A0=A0=A0 =A0=A0=A0=A0=A0sender
[SUM]=A0=A0 0.00-10.02=A0 sec=A0=A0 594 MBytes=A0=A0 497 Mbits/sec=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver

iperf3 -c bouygues.iperf.fr -d -P 5 -R

[ ID] Interval=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Transfer=A0=A0=A0=A0 Bitrate=
=A0=A0=A0=A0=A0=A0=A0=A0 Retr
[=A0 5]=A0=A0 0.00-10.02=A0 sec=A0=A0 351 MBytes=A0=A0 293 Mbits/sec=A0 134=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[=A0 5]=A0=A0 0.00-10.00=A0 sec=A0=A0 344 MBytes=A0=A0 289 Mbits/sec=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[=A0 7]=A0=A0 0.00-10.02=A0 sec=A0=A0 204 MBytes=A0=A0 171 Mbits/sec=A0 331=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[=A0 7]=A0=A0 0.00-10.00=A0 sec=A0=A0 201 MBytes=A0=A0 168 Mbits/sec=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[=A0 9]=A0=A0 0.00-10.02=A0 sec=A0=A0 174 MBytes=A0=A0 146 Mbits/sec=A0 226=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[=A0 9]=A0=A0 0.00-10.00=A0 sec=A0=A0 171 MBytes=A0=A0 144 Mbits/sec=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[ 11]=A0=A0 0.00-10.02=A0 sec=A0=A0 177 MBytes=A0=A0 148 Mbits/sec=A0 226=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[ 11]=A0=A0 0.00-10.00=A0 sec=A0=A0 173 MBytes=A0=A0 145 Mbits/sec=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[ 13]=A0=A0 0.00-10.02=A0 sec=A0=A0 164 MBytes=A0=A0 138 Mbits/sec=A0 229=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[ 13]=A0=A0 0.00-10.00=A0 sec=A0=A0 161 MBytes=A0=A0 135 Mbits/sec=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[SUM]=A0=A0 0.00-10.02=A0 sec=A0 1.04 GBytes=A0=A0 896 Mbits/sec=A0 1146=A0=
=A0=A0=A0=A0=A0 =A0=A0=A0=A0=A0=A0sender
[SUM]=A0=A0 0.00-10.00=A0 sec=A0 1.03 GBytes=A0=A0 881 Mbits/sec=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver

3.6.2-k w/o TSO & GSO

iperf3 -c bouygues.iperf.fr -d -P 5

[ ID] Interval=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Transfer=A0=A0=A0=A0 Bitrate=
=A0=A0=A0=A0=A0=A0=A0=A0 Retr
[=A0 5]=A0=A0 0.00-10.00=A0 sec=A0=A0 190 MBytes=A0=A0 159 Mbits/sec=A0=A0=
=A0 0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[=A0 5]=A0=A0 0.00-10.02=A0 sec=A0=A0 188 MBytes=A0=A0 157 Mbits/sec=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[=A0 7]=A0=A0 0.00-10.00=A0 sec=A0=A0 190 MBytes=A0=A0 160 Mbits/sec=A0=A0=
=A0 0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[=A0 7]=A0=A0 0.00-10.02=A0 sec=A0=A0 188 MBytes=A0=A0 157 Mbits/sec=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[=A0 9]=A0=A0 0.00-10.00=A0 sec=A0=A0 191 MBytes=A0=A0 160 Mbits/sec=A0=A0=
=A0 0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[=A0 9]=A0=A0 0.00-10.02=A0 sec=A0=A0 188 MBytes=A0=A0 158 Mbits/sec=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[ 11]=A0=A0 0.00-10.00=A0 sec=A0=A0 190 MBytes=A0=A0 160 Mbits/sec=A0=A0=A0=
 0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[ 11]=A0=A0 0.00-10.02=A0 sec=A0=A0 188 MBytes=A0=A0 158 Mbits/sec=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[ 13]=A0=A0 0.00-10.00=A0 sec=A0=A0 191 MBytes=A0=A0 160 Mbits/sec=A0=A0=A0=
 0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[ 13]=A0=A0 0.00-10.02=A0 sec=A0=A0 188 MBytes=A0=A0 157 Mbits/sec=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[SUM]=A0=A0 0.00-10.00=A0 sec=A0=A0 953 MBytes=A0=A0 799 Mbits/sec=A0=A0=A0=
 0=A0=A0=A0=A0=A0=A0=A0 =A0=A0=A0=A0=A0sender
[SUM]=A0=A0 0.00-10.02=A0 sec=A0=A0 940 MBytes=A0=A0 787 Mbits/sec=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver

iperf3 -c bouygues.iperf.fr -d -P 5 -R

[ ID] Interval=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Transfer=A0=A0=A0=A0 Bitrate=
=A0=A0=A0=A0=A0=A0=A0=A0 Retr
[=A0 5]=A0=A0 0.00-10.02=A0 sec=A0=A0 256 MBytes=A0=A0 214 Mbits/sec=A0 128=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[=A0 5]=A0=A0 0.00-10.00=A0 sec=A0=A0 252 MBytes=A0=A0 211 Mbits/sec=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[=A0 7]=A0=A0 0.00-10.02=A0 sec=A0=A0 238 MBytes=A0=A0 199 Mbits/sec=A0 119=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[=A0 7]=A0=A0 0.00-10.00=A0 sec=A0=A0 234 MBytes=A0=A0 196 Mbits/sec=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[=A0 9]=A0=A0 0.00-10.02=A0 sec=A0=A0 166 MBytes=A0=A0 139 Mbits/sec=A0 207=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[=A0 9]=A0=A0 0.00-10.00=A0 sec=A0=A0 162 MBytes=A0=A0 136 Mbits/sec=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[ 11]=A0=A0 0.00-10.02=A0 sec=A0=A0 222 MBytes=A0=A0 186 Mbits/sec=A0 316=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[ 11]=A0=A0 0.00-10.00=A0 sec=A0=A0 219 MBytes=A0=A0 184 Mbits/sec=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[ 13]=A0=A0 0.00-10.02=A0 sec=A0=A0 225 MBytes=A0=A0 189 Mbits/sec=A0 138=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[ 13]=A0=A0 0.00-10.00=A0 sec=A0=A0 222 MBytes=A0=A0 186 Mbits/sec=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[SUM]=A0=A0 0.00-10.02=A0 sec=A0 1.08 GBytes=A0=A0 927 Mbits/sec=A0 908=A0=
=A0=A0=A0=A0=A0=A0 =A0=A0=A0=A0=A0sender
[SUM]=A0=A0 0.00-10.00=A0 sec=A0 1.06 GBytes=A0=A0 913 Mbits/sec=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver

3.8.4-NAPI w/ TSO & GSO

iperf3 -c bouygues.iperf.fr -d -P 5

[ ID] Interval=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Transfer=A0=A0=A0=A0 Bitrate=
=A0=A0=A0=A0=A0=A0=A0=A0 Retr
[=A0 5]=A0=A0 0.00-10.00=A0 sec=A0=A0 120 MBytes=A0=A0 100 Mbits/sec=A0=A0=
=A0 0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[=A0 5]=A0=A0 0.00-10.02=A0 sec=A0=A0 117 MBytes=A0 97.5 Mbits/sec=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[=A0 7]=A0=A0 0.00-10.00=A0 sec=A0=A0 115 MBytes=A0 96.4 Mbits/sec=A0=A0=A0=
 0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[=A0 7]=A0=A0 0.00-10.02=A0 sec=A0=A0 114 MBytes=A0 95.1 Mbits/sec=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[=A0 9]=A0=A0 0.00-10.00=A0 sec=A0=A0 118 MBytes=A0 98.9 Mbits/sec=A0=A0=A0=
 0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[=A0 9]=A0=A0 0.00-10.02=A0 sec=A0=A0 117 MBytes=A0 97.6 Mbits/sec=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[ 11]=A0=A0 0.00-10.00=A0 sec=A0=A0 118 MBytes=A0 99.3 Mbits/sec=A0=A0=A0 0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[ 11]=A0=A0 0.00-10.02=A0 sec=A0=A0 117 MBytes=A0 97.5 Mbits/sec=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[ 13]=A0=A0 0.00-10.00=A0 sec=A0=A0 118 MBytes=A0 99.3 Mbits/sec=A0=A0=A0 0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[ 13]=A0=A0 0.00-10.02=A0 sec=A0=A0 116 MBytes=A0 97.5 Mbits/sec=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[SUM]=A0=A0 0.00-10.00=A0 sec=A0=A0 589 MBytes=A0=A0 494 Mbits/sec=A0=A0=A0=
 0=A0=A0=A0=A0=A0=A0=A0 =A0=A0=A0=A0=A0sender
[SUM]=A0=A0 0.00-10.02=A0 sec=A0=A0 580 MBytes=A0=A0 485 Mbits/sec=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver

iperf3 -c bouygues.iperf.fr -d -P 5 -R

[ ID] Interval=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Transfer=A0=A0=A0=A0 Bitrate=
=A0=A0=A0=A0=A0=A0=A0=A0 Retr
[=A0 5]=A0=A0 0.00-10.02=A0 sec=A0=A0 289 MBytes=A0=A0 241 Mbits/sec=A0 187=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[=A0 5]=A0=A0 0.00-10.00=A0 sec=A0=A0 282 MBytes=A0=A0 236 Mbits/sec=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[=A0 7]=A0=A0 0.00-10.02=A0 sec=A0=A0 355 MBytes=A0=A0 297 Mbits/sec=A0 324=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[=A0 7]=A0=A0 0.00-10.00=A0 sec=A0=A0 350 MBytes=A0=A0 293 Mbits/sec=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[=A0 9]=A0=A0 0.00-10.02=A0 sec=A0=A0 144 MBytes=A0=A0 121 Mbits/sec=A0 239=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[=A0 9]=A0=A0 0.00-10.00=A0 sec=A0=A0 141 MBytes=A0=A0 118 Mbits/sec=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[ 11]=A0=A0 0.00-10.02=A0 sec=A0=A0 136 MBytes=A0=A0 113 Mbits/sec=A0 286=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[ 11]=A0=A0 0.00-10.00=A0 sec=A0=A0 133 MBytes=A0=A0 111 Mbits/sec=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[ 13]=A0=A0 0.00-10.02=A0 sec=A0=A0 188 MBytes=A0=A0 157 Mbits/sec=A0 156=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[ 13]=A0=A0 0.00-10.00=A0 sec=A0=A0 185 MBytes=A0=A0 155 Mbits/sec=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[SUM]=A0=A0 0.00-10.02=A0 sec=A0 1.09 GBytes=A0=A0 930 Mbits/sec=A0 1192=A0=
=A0=A0=A0=A0=A0 =A0=A0=A0=A0=A0=A0sender
[SUM]=A0=A0 0.00-10.00=A0 sec=A0 1.06 GBytes=A0=A0 914 Mbits/sec=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver

3.8.4-NAPI w/o TSO & GSO

iperf3 -c bouygues.iperf.fr -d -P 5

[ ID] Interval=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Transfer=A0=A0=A0=A0 Bitrate=
=A0=A0=A0=A0=A0=A0=A0=A0 Retr
[=A0 5]=A0=A0 0.00-10.00=A0 sec=A0=A0 194 MBytes=A0=A0 163 Mbits/sec=A0=A0=
=A0 0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[=A0 5]=A0=A0 0.00-10.02=A0 sec=A0=A0 192 MBytes=A0=A0 160 Mbits/sec=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[=A0 7]=A0=A0 0.00-10.00=A0 sec=A0=A0 194 MBytes=A0=A0 163 Mbits/sec=A0=A0=
=A0 0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[=A0 7]=A0=A0 0.00-10.02=A0 sec=A0=A0 192 MBytes=A0=A0 160 Mbits/sec=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[=A0 9]=A0=A0 0.00-10.00=A0 sec=A0=A0 195 MBytes=A0=A0 163 Mbits/sec=A0=A0=
=A0 0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[=A0 9]=A0=A0 0.00-10.02=A0 sec=A0=A0 192 MBytes=A0=A0 160 Mbits/sec=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[ 11]=A0=A0 0.00-10.00=A0 sec=A0=A0 195 MBytes=A0=A0 163 Mbits/sec=A0=A0=A0=
 0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[ 11]=A0=A0 0.00-10.02=A0 sec=A0=A0 192 MBytes=A0=A0 160 Mbits/sec=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[ 13]=A0=A0 0.00-10.00=A0 sec=A0=A0 195 MBytes=A0=A0 163 Mbits/sec=A0=A0=A0=
 0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[ 13]=A0=A0 0.00-10.02=A0 sec=A0=A0 192 MBytes=A0=A0 161 Mbits/sec=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[SUM]=A0=A0 0.00-10.00=A0 sec=A0=A0 973 MBytes=A0=A0 816 Mbits/sec=A0=A0=A0=
 0=A0=A0=A0=A0=A0=A0=A0 =A0=A0=A0=A0=A0sender
[SUM]=A0=A0 0.00-10.02=A0 sec=A0=A0 958 MBytes=A0=A0 802 Mbits/sec=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver

iperf3 -c bouygues.iperf.fr -d -P 5 -R

[ ID] Interval=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Transfer=A0=A0=A0=A0 Bitrate=
=A0=A0=A0=A0=A0=A0=A0=A0 Retr
[=A0 5]=A0=A0 0.00-10.02=A0 sec=A0=A0 499 MBytes=A0=A0 418 Mbits/sec=A0 120=
8=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[=A0 5]=A0=A0 0.00-10.00=A0 sec=A0=A0 487 MBytes=A0=A0 409 Mbits/sec=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[=A0 7]=A0=A0 0.00-10.02=A0 sec=A0=A0 149 MBytes=A0=A0 125 Mbits/sec=A0 262=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[=A0 7]=A0=A0 0.00-10.00=A0 sec=A0=A0 146 MBytes=A0=A0 122 Mbits/sec=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[=A0 9]=A0=A0 0.00-10.02=A0 sec=A0=A0 158 MBytes=A0=A0 132 Mbits/sec=A0 199=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[=A0 9]=A0=A0 0.00-10.00=A0 sec=A0=A0 154 MBytes=A0=A0 129 Mbits/sec=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[ 11]=A0=A0 0.00-10.02=A0 sec=A0=A0 179 MBytes=A0=A0 149 Mbits/sec=A0 209=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[ 11]=A0=A0 0.00-10.00=A0 sec=A0=A0 175 MBytes=A0=A0 147 Mbits/sec=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[ 13]=A0=A0 0.00-10.02=A0 sec=A0=A0 128 MBytes=A0=A0 107 Mbits/sec=A0 386=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[ 13]=A0=A0 0.00-10.00=A0 sec=A0=A0 125 MBytes=A0=A0 105 Mbits/sec=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[SUM]=A0=A0 0.00-10.02=A0 sec=A0 1.09 GBytes=A0=A0 931 Mbits/sec=A0 2264=A0=
=A0=A0=A0=A0=A0 =A0=A0=A0=A0=A0=A0sender
[SUM]=A0=A0 0.00-10.00=A0 sec=A0 1.06 GBytes=A0=A0 912 Mbits/sec=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver

3.8.4-NAPI w/ TSO & GSO (Without buffer overrun patch)

iperf3 -c bouygues.iperf.fr -d -P 5

[ ID] Interval=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Transfer=A0=A0=A0=A0 Bitrate=
=A0=A0=A0=A0=A0=A0=A0=A0 Retr
[=A0 5]=A0=A0 0.00-10.00=A0 sec=A0=A0 204 MBytes=A0=A0 171 Mbits/sec=A0=A0=
=A0 0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[=A0 5]=A0=A0 0.00-10.02=A0 sec=A0=A0 201 MBytes=A0=A0 169 Mbits/sec=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[=A0 7]=A0=A0 0.00-10.00=A0 sec=A0=A0 203 MBytes=A0=A0 170 Mbits/sec=A0=A0=
=A0 0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[=A0 7]=A0=A0 0.00-10.02=A0 sec=A0=A0 201 MBytes=A0=A0 168 Mbits/sec=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[=A0 9]=A0=A0 0.00-10.00=A0 sec=A0=A0 205 MBytes=A0=A0 172 Mbits/sec=A0=A0=
=A0 0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[=A0 9]=A0=A0 0.00-10.02=A0 sec=A0=A0 202 MBytes=A0=A0 169 Mbits/sec=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[ 11]=A0=A0 0.00-10.00=A0 sec=A0=A0 204 MBytes=A0=A0 171 Mbits/sec=A0=A0=A0=
 0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[ 11]=A0=A0 0.00-10.02=A0 sec=A0=A0 201 MBytes=A0=A0 169 Mbits/sec=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[ 13]=A0=A0 0.00-10.00=A0 sec=A0=A0 204 MBytes=A0=A0 171 Mbits/sec=A0=A0=A0=
 0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[ 13]=A0=A0 0.00-10.02=A0 sec=A0=A0 200 MBytes=A0=A0 168 Mbits/sec=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[SUM]=A0=A0 0.00-10.00=A0 sec=A0 1019 MBytes=A0=A0 855 Mbits/sec=A0=A0=A0 0=
=A0=A0=A0=A0=A0=A0=A0 =A0=A0=A0=A0=A0sender
[SUM]=A0=A0 0.00-10.02=A0 sec=A0 1006 MBytes=A0=A0 842 Mbits/sec=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver

iperf3 -c bouygues.iperf.fr -d -P 5 -R

[=A0 5]=A0=A0 0.00-10.02=A0 sec=A0=A0 281 MBytes=A0=A0 235 Mbits/sec=A0 128=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[=A0 5]=A0=A0 0.00-10.00=A0 sec=A0=A0 277 MBytes=A0=A0 232 Mbits/sec=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[=A0 7]=A0=A0 0.00-10.02=A0 sec=A0=A0 267 MBytes=A0=A0 223 Mbits/sec=A0 154=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[=A0 7]=A0=A0 0.00-10.00=A0 sec=A0=A0 263 MBytes=A0=A0 221 Mbits/sec=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[=A0 9]=A0=A0 0.00-10.02=A0 sec=A0=A0 170 MBytes=A0=A0 142 Mbits/sec=A0 154=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[=A0 9]=A0=A0 0.00-10.00=A0 sec=A0=A0 166 MBytes=A0=A0 139 Mbits/sec=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[ 11]=A0=A0 0.00-10.02=A0 sec=A0=A0 161 MBytes=A0=A0 135 Mbits/sec=A0 211=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[ 11]=A0=A0 0.00-10.00=A0 sec=A0=A0 158 MBytes=A0=A0 132 Mbits/sec=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[ 13]=A0=A0 0.00-10.02=A0 sec=A0=A0 219 MBytes=A0=A0 183 Mbits/sec=A0 116=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[ 13]=A0=A0 0.00-10.00=A0 sec=A0=A0 216 MBytes=A0=A0 181 Mbits/sec=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[SUM]=A0=A0 0.00-10.02=A0 sec=A0 1.07 GBytes=A0=A0 919 Mbits/sec=A0 763=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[SUM]=A0=A0 0.00-10.00=A0 sec=A0 1.05 GBytes=A0=A0 906 Mbits/sec=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =A0=A0=A0receiver

3.8.4-NAPI w/o TSO & GSO (Without buffer overrun patch)

iperf3 -c bouygues.iperf.fr -d -P 5

[ ID] Interval=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Transfer=A0=A0=A0=A0 Bitrate=
=A0=A0=A0=A0=A0=A0=A0=A0 Retr
[=A0 5]=A0=A0 0.00-10.00=A0 sec=A0=A0 220 MBytes=A0=A0 184 Mbits/sec=A0=A0=
=A0 0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[=A0 5]=A0=A0 0.00-10.02=A0 sec=A0=A0 218 MBytes=A0=A0 182 Mbits/sec=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[=A0 7]=A0=A0 0.00-10.00=A0 sec=A0=A0 220 MBytes=A0=A0 185 Mbits/sec=A0=A0=
=A0 0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[=A0 7]=A0=A0 0.00-10.02=A0 sec=A0=A0 217 MBytes=A0=A0 182 Mbits/sec=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[=A0 9]=A0=A0 0.00-10.00=A0 sec=A0=A0 216 MBytes=A0=A0 182 Mbits/sec=A0=A0=
=A0 0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[=A0 9]=A0=A0 0.00-10.02=A0 sec=A0=A0 213 MBytes=A0=A0 179 Mbits/sec=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[ 11]=A0=A0 0.00-10.00=A0 sec=A0=A0 220 MBytes=A0=A0 185 Mbits/sec=A0=A0=A0=
 0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[ 11]=A0=A0 0.00-10.02=A0 sec=A0=A0 218 MBytes=A0=A0 182 Mbits/sec=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[ 13]=A0=A0 0.00-10.00=A0 sec=A0=A0 221 MBytes=A0=A0 185 Mbits/sec=A0=A0=A0=
 0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[ 13]=A0=A0 0.00-10.02=A0 sec=A0=A0 218 MBytes=A0=A0 182 Mbits/sec=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[SUM]=A0=A0 0.00-10.00=A0 sec=A0 1.07 GBytes=A0=A0 920 Mbits/sec=A0=A0=A0 0=
=A0=A0=A0=A0=A0=A0=A0 =A0=A0=A0=A0=A0sender
[SUM]=A0=A0 0.00-10.02=A0 sec=A0 1.06 GBytes=A0=A0 907 Mbits/sec=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver

iperf3 -c bouygues.iperf.fr -d -P 5 -R

[ ID] Interval=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Transfer=A0=A0=A0=A0 Bitrate=
=A0=A0=A0=A0=A0=A0=A0=A0 Retr
[=A0 5]=A0=A0 0.00-10.02=A0 sec=A0=A0 259 MBytes=A0=A0 217 Mbits/sec=A0=A0 =
67=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[=A0 5]=A0=A0 0.00-10.00=A0 sec=A0=A0 255 MBytes=A0=A0 214 Mbits/sec=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[=A0 7]=A0=A0 0.00-10.02=A0 sec=A0=A0 256 MBytes=A0=A0 214 Mbits/sec=A0 168=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[=A0 7]=A0=A0 0.00-10.00=A0 sec=A0=A0 252 MBytes=A0=A0 212 Mbits/sec=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[=A0 9]=A0=A0 0.00-10.02=A0 sec=A0=A0 260 MBytes=A0=A0 217 Mbits/sec=A0 189=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[=A0 9]=A0=A0 0.00-10.00=A0 sec=A0=A0 256 MBytes=A0=A0 215 Mbits/sec=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[ 11]=A0=A0 0.00-10.02=A0 sec=A0=A0 165 MBytes=A0=A0 138 Mbits/sec=A0 237=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[ 11]=A0=A0 0.00-10.00=A0 sec=A0=A0 161 MBytes=A0=A0 135 Mbits/sec=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[ 13]=A0=A0 0.00-10.02=A0 sec=A0=A0 172 MBytes=A0=A0 144 Mbits/sec=A0 220=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sender
[ 13]=A0=A0 0.00-10.00=A0 sec=A0=A0 169 MBytes=A0=A0 142 Mbits/sec=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
[SUM]=A0=A0 0.00-10.02=A0 sec=A0 1.08 GBytes=A0=A0 930 Mbits/sec=A0 881=A0=
=A0=A0=A0=A0=A0=A0 =A0=A0=A0=A0=A0sender
[SUM]=A0=A0 0.00-10.00=A0 sec=A0 1.07 GBytes=A0=A0 917 Mbits/sec=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 receiver
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
