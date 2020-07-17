Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 96FDE22330C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Jul 2020 07:48:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 111F6203F0;
	Fri, 17 Jul 2020 05:48:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O8AhFl3jyEjM; Fri, 17 Jul 2020 05:48:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 57F7D20400;
	Fri, 17 Jul 2020 05:47:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 882851BF97A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jul 2020 03:28:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7F7C7203E7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jul 2020 03:28:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f0J7uoOaERLC for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Jul 2020 03:28:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12olkn2066.outbound.protection.outlook.com [40.92.22.66])
 by silver.osuosl.org (Postfix) with ESMTPS id B15CB203E0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jul 2020 03:28:06 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ateY1GLbwPT1zrwwP+WNWHlwgcqvhiTVDQWev2zh5Lj4S7rDSpSgc+PpYIOFKwQtlDOiCRsU6iVbt2JWFNGpunswvX02K/3DQqITO7+8GKgQgzwRnBumIt/H5dekxGDlIKPlmkpQej+AGM0Gbjsg6FnuodqWylNINHV5SkwbA+/YRHoZc/OPq53iA0mrHJ7D2rfuyrCzRKqcXd9gg145hMlJv7L5udX+nMaOB1THYWreVNAZ15LQXNd8Tv5ukS6084akcUxOLv1R/VTdnXgnqo5O9H87Z+TrJdGragXagiziDyFLY6EUvyN4iQWgh0T9ea10xIGyhrv5k8PTDj9ixg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Mwu19oM/ExMqr3LIJeadNxmtTk/a9zvIOzTiMecaIHw=;
 b=K1MNlBEdvaddjyLAqedFmhgYRQTVo8EZ3WJ8GnmQGIYxP80iWgZbMpkvrSyPZvTq5bmQxHcu04/sclY8ZGTuxxGNu+t434WIwv4cCmmD8UtqdqJhDGBBcSo6VwP2rHzFtdW9H94D5Lbc+BEVTCTTDQk3wwsrxmpzMJyLeSRrAL7xcNxgz1krYF9vmykAZxi8Tfr14Tnctplfb1JmkjepPnB7oylZ4BY7bMz1NEmQ1N+onhATdvPc07CsR1V253xsEMO0br591i0zZRH5D2gt2virX+/2+oi7jpQwjZOvdEfQIblKrTNUUSROephRmQNUZ9Ct8spqlgl4qWhHd7VfTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Mwu19oM/ExMqr3LIJeadNxmtTk/a9zvIOzTiMecaIHw=;
 b=dlI+5RO65FAHv5GUIW05WG2OYsyemrVyOqz4WRCQ7nJROSW3NpsnohDEa9egcEwEE3QDLcTL+tbhIHiRcUQimebQE1TGimMi54K+6d3CRfuShInJahthQEZVXWJJzlW+0B1BvW5dLHAhldzw/jv4ap+b0AwZzbVy81AQ5NQJ/JsPT4YJW1FAws/25n7eFd7p04MJaft1DS9dBrFt/o8Bz3+p2LylD0VX0zo+VMaSvXwb/ygByw34Jf5lp93SrSTBr32Sb+F05sKlLAWM4HYeHTMUmlq+VKTWhQcJdYQbKNUNUYl/5mLTp91RrH1useQTFa8YFK3aobhcKvSP37xa7Q==
Received: from BN8NAM12FT044.eop-nam12.prod.protection.outlook.com
 (2a01:111:e400:fc66::43) by
 BN8NAM12HT138.eop-nam12.prod.protection.outlook.com (2a01:111:e400:fc66::427)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3195.9; Fri, 17 Jul
 2020 03:28:04 +0000
Received: from SJ0PR07MB7584.namprd07.prod.outlook.com
 (2a01:111:e400:fc66::4a) by BN8NAM12FT044.mail.protection.outlook.com
 (2a01:111:e400:fc66::315) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3195.9 via Frontend
 Transport; Fri, 17 Jul 2020 03:28:04 +0000
Received: from SJ0PR07MB7584.namprd07.prod.outlook.com
 ([fe80::e809:462f:3e55:1007]) by SJ0PR07MB7584.namprd07.prod.outlook.com
 ([fe80::e809:462f:3e55:1007%9]) with mapi id 15.20.3174.026; Fri, 17 Jul 2020
 03:28:04 +0000
From: Shangshu Qian <qianshangshu_1997@outlook.com>
To: "jeffrey.t.kirsher@intel.com" <jeffrey.t.kirsher@intel.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Thread-Topic: PROBLEM: [e1000e] 10% throughput drop on I219-LM after the
 buffer overrun fix even with TSO&GSO disabled
Thread-Index: AdZb5g/mXp6i3XZRRzSXQldaZE1+VA==
Date: Fri, 17 Jul 2020 03:28:04 +0000
Message-ID: <SJ0PR07MB7584B6DC5998006092D4D8859C7C0@SJ0PR07MB7584.namprd07.prod.outlook.com>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:64BFEAFBF5034B1906164881C8798BFD4407DCFEF9266A52BF410A0FCB1FF4E5;
 UpperCasedChecksum:5C55E183C80A2BECCB318C6E583BE08EC9C9711B2D5ADD162B0DBA26F93651BE;
 SizeAsReceived:7254; Count:43
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [UYI8y+UqNgUI9It7ckCYmGt57WqPC0YYD7ONS6quOt8w4LvjPT1WaMCTTSRyau+o]
x-ms-publictraffictype: Email
x-incomingheadercount: 43
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 5d6b2838-7a05-48f4-ed6d-08d82a016ad0
x-ms-traffictypediagnostic: BN8NAM12HT138:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CyRvpBJCUOuakgCRqN2oQB9377I74IpQUZh3hOKJF+tt7Ku/BfRED3bBFRifGiNg3q7HZnSU6iHmsLt6dEoxt0yFBWqdPfJCRlmHyIPa/mYkcquMPu24Quv/5ZC5+NYZla1q/xJzYV/EyoQbwgLVGA4J2H5PoQPeVpZQreYdrtBIHbr5/hP87u0FpdeM3QtWJ3gD9M+wQpX7Qbwab6QDEFKwTlV1jB4DoBaSvK2cfzAyE5xT72t67naw3ZjvGst6
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR07MB7584.namprd07.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
x-ms-exchange-antispam-messagedata: adx7fC4SdELWLR6KVBZZFNdgbNnZkoQg/KuC1Le1a+BWI6XCNZeYfbHTgGPorGNxqma96KNIptKk4KqhQH60A3tE7uyshvueBdDGRWuuAVF3D/FOXynxblS1Fu4prQs0CvozRFVJi4lG+ZJy1lKpC2CnBaIyms2Xxgr7vWTW7y2s6ryUsBji7MC25+4/KeQ3EoKIYpE+af33RUoT/EryKA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: BN8NAM12FT044.eop-nam12.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d6b2838-7a05-48f4-ed6d-08d82a016ad0
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jul 2020 03:28:04.5568 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8NAM12HT138
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
Content-Type: multipart/mixed; boundary="===============7587742109962883969=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============7587742109962883969==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR07MB7584B6DC5998006092D4D8859C7C0SJ0PR07MB7584namp_"

--_000_SJ0PR07MB7584B6DC5998006092D4D8859C7C0SJ0PR07MB7584namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

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
-LM (rev 31)

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

[ ID] Interval           Transfer     Bitrate         Retr
[  5]   0.00-10.00  sec   120 MBytes   101 Mbits/sec    0             sende=
r
[  5]   0.00-10.02  sec   119 MBytes  99.4 Mbits/sec                  recei=
ver
[  7]   0.00-10.00  sec   120 MBytes   101 Mbits/sec    0             sende=
r
[  7]   0.00-10.02  sec   119 MBytes  99.4 Mbits/sec                  recei=
ver
[  9]   0.00-10.00  sec   120 MBytes   101 Mbits/sec    0             sende=
r
[  9]   0.00-10.02  sec   119 MBytes  99.4 Mbits/sec                  recei=
ver
[ 11]   0.00-10.00  sec   120 MBytes   101 Mbits/sec    0             sende=
r
[ 11]   0.00-10.02  sec   119 MBytes  99.5 Mbits/sec                  recei=
ver
[ 13]   0.00-10.00  sec   120 MBytes   101 Mbits/sec    0             sende=
r
[ 13]   0.00-10.02  sec   119 MBytes  99.5 Mbits/sec                  recei=
ver
[SUM]   0.00-10.00  sec   601 MBytes   504 Mbits/sec    0             sende=
r
[SUM]   0.00-10.02  sec   594 MBytes   497 Mbits/sec                  recei=
ver

iperf3 -c bouygues.iperf.fr -d -P 5 -R

[ ID] Interval           Transfer     Bitrate         Retr
[  5]   0.00-10.02  sec   351 MBytes   293 Mbits/sec  134             sende=
r
[  5]   0.00-10.00  sec   344 MBytes   289 Mbits/sec                  recei=
ver
[  7]   0.00-10.02  sec   204 MBytes   171 Mbits/sec  331             sende=
r
[  7]   0.00-10.00  sec   201 MBytes   168 Mbits/sec                  recei=
ver
[  9]   0.00-10.02  sec   174 MBytes   146 Mbits/sec  226             sende=
r
[  9]   0.00-10.00  sec   171 MBytes   144 Mbits/sec                  recei=
ver
[ 11]   0.00-10.02  sec   177 MBytes   148 Mbits/sec  226             sende=
r
[ 11]   0.00-10.00  sec   173 MBytes   145 Mbits/sec                  recei=
ver
[ 13]   0.00-10.02  sec   164 MBytes   138 Mbits/sec  229             sende=
r
[ 13]   0.00-10.00  sec   161 MBytes   135 Mbits/sec                  recei=
ver
[SUM]   0.00-10.02  sec  1.04 GBytes   896 Mbits/sec  1146             send=
er
[SUM]   0.00-10.00  sec  1.03 GBytes   881 Mbits/sec                  recei=
ver

3.6.2-k w/o TSO & GSO

iperf3 -c bouygues.iperf.fr -d -P 5

[ ID] Interval           Transfer     Bitrate         Retr
[  5]   0.00-10.00  sec   190 MBytes   159 Mbits/sec    0             sende=
r
[  5]   0.00-10.02  sec   188 MBytes   157 Mbits/sec                  recei=
ver
[  7]   0.00-10.00  sec   190 MBytes   160 Mbits/sec    0             sende=
r
[  7]   0.00-10.02  sec   188 MBytes   157 Mbits/sec                  recei=
ver
[  9]   0.00-10.00  sec   191 MBytes   160 Mbits/sec    0             sende=
r
[  9]   0.00-10.02  sec   188 MBytes   158 Mbits/sec                  recei=
ver
[ 11]   0.00-10.00  sec   190 MBytes   160 Mbits/sec    0             sende=
r
[ 11]   0.00-10.02  sec   188 MBytes   158 Mbits/sec                  recei=
ver
[ 13]   0.00-10.00  sec   191 MBytes   160 Mbits/sec    0             sende=
r
[ 13]   0.00-10.02  sec   188 MBytes   157 Mbits/sec                  recei=
ver
[SUM]   0.00-10.00  sec   953 MBytes   799 Mbits/sec    0             sende=
r
[SUM]   0.00-10.02  sec   940 MBytes   787 Mbits/sec                  recei=
ver

iperf3 -c bouygues.iperf.fr -d -P 5 -R

[ ID] Interval           Transfer     Bitrate         Retr
[  5]   0.00-10.02  sec   256 MBytes   214 Mbits/sec  128             sende=
r
[  5]   0.00-10.00  sec   252 MBytes   211 Mbits/sec                  recei=
ver
[  7]   0.00-10.02  sec   238 MBytes   199 Mbits/sec  119             sende=
r
[  7]   0.00-10.00  sec   234 MBytes   196 Mbits/sec                  recei=
ver
[  9]   0.00-10.02  sec   166 MBytes   139 Mbits/sec  207             sende=
r
[  9]   0.00-10.00  sec   162 MBytes   136 Mbits/sec                  recei=
ver
[ 11]   0.00-10.02  sec   222 MBytes   186 Mbits/sec  316             sende=
r
[ 11]   0.00-10.00  sec   219 MBytes   184 Mbits/sec                  recei=
ver
[ 13]   0.00-10.02  sec   225 MBytes   189 Mbits/sec  138             sende=
r
[ 13]   0.00-10.00  sec   222 MBytes   186 Mbits/sec                  recei=
ver
[SUM]   0.00-10.02  sec  1.08 GBytes   927 Mbits/sec  908             sende=
r
[SUM]   0.00-10.00  sec  1.06 GBytes   913 Mbits/sec                  recei=
ver

3.8.4-NAPI w/ TSO & GSO

iperf3 -c bouygues.iperf.fr -d -P 5

[ ID] Interval           Transfer     Bitrate         Retr
[  5]   0.00-10.00  sec   120 MBytes   100 Mbits/sec    0             sende=
r
[  5]   0.00-10.02  sec   117 MBytes  97.5 Mbits/sec                  recei=
ver
[  7]   0.00-10.00  sec   115 MBytes  96.4 Mbits/sec    0             sende=
r
[  7]   0.00-10.02  sec   114 MBytes  95.1 Mbits/sec                  recei=
ver
[  9]   0.00-10.00  sec   118 MBytes  98.9 Mbits/sec    0             sende=
r
[  9]   0.00-10.02  sec   117 MBytes  97.6 Mbits/sec                  recei=
ver
[ 11]   0.00-10.00  sec   118 MBytes  99.3 Mbits/sec    0             sende=
r
[ 11]   0.00-10.02  sec   117 MBytes  97.5 Mbits/sec                  recei=
ver
[ 13]   0.00-10.00  sec   118 MBytes  99.3 Mbits/sec    0             sende=
r
[ 13]   0.00-10.02  sec   116 MBytes  97.5 Mbits/sec                  recei=
ver
[SUM]   0.00-10.00  sec   589 MBytes   494 Mbits/sec    0             sende=
r
[SUM]   0.00-10.02  sec   580 MBytes   485 Mbits/sec                  recei=
ver

iperf3 -c bouygues.iperf.fr -d -P 5 -R

[ ID] Interval           Transfer     Bitrate         Retr
[  5]   0.00-10.02  sec   289 MBytes   241 Mbits/sec  187             sende=
r
[  5]   0.00-10.00  sec   282 MBytes   236 Mbits/sec                  recei=
ver
[  7]   0.00-10.02  sec   355 MBytes   297 Mbits/sec  324             sende=
r
[  7]   0.00-10.00  sec   350 MBytes   293 Mbits/sec                  recei=
ver
[  9]   0.00-10.02  sec   144 MBytes   121 Mbits/sec  239             sende=
r
[  9]   0.00-10.00  sec   141 MBytes   118 Mbits/sec                  recei=
ver
[ 11]   0.00-10.02  sec   136 MBytes   113 Mbits/sec  286             sende=
r
[ 11]   0.00-10.00  sec   133 MBytes   111 Mbits/sec                  recei=
ver
[ 13]   0.00-10.02  sec   188 MBytes   157 Mbits/sec  156             sende=
r
[ 13]   0.00-10.00  sec   185 MBytes   155 Mbits/sec                  recei=
ver
[SUM]   0.00-10.02  sec  1.09 GBytes   930 Mbits/sec  1192             send=
er
[SUM]   0.00-10.00  sec  1.06 GBytes   914 Mbits/sec                  recei=
ver

3.8.4-NAPI w/o TSO & GSO

iperf3 -c bouygues.iperf.fr -d -P 5

[ ID] Interval           Transfer     Bitrate         Retr
[  5]   0.00-10.00  sec   194 MBytes   163 Mbits/sec    0             sende=
r
[  5]   0.00-10.02  sec   192 MBytes   160 Mbits/sec                  recei=
ver
[  7]   0.00-10.00  sec   194 MBytes   163 Mbits/sec    0             sende=
r
[  7]   0.00-10.02  sec   192 MBytes   160 Mbits/sec                  recei=
ver
[  9]   0.00-10.00  sec   195 MBytes   163 Mbits/sec    0             sende=
r
[  9]   0.00-10.02  sec   192 MBytes   160 Mbits/sec                  recei=
ver
[ 11]   0.00-10.00  sec   195 MBytes   163 Mbits/sec    0             sende=
r
[ 11]   0.00-10.02  sec   192 MBytes   160 Mbits/sec                  recei=
ver
[ 13]   0.00-10.00  sec   195 MBytes   163 Mbits/sec    0             sende=
r
[ 13]   0.00-10.02  sec   192 MBytes   161 Mbits/sec                  recei=
ver
[SUM]   0.00-10.00  sec   973 MBytes   816 Mbits/sec    0             sende=
r
[SUM]   0.00-10.02  sec   958 MBytes   802 Mbits/sec                  recei=
ver

iperf3 -c bouygues.iperf.fr -d -P 5 -R

[ ID] Interval           Transfer     Bitrate         Retr
[  5]   0.00-10.02  sec   499 MBytes   418 Mbits/sec  1208             send=
er
[  5]   0.00-10.00  sec   487 MBytes   409 Mbits/sec                  recei=
ver
[  7]   0.00-10.02  sec   149 MBytes   125 Mbits/sec  262             sende=
r
[  7]   0.00-10.00  sec   146 MBytes   122 Mbits/sec                  recei=
ver
[  9]   0.00-10.02  sec   158 MBytes   132 Mbits/sec  199             sende=
r
[  9]   0.00-10.00  sec   154 MBytes   129 Mbits/sec                  recei=
ver
[ 11]   0.00-10.02  sec   179 MBytes   149 Mbits/sec  209             sende=
r
[ 11]   0.00-10.00  sec   175 MBytes   147 Mbits/sec                  recei=
ver
[ 13]   0.00-10.02  sec   128 MBytes   107 Mbits/sec  386             sende=
r
[ 13]   0.00-10.00  sec   125 MBytes   105 Mbits/sec                  recei=
ver
[SUM]   0.00-10.02  sec  1.09 GBytes   931 Mbits/sec  2264             send=
er
[SUM]   0.00-10.00  sec  1.06 GBytes   912 Mbits/sec                  recei=
ver

3.8.4-NAPI w/ TSO & GSO (Without buffer overrun patch)

iperf3 -c bouygues.iperf.fr -d -P 5

[ ID] Interval           Transfer     Bitrate         Retr
[  5]   0.00-10.00  sec   204 MBytes   171 Mbits/sec    0             sende=
r
[  5]   0.00-10.02  sec   201 MBytes   169 Mbits/sec                  recei=
ver
[  7]   0.00-10.00  sec   203 MBytes   170 Mbits/sec    0             sende=
r
[  7]   0.00-10.02  sec   201 MBytes   168 Mbits/sec                  recei=
ver
[  9]   0.00-10.00  sec   205 MBytes   172 Mbits/sec    0             sende=
r
[  9]   0.00-10.02  sec   202 MBytes   169 Mbits/sec                  recei=
ver
[ 11]   0.00-10.00  sec   204 MBytes   171 Mbits/sec    0             sende=
r
[ 11]   0.00-10.02  sec   201 MBytes   169 Mbits/sec                  recei=
ver
[ 13]   0.00-10.00  sec   204 MBytes   171 Mbits/sec    0             sende=
r
[ 13]   0.00-10.02  sec   200 MBytes   168 Mbits/sec                  recei=
ver
[SUM]   0.00-10.00  sec  1019 MBytes   855 Mbits/sec    0             sende=
r
[SUM]   0.00-10.02  sec  1006 MBytes   842 Mbits/sec                  recei=
ver

iperf3 -c bouygues.iperf.fr -d -P 5 -R

[  5]   0.00-10.02  sec   281 MBytes   235 Mbits/sec  128             sende=
r
[  5]   0.00-10.00  sec   277 MBytes   232 Mbits/sec                  recei=
ver
[  7]   0.00-10.02  sec   267 MBytes   223 Mbits/sec  154             sende=
r
[  7]   0.00-10.00  sec   263 MBytes   221 Mbits/sec                  recei=
ver
[  9]   0.00-10.02  sec   170 MBytes   142 Mbits/sec  154             sende=
r
[  9]   0.00-10.00  sec   166 MBytes   139 Mbits/sec                  recei=
ver
[ 11]   0.00-10.02  sec   161 MBytes   135 Mbits/sec  211             sende=
r
[ 11]   0.00-10.00  sec   158 MBytes   132 Mbits/sec                  recei=
ver
[ 13]   0.00-10.02  sec   219 MBytes   183 Mbits/sec  116             sende=
r
[ 13]   0.00-10.00  sec   216 MBytes   181 Mbits/sec                  recei=
ver
[SUM]   0.00-10.02  sec  1.07 GBytes   919 Mbits/sec  763             sende=
r
[SUM]   0.00-10.00  sec  1.05 GBytes   906 Mbits/sec                  recei=
ver

3.8.4-NAPI w/o TSO & GSO (Without buffer overrun patch)

iperf3 -c bouygues.iperf.fr -d -P 5

[ ID] Interval           Transfer     Bitrate         Retr
[  5]   0.00-10.00  sec   220 MBytes   184 Mbits/sec    0             sende=
r
[  5]   0.00-10.02  sec   218 MBytes   182 Mbits/sec                  recei=
ver
[  7]   0.00-10.00  sec   220 MBytes   185 Mbits/sec    0             sende=
r
[  7]   0.00-10.02  sec   217 MBytes   182 Mbits/sec                  recei=
ver
[  9]   0.00-10.00  sec   216 MBytes   182 Mbits/sec    0             sende=
r
[  9]   0.00-10.02  sec   213 MBytes   179 Mbits/sec                  recei=
ver
[ 11]   0.00-10.00  sec   220 MBytes   185 Mbits/sec    0             sende=
r
[ 11]   0.00-10.02  sec   218 MBytes   182 Mbits/sec                  recei=
ver
[ 13]   0.00-10.00  sec   221 MBytes   185 Mbits/sec    0             sende=
r
[ 13]   0.00-10.02  sec   218 MBytes   182 Mbits/sec                  recei=
ver
[SUM]   0.00-10.00  sec  1.07 GBytes   920 Mbits/sec    0             sende=
r
[SUM]   0.00-10.02  sec  1.06 GBytes   907 Mbits/sec                  recei=
ver

iperf3 -c bouygues.iperf.fr -d -P 5 -R

[ ID] Interval           Transfer     Bitrate         Retr
[  5]   0.00-10.02  sec   259 MBytes   217 Mbits/sec   67             sende=
r
[  5]   0.00-10.00  sec   255 MBytes   214 Mbits/sec                  recei=
ver
[  7]   0.00-10.02  sec   256 MBytes   214 Mbits/sec  168             sende=
r
[  7]   0.00-10.00  sec   252 MBytes   212 Mbits/sec                  recei=
ver
[  9]   0.00-10.02  sec   260 MBytes   217 Mbits/sec  189             sende=
r
[  9]   0.00-10.00  sec   256 MBytes   215 Mbits/sec                  recei=
ver
[ 11]   0.00-10.02  sec   165 MBytes   138 Mbits/sec  237             sende=
r
[ 11]   0.00-10.00  sec   161 MBytes   135 Mbits/sec                  recei=
ver
[ 13]   0.00-10.02  sec   172 MBytes   144 Mbits/sec  220             sende=
r
[ 13]   0.00-10.00  sec   169 MBytes   142 Mbits/sec                  recei=
ver
[SUM]   0.00-10.02  sec  1.08 GBytes   930 Mbits/sec  881             sende=
r
[SUM]   0.00-10.00  sec  1.07 GBytes   917 Mbits/sec                  recei=
ver

--_000_SJ0PR07MB7584B6DC5998006092D4D8859C7C0SJ0PR07MB7584namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
@font-face
	{font-family:"\@DengXian";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">[1.] One line summary of the problem:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">[e1000e] 10% throughput drop on I219-LM after the bu=
ffer overrun fix even with TSO&amp;GSO disabled<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">[2.] Full description of the problem/report:<o:p></o=
:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">With e1000e 3.6.2-k and 3.8.4-NAPI driver, which inc=
lude the fix for the buffer overrun problem (<a href=3D"https://github.com/=
torvalds/linux/commit/b10effb92e272051dd1ec0d7be56bf9ca85ab927">https://git=
hub.com/torvalds/linux/commit/b10effb92e272051dd1ec0d7be56bf9ca85ab927</a>,
 discussion: <a href=3D"https://www.spinics.net/lists/netdev/msg460589.html=
">https://www.spinics.net/lists/netdev/msg460589.html</a>), I219-LM network=
 card have a 10% throughput drop in the iperf3 test (with TSO and GSO disab=
led) compared with the driver without
 such patch, and the client is initiating the stream in such test (iperf3 c=
lient mode without -R option). If the server is initiating the stream (with=
 -R option in iperf3 client mode), the performance is not impacted.<o:p></o=
:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">That is to say, disabling TSO and GSO as suggested i=
n that patch still have performance impact on the TCP stream, and the throu=
ghput drops about 10%.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I tried to rollback the patch introduced to fix the =
buffer overrun problem in the 3.8.4-NAPI driver, with TSO and GSO enabled, =
iperf3 test still cannot max out my 1Gbps uplink. However, with TSO and GSO=
 disabled, 1Gbps uplink can be fully
 saturated.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;ll attach iperf3 test results for all these =
situations later in this email.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">[3.] Keywords<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Network driver, e1000e<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">[4.] Kernel information<o:p></o:p></p>
<p class=3D"MsoNormal">[4.1.] Kernel version (from /proc/version):<o:p></o:=
p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Linux version 5.4.0-31-generic (buildd@lgw01-amd64-0=
59) (gcc version 9.3.0 (Ubuntu 9.3.0-10ubuntu2)) #35-Ubuntu SMP Thu May 7 2=
0:20:34 UTC 2020<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">[4.2.] Kernel .config file:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://kernel.ubuntu.com/~kernel-ppa/con=
fig/focal/linux/5.4.0-31.35/amd64-config.flavour.generic">https://kernel.ub=
untu.com/~kernel-ppa/config/focal/linux/5.4.0-31.35/amd64-config.flavour.ge=
neric</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">[5.] Most recent kernel version which did not have t=
he bug:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">V4.14.2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">[6.] Environment<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">00:1f.6 Ethernet controller: Intel Corporation Ether=
net Connection (2) I219-LM (rev 31)
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">driver: e1000e<o:p></o:p></p>
<p class=3D"MsoNormal">version: 3.2.6-k<o:p></o:p></p>
<p class=3D"MsoNormal">firmware-version: 0.8-4<o:p></o:p></p>
<p class=3D"MsoNormal">expansion-rom-version:<o:p></o:p></p>
<p class=3D"MsoNormal">bus-info: 0000:00:1f.6<o:p></o:p></p>
<p class=3D"MsoNormal">supports-statistics: yes<o:p></o:p></p>
<p class=3D"MsoNormal">supports-test: yes<o:p></o:p></p>
<p class=3D"MsoNormal">supports-eeprom-access: yes<o:p></o:p></p>
<p class=3D"MsoNormal">supports-register-dump: yes<o:p></o:p></p>
<p class=3D"MsoNormal">supports-priv-flags: no<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">iperf3:<o:p></o:p></p>
<p class=3D"MsoNormal">iperf 3.7 (cJSON 1.5.2)<o:p></o:p></p>
<p class=3D"MsoNormal">Linux Hetzner 5.4.0-31-generic #35-Ubuntu SMP Thu Ma=
y 7 20:20:34 UTC 2020 x86_64<o:p></o:p></p>
<p class=3D"MsoNormal">Optional features available: CPU affinity setting, I=
Pv6 flow label, SCTP, TCP congestion algorithm setting, sendfile / zerocopy=
, socket pacing, authentication<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">[X.] Other notes, patches, fixes, workarounds:<o:p><=
/o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>3.6.2-k w/ TSO &amp; GSO<o:p></o:p></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">iperf3 -c bouyg=
ues.iperf.fr -d -P 5<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas"><o:p>&nbsp;</o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ ID] Interval&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Transfer&nbsp;&=
nbsp;&nbsp;&nbsp; Bitrate&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; R=
etr<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 5]&nbsp=
;&nbsp; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 120 MBytes&nbsp;&nbsp; 101 Mbits/s=
ec&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 5]&nbsp=
;&nbsp; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 119 MBytes&nbsp; 99.4 Mbits/sec&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 7]&nbsp=
;&nbsp; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 120 MBytes&nbsp;&nbsp; 101 Mbits/s=
ec&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 7]&nbsp=
;&nbsp; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 119 MBytes&nbsp; 99.4 Mbits/sec&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 9]&nbsp=
;&nbsp; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 120 MBytes&nbsp;&nbsp; 101 Mbits/s=
ec&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 9]&nbsp=
;&nbsp; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 119 MBytes&nbsp; 99.4 Mbits/sec&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ 11]&nbsp;&nbs=
p; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 120 MBytes&nbsp;&nbsp; 101 Mbits/sec&nb=
sp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ 11]&nbsp;&nbs=
p; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 119 MBytes&nbsp; 99.5 Mbits/sec&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ 13]&nbsp;&nbs=
p; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 120 MBytes&nbsp;&nbsp; 101 Mbits/sec&nb=
sp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ 13]&nbsp;&nbs=
p; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 119 MBytes&nbsp; 99.5 Mbits/sec&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[SUM]&nbsp;&nbs=
p; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 601 MBytes&nbsp;&nbsp; 504 Mbits/sec&nb=
sp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[SUM]&nbsp;&nbs=
p; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 594 MBytes&nbsp;&nbsp; 497 Mbits/sec&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas"><o:p>&nbsp;</o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">iperf3 -c bouyg=
ues.iperf.fr -d -P 5 -R<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas"><o:p>&nbsp;</o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ ID] Interval&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Transfer&nbsp;&=
nbsp;&nbsp;&nbsp; Bitrate&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; R=
etr<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 5]&nbsp=
;&nbsp; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 351 MBytes&nbsp;&nbsp; 293 Mbits/s=
ec&nbsp; 134&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 5]&nbsp=
;&nbsp; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 344 MBytes&nbsp;&nbsp; 289 Mbits/s=
ec&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 7]&nbsp=
;&nbsp; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 204 MBytes&nbsp;&nbsp; 171 Mbits/s=
ec&nbsp; 331&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 7]&nbsp=
;&nbsp; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 201 MBytes&nbsp;&nbsp; 168 Mbits/s=
ec&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 9]&nbsp=
;&nbsp; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 174 MBytes&nbsp;&nbsp; 146 Mbits/s=
ec&nbsp; 226&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 9]&nbsp=
;&nbsp; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 171 MBytes&nbsp;&nbsp; 144 Mbits/s=
ec&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ 11]&nbsp;&nbs=
p; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 177 MBytes&nbsp;&nbsp; 148 Mbits/sec&nb=
sp; 226&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ 11]&nbsp;&nbs=
p; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 173 MBytes&nbsp;&nbsp; 145 Mbits/sec&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ 13]&nbsp;&nbs=
p; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 164 MBytes&nbsp;&nbsp; 138 Mbits/sec&nb=
sp; 229&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ 13]&nbsp;&nbs=
p; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 161 MBytes&nbsp;&nbsp; 135 Mbits/sec&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[SUM]&nbsp;&nbs=
p; 0.00-10.02&nbsp; sec&nbsp; 1.04 GBytes&nbsp;&nbsp; 896 Mbits/sec&nbsp; 1=
146&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[SUM]&nbsp;&nbs=
p; 0.00-10.00&nbsp; sec&nbsp; 1.03 GBytes&nbsp;&nbsp; 881 Mbits/sec&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas"><o:p>&nbsp;</o:=
p></span></p>
<p class=3D"MsoNormal"><b>3.6.2-k w/o TSO &amp; GSO<o:p></o:p></b></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas"><o:p>&nbsp;</o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">iperf3 -c bouyg=
ues.iperf.fr -d -P 5<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas"><o:p>&nbsp;</o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ ID] Interval&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Transfer&nbsp;&=
nbsp;&nbsp;&nbsp; Bitrate&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; R=
etr<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 5]&nbsp=
;&nbsp; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 190 MBytes&nbsp;&nbsp; 159 Mbits/s=
ec&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 5]&nbsp=
;&nbsp; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 188 MBytes&nbsp;&nbsp; 157 Mbits/s=
ec&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 7]&nbsp=
;&nbsp; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 190 MBytes&nbsp;&nbsp; 160 Mbits/s=
ec&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 7]&nbsp=
;&nbsp; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 188 MBytes&nbsp;&nbsp; 157 Mbits/s=
ec&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 9]&nbsp=
;&nbsp; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 191 MBytes&nbsp;&nbsp; 160 Mbits/s=
ec&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 9]&nbsp=
;&nbsp; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 188 MBytes&nbsp;&nbsp; 158 Mbits/s=
ec&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ 11]&nbsp;&nbs=
p; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 190 MBytes&nbsp;&nbsp; 160 Mbits/sec&nb=
sp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ 11]&nbsp;&nbs=
p; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 188 MBytes&nbsp;&nbsp; 158 Mbits/sec&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ 13]&nbsp;&nbs=
p; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 191 MBytes&nbsp;&nbsp; 160 Mbits/sec&nb=
sp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ 13]&nbsp;&nbs=
p; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 188 MBytes&nbsp;&nbsp; 157 Mbits/sec&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[SUM]&nbsp;&nbs=
p; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 953 MBytes&nbsp;&nbsp; 799 Mbits/sec&nb=
sp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[SUM]&nbsp;&nbs=
p; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 940 MBytes&nbsp;&nbsp; 787 Mbits/sec&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas"><o:p>&nbsp;</o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">iperf3 -c bouyg=
ues.iperf.fr -d -P 5 -R<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas"><o:p>&nbsp;</o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ ID] Interval&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Transfer&nbsp;&=
nbsp;&nbsp;&nbsp; Bitrate&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; R=
etr<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 5]&nbsp=
;&nbsp; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 256 MBytes&nbsp;&nbsp; 214 Mbits/s=
ec&nbsp; 128&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 5]&nbsp=
;&nbsp; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 252 MBytes&nbsp;&nbsp; 211 Mbits/s=
ec&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 7]&nbsp=
;&nbsp; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 238 MBytes&nbsp;&nbsp; 199 Mbits/s=
ec&nbsp; 119&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 7]&nbsp=
;&nbsp; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 234 MBytes&nbsp;&nbsp; 196 Mbits/s=
ec&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 9]&nbsp=
;&nbsp; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 166 MBytes&nbsp;&nbsp; 139 Mbits/s=
ec&nbsp; 207&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 9]&nbsp=
;&nbsp; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 162 MBytes&nbsp;&nbsp; 136 Mbits/s=
ec&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ 11]&nbsp;&nbs=
p; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 222 MBytes&nbsp;&nbsp; 186 Mbits/sec&nb=
sp; 316&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ 11]&nbsp;&nbs=
p; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 219 MBytes&nbsp;&nbsp; 184 Mbits/sec&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ 13]&nbsp;&nbs=
p; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 225 MBytes&nbsp;&nbsp; 189 Mbits/sec&nb=
sp; 138&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ 13]&nbsp;&nbs=
p; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 222 MBytes&nbsp;&nbsp; 186 Mbits/sec&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[SUM]&nbsp;&nbs=
p; 0.00-10.02&nbsp; sec&nbsp; 1.08 GBytes&nbsp;&nbsp; 927 Mbits/sec&nbsp; 9=
08&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[SUM]&nbsp;&nbs=
p; 0.00-10.00&nbsp; sec&nbsp; 1.06 GBytes&nbsp;&nbsp; 913 Mbits/sec&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas"><o:p>&nbsp;</o:=
p></span></p>
<p class=3D"MsoNormal"><b>3.8.4-NAPI w/ TSO &amp; GSO<o:p></o:p></b></p>
<p class=3D"MsoNormal"><b><o:p>&nbsp;</o:p></b></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">iperf3 -c bouyg=
ues.iperf.fr -d -P 5<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas"><o:p>&nbsp;</o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ ID] Interval&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Transfer&nbsp;&=
nbsp;&nbsp;&nbsp; Bitrate&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; R=
etr<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 5]&nbsp=
;&nbsp; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 120 MBytes&nbsp;&nbsp; 100 Mbits/s=
ec&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 5]&nbsp=
;&nbsp; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 117 MBytes&nbsp; 97.5 Mbits/sec&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 7]&nbsp=
;&nbsp; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 115 MBytes&nbsp; 96.4 Mbits/sec&nb=
sp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 7]&nbsp=
;&nbsp; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 114 MBytes&nbsp; 95.1 Mbits/sec&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 9]&nbsp=
;&nbsp; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 118 MBytes&nbsp; 98.9 Mbits/sec&nb=
sp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 9]&nbsp=
;&nbsp; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 117 MBytes&nbsp; 97.6 Mbits/sec&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ 11]&nbsp;&nbs=
p; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 118 MBytes&nbsp; 99.3 Mbits/sec&nbsp;&n=
bsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ 11]&nbsp;&nbs=
p; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 117 MBytes&nbsp; 97.5 Mbits/sec&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ 13]&nbsp;&nbs=
p; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 118 MBytes&nbsp; 99.3 Mbits/sec&nbsp;&n=
bsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ 13]&nbsp;&nbs=
p; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 116 MBytes&nbsp; 97.5 Mbits/sec&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[SUM]&nbsp;&nbs=
p; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 589 MBytes&nbsp;&nbsp; 494 Mbits/sec&nb=
sp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[SUM]&nbsp;&nbs=
p; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 580 MBytes&nbsp;&nbsp; 485 Mbits/sec&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas"><o:p>&nbsp;</o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">iperf3 -c bouyg=
ues.iperf.fr -d -P 5 -R<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas"><o:p>&nbsp;</o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ ID] Interval&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Transfer&nbsp;&=
nbsp;&nbsp;&nbsp; Bitrate&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; R=
etr<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 5]&nbsp=
;&nbsp; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 289 MBytes&nbsp;&nbsp; 241 Mbits/s=
ec&nbsp; 187&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 5]&nbsp=
;&nbsp; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 282 MBytes&nbsp;&nbsp; 236 Mbits/s=
ec&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 7]&nbsp=
;&nbsp; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 355 MBytes&nbsp;&nbsp; 297 Mbits/s=
ec&nbsp; 324&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 7]&nbsp=
;&nbsp; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 350 MBytes&nbsp;&nbsp; 293 Mbits/s=
ec&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 9]&nbsp=
;&nbsp; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 144 MBytes&nbsp;&nbsp; 121 Mbits/s=
ec&nbsp; 239&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 9]&nbsp=
;&nbsp; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 141 MBytes&nbsp;&nbsp; 118 Mbits/s=
ec&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ 11]&nbsp;&nbs=
p; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 136 MBytes&nbsp;&nbsp; 113 Mbits/sec&nb=
sp; 286&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ 11]&nbsp;&nbs=
p; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 133 MBytes&nbsp;&nbsp; 111 Mbits/sec&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ 13]&nbsp;&nbs=
p; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 188 MBytes&nbsp;&nbsp; 157 Mbits/sec&nb=
sp; 156&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ 13]&nbsp;&nbs=
p; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 185 MBytes&nbsp;&nbsp; 155 Mbits/sec&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[SUM]&nbsp;&nbs=
p; 0.00-10.02&nbsp; sec&nbsp; 1.09 GBytes&nbsp;&nbsp; 930 Mbits/sec&nbsp; 1=
192&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[SUM]&nbsp;&nbs=
p; 0.00-10.00&nbsp; sec&nbsp; 1.06 GBytes&nbsp;&nbsp; 914 Mbits/sec&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas"><o:p>&nbsp;</o:=
p></span></p>
<p class=3D"MsoNormal"><b>3.8.4-NAPI w/o TSO &amp; GSO<o:p></o:p></b></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas"><o:p>&nbsp;</o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">iperf3 -c bouyg=
ues.iperf.fr -d -P 5<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas"><o:p>&nbsp;</o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ ID] Interval&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Transfer&nbsp;&=
nbsp;&nbsp;&nbsp; Bitrate&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; R=
etr<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 5]&nbsp=
;&nbsp; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 194 MBytes&nbsp;&nbsp; 163 Mbits/s=
ec&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 5]&nbsp=
;&nbsp; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 192 MBytes&nbsp;&nbsp; 160 Mbits/s=
ec&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 7]&nbsp=
;&nbsp; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 194 MBytes&nbsp;&nbsp; 163 Mbits/s=
ec&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 7]&nbsp=
;&nbsp; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 192 MBytes&nbsp;&nbsp; 160 Mbits/s=
ec&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 9]&nbsp=
;&nbsp; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 195 MBytes&nbsp;&nbsp; 163 Mbits/s=
ec&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 9]&nbsp=
;&nbsp; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 192 MBytes&nbsp;&nbsp; 160 Mbits/s=
ec&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ 11]&nbsp;&nbs=
p; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 195 MBytes&nbsp;&nbsp; 163 Mbits/sec&nb=
sp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ 11]&nbsp;&nbs=
p; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 192 MBytes&nbsp;&nbsp; 160 Mbits/sec&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ 13]&nbsp;&nbs=
p; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 195 MBytes&nbsp;&nbsp; 163 Mbits/sec&nb=
sp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ 13]&nbsp;&nbs=
p; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 192 MBytes&nbsp;&nbsp; 161 Mbits/sec&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[SUM]&nbsp;&nbs=
p; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 973 MBytes&nbsp;&nbsp; 816 Mbits/sec&nb=
sp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[SUM]&nbsp;&nbs=
p; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 958 MBytes&nbsp;&nbsp; 802 Mbits/sec&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas"><o:p>&nbsp;</o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">iperf3 -c bouyg=
ues.iperf.fr -d -P 5 -R<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas"><o:p>&nbsp;</o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ ID] Interval&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Transfer&nbsp;&=
nbsp;&nbsp;&nbsp; Bitrate&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; R=
etr<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 5]&nbsp=
;&nbsp; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 499 MBytes&nbsp;&nbsp; 418 Mbits/s=
ec&nbsp; 1208&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 5]&nbsp=
;&nbsp; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 487 MBytes&nbsp;&nbsp; 409 Mbits/s=
ec&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 7]&nbsp=
;&nbsp; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 149 MBytes&nbsp;&nbsp; 125 Mbits/s=
ec&nbsp; 262&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 7]&nbsp=
;&nbsp; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 146 MBytes&nbsp;&nbsp; 122 Mbits/s=
ec&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 9]&nbsp=
;&nbsp; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 158 MBytes&nbsp;&nbsp; 132 Mbits/s=
ec&nbsp; 199&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 9]&nbsp=
;&nbsp; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 154 MBytes&nbsp;&nbsp; 129 Mbits/s=
ec&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ 11]&nbsp;&nbs=
p; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 179 MBytes&nbsp;&nbsp; 149 Mbits/sec&nb=
sp; 209&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ 11]&nbsp;&nbs=
p; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 175 MBytes&nbsp;&nbsp; 147 Mbits/sec&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ 13]&nbsp;&nbs=
p; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 128 MBytes&nbsp;&nbsp; 107 Mbits/sec&nb=
sp; 386&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ 13]&nbsp;&nbs=
p; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 125 MBytes&nbsp;&nbsp; 105 Mbits/sec&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[SUM]&nbsp;&nbs=
p; 0.00-10.02&nbsp; sec&nbsp; 1.09 GBytes&nbsp;&nbsp; 931 Mbits/sec&nbsp; 2=
264&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[SUM]&nbsp;&nbs=
p; 0.00-10.00&nbsp; sec&nbsp; 1.06 GBytes&nbsp;&nbsp; 912 Mbits/sec&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas"><o:p>&nbsp;</o:=
p></span></p>
<p class=3D"MsoNormal"><b>3.8.4-NAPI w/ TSO &amp; GSO (Without buffer overr=
un patch)<o:p></o:p></b></p>
<p class=3D"MsoNormal"><b><o:p>&nbsp;</o:p></b></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">iperf3 -c bouyg=
ues.iperf.fr -d -P 5<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas"><o:p>&nbsp;</o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ ID] Interval&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Transfer&nbsp;&=
nbsp;&nbsp;&nbsp; Bitrate&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; R=
etr<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 5]&nbsp=
;&nbsp; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 204 MBytes&nbsp;&nbsp; 171 Mbits/s=
ec&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 5]&nbsp=
;&nbsp; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 201 MBytes&nbsp;&nbsp; 169 Mbits/s=
ec&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 7]&nbsp=
;&nbsp; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 203 MBytes&nbsp;&nbsp; 170 Mbits/s=
ec&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 7]&nbsp=
;&nbsp; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 201 MBytes&nbsp;&nbsp; 168 Mbits/s=
ec&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 9]&nbsp=
;&nbsp; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 205 MBytes&nbsp;&nbsp; 172 Mbits/s=
ec&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 9]&nbsp=
;&nbsp; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 202 MBytes&nbsp;&nbsp; 169 Mbits/s=
ec&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ 11]&nbsp;&nbs=
p; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 204 MBytes&nbsp;&nbsp; 171 Mbits/sec&nb=
sp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ 11]&nbsp;&nbs=
p; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 201 MBytes&nbsp;&nbsp; 169 Mbits/sec&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ 13]&nbsp;&nbs=
p; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 204 MBytes&nbsp;&nbsp; 171 Mbits/sec&nb=
sp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ 13]&nbsp;&nbs=
p; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 200 MBytes&nbsp;&nbsp; 168 Mbits/sec&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[SUM]&nbsp;&nbs=
p; 0.00-10.00&nbsp; sec&nbsp; 1019 MBytes&nbsp;&nbsp; 855 Mbits/sec&nbsp;&n=
bsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[SUM]&nbsp;&nbs=
p; 0.00-10.02&nbsp; sec&nbsp; 1006 MBytes&nbsp;&nbsp; 842 Mbits/sec&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas"><o:p>&nbsp;</o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">iperf3 -c bouyg=
ues.iperf.fr -d -P 5 -R<o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><o:p>&nbsp;</o:p></b></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 5]&nbsp=
;&nbsp; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 281 MBytes&nbsp;&nbsp; 235 Mbits/s=
ec&nbsp; 128&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 5]&nbsp=
;&nbsp; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 277 MBytes&nbsp;&nbsp; 232 Mbits/s=
ec&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 7]&nbsp=
;&nbsp; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 267 MBytes&nbsp;&nbsp; 223 Mbits/s=
ec&nbsp; 154&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 7]&nbsp=
;&nbsp; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 263 MBytes&nbsp;&nbsp; 221 Mbits/s=
ec&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 9]&nbsp=
;&nbsp; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 170 MBytes&nbsp;&nbsp; 142 Mbits/s=
ec&nbsp; 154&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 9]&nbsp=
;&nbsp; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 166 MBytes&nbsp;&nbsp; 139 Mbits/s=
ec&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ 11]&nbsp;&nbs=
p; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 161 MBytes&nbsp;&nbsp; 135 Mbits/sec&nb=
sp; 211&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ 11]&nbsp;&nbs=
p; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 158 MBytes&nbsp;&nbsp; 132 Mbits/sec&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ 13]&nbsp;&nbs=
p; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 219 MBytes&nbsp;&nbsp; 183 Mbits/sec&nb=
sp; 116&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ 13]&nbsp;&nbs=
p; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 216 MBytes&nbsp;&nbsp; 181 Mbits/sec&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[SUM]&nbsp;&nbs=
p; 0.00-10.02&nbsp; sec&nbsp; 1.07 GBytes&nbsp;&nbsp; 919 Mbits/sec&nbsp; 7=
63&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[SUM]&nbsp;&nbs=
p; 0.00-10.00&nbsp; sec&nbsp; 1.05 GBytes&nbsp;&nbsp; 906 Mbits/sec&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; &nbsp;&nbsp;&nbsp;receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas"><o:p>&nbsp;</o:=
p></span></p>
<p class=3D"MsoNormal"><b>3.8.4-NAPI w/o TSO &amp; GSO (Without buffer over=
run patch)<o:p></o:p></b></p>
<p class=3D"MsoNormal"><b><o:p>&nbsp;</o:p></b></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">iperf3 -c bouyg=
ues.iperf.fr -d -P 5<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas"><o:p>&nbsp;</o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ ID] Interval&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Transfer&nbsp;&=
nbsp;&nbsp;&nbsp; Bitrate&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; R=
etr<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 5]&nbsp=
;&nbsp; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 220 MBytes&nbsp;&nbsp; 184 Mbits/s=
ec&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 5]&nbsp=
;&nbsp; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 218 MBytes&nbsp;&nbsp; 182 Mbits/s=
ec&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 7]&nbsp=
;&nbsp; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 220 MBytes&nbsp;&nbsp; 185 Mbits/s=
ec&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 7]&nbsp=
;&nbsp; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 217 MBytes&nbsp;&nbsp; 182 Mbits/s=
ec&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 9]&nbsp=
;&nbsp; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 216 MBytes&nbsp;&nbsp; 182 Mbits/s=
ec&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 9]&nbsp=
;&nbsp; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 213 MBytes&nbsp;&nbsp; 179 Mbits/s=
ec&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ 11]&nbsp;&nbs=
p; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 220 MBytes&nbsp;&nbsp; 185 Mbits/sec&nb=
sp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ 11]&nbsp;&nbs=
p; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 218 MBytes&nbsp;&nbsp; 182 Mbits/sec&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ 13]&nbsp;&nbs=
p; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 221 MBytes&nbsp;&nbsp; 185 Mbits/sec&nb=
sp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ 13]&nbsp;&nbs=
p; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 218 MBytes&nbsp;&nbsp; 182 Mbits/sec&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[SUM]&nbsp;&nbs=
p; 0.00-10.00&nbsp; sec&nbsp; 1.07 GBytes&nbsp;&nbsp; 920 Mbits/sec&nbsp;&n=
bsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[SUM]&nbsp;&nbs=
p; 0.00-10.02&nbsp; sec&nbsp; 1.06 GBytes&nbsp;&nbsp; 907 Mbits/sec&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas"><o:p>&nbsp;</o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">iperf3 -c bouyg=
ues.iperf.fr -d -P 5 -R<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas"><o:p>&nbsp;</o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ ID] Interval&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Transfer&nbsp;&=
nbsp;&nbsp;&nbsp; Bitrate&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; R=
etr<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 5]&nbsp=
;&nbsp; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 259 MBytes&nbsp;&nbsp; 217 Mbits/s=
ec&nbsp;&nbsp; 67&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 5]&nbsp=
;&nbsp; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 255 MBytes&nbsp;&nbsp; 214 Mbits/s=
ec&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 7]&nbsp=
;&nbsp; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 256 MBytes&nbsp;&nbsp; 214 Mbits/s=
ec&nbsp; 168&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 7]&nbsp=
;&nbsp; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 252 MBytes&nbsp;&nbsp; 212 Mbits/s=
ec&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 9]&nbsp=
;&nbsp; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 260 MBytes&nbsp;&nbsp; 217 Mbits/s=
ec&nbsp; 189&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[&nbsp; 9]&nbsp=
;&nbsp; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 256 MBytes&nbsp;&nbsp; 215 Mbits/s=
ec&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ 11]&nbsp;&nbs=
p; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 165 MBytes&nbsp;&nbsp; 138 Mbits/sec&nb=
sp; 237&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ 11]&nbsp;&nbs=
p; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 161 MBytes&nbsp;&nbsp; 135 Mbits/sec&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ 13]&nbsp;&nbs=
p; 0.00-10.02&nbsp; sec&nbsp;&nbsp; 172 MBytes&nbsp;&nbsp; 144 Mbits/sec&nb=
sp; 220&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[ 13]&nbsp;&nbs=
p; 0.00-10.00&nbsp; sec&nbsp;&nbsp; 169 MBytes&nbsp;&nbsp; 142 Mbits/sec&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[SUM]&nbsp;&nbs=
p; 0.00-10.02&nbsp; sec&nbsp; 1.08 GBytes&nbsp;&nbsp; 930 Mbits/sec&nbsp; 8=
81&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
sender<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">[SUM]&nbsp;&nbs=
p; 0.00-10.00&nbsp; sec&nbsp; 1.07 GBytes&nbsp;&nbsp; 917 Mbits/sec&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; receiver<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_SJ0PR07MB7584B6DC5998006092D4D8859C7C0SJ0PR07MB7584namp_--

--===============7587742109962883969==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============7587742109962883969==--
