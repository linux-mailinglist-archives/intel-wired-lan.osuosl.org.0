Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 58DF71A9570
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Apr 2020 10:03:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0F5158701E;
	Wed, 15 Apr 2020 08:03:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j8PBDNeykV3V; Wed, 15 Apr 2020 08:02:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 95A6A86EB2;
	Wed, 15 Apr 2020 08:02:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D5E3C1BF284
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2020 08:02:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C19FF2045E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2020 08:02:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0nQl25fkfLOP for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Apr 2020 08:02:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from unicom145.biz-email.net (unicom145.biz-email.net
 [210.51.26.145])
 by silver.osuosl.org (Postfix) with ESMTPS id 2915B20362
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2020 08:02:46 +0000 (UTC)
Received: from ([60.208.111.195])
 by unicom145.biz-email.net (Antispam) with ASMTP (SSL) id HMR20136;
 Wed, 15 Apr 2020 16:02:36 +0800
Received: from jtjnmail201605.home.langchao.com (10.100.2.5) by
 jtjnmail201604.home.langchao.com (10.100.2.4) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1591.10; Wed, 15 Apr 2020 16:02:35 +0800
Received: from jtjnmail201605.home.langchao.com ([fe80::8d20:4cc5:1116:d16e])
 by jtjnmail201605.home.langchao.com ([fe80::8d20:4cc5:1116:d16e%8])
 with mapi id 15.01.1591.008; Wed, 15 Apr 2020 16:02:35 +0800
From: =?gb2312?B?WWkgWWFuZyAo0e6gRCkt1Ma3/s7xvK/NxQ==?= <yangyi01@inspur.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: Anybody knows why Intel 82599ES 10Gb NIC has low small UDP
 packets forwarding performance?
Thread-Index: AdYS+MPnojF9oxncTGy4WAiVI2uUMg==
Importance: high
X-Priority: 1
Date: Wed, 15 Apr 2020 08:02:35 +0000
Message-ID: <f015337518734947a767c736a5dd3b03@inspur.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.100.1.52]
MIME-Version: 1.0
Subject: [Intel-wired-lan] Anybody knows why Intel 82599ES 10Gb NIC has low
 small UDP packets forwarding performance?
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
Content-Type: multipart/mixed; boundary="===============7566614184386386863=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============7566614184386386863==
Content-Language: zh-CN
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=SHA1; boundary="----=_NextPart_000_0020_01D6133F.468D2190"

------=_NextPart_000_0020_01D6133F.468D2190
Content-Type: text/plain;
	charset="gb2312"
Content-Transfer-Encoding: quoted-printable

Hi, guys

We find Intel 82599ES 10Gb NIC has low small UDP packets forwarding
performance, this also impacts on 16 bytes UDP pps(packet per second)
performance of VMs in Openstack environment, my NIC information is =
below:

$ ethtool -i ten1
driver: ixgbe
version: 5.6.5
firmware-version: 0x800003df
expansion-rom-version:
bus-info: 0000:06:00.0
supports-statistics: yes
supports-test: yes
supports-eeprom-access: yes
supports-register-dump: yes
supports-priv-flags: yes
$

On VMs,for 16 bytes UDP packets, maximum pps is about 180000 (I have =
tuned
irq affinity, VM is pinned to fixed CPU, it is scheduled on the same =
numa
node as NIC, so this has been a maximum possible value), we also tried
physical port to physical port pps performance in two physical machines,
that only can reach maximum pps 300000 (I have tried all the tuning =
ways).

But on my other servers which have Intel X710 10Gb NIC, the driver is =
i40e,
not ixgbe, it can reach 350000 pps for physical port to physical port =
case
without any extra tuning. In VxLAN case, for 32 bytes UDP packets, pps =
can
reach 200000 very easily, it doesn=A1=AFt need any extra tuning.

https://docs.openstack.org/developer/performance-docs/test_plans/tenant_n=
etw
orking/plan.html and
https://docs.openstack.org/developer/performance-docs/test_results/tenant=
_ne
tworking/neutron_vxlan_dvr_378/perl_l2/index.html#tcp show ixgbe driver =
also
can reach 200000 pps for 32 bytes UDP packet for VMs and VxLAN cases. It
doesn't mention which Intel Ethernet Controller is used.

Metric
               Min    Avg     Max
loss, %                4.09
jitter, ms              0.01
packets, pps 190320     199583  213660


My issue is anybody knows if 82599ES can reach 350000 pps for 16 bytes =
UDP
packets for physical port to physical port case (note: I mean iperf3
performance, I know DPDK can reach this).

BTW, I find 82599ES can support VxLAN TSO offload, the performance data =
is
good in case that VM MTU is configured to 8950 (our underlay MTU is =
9000),
both TCP and UDP performance can reach line speed.

------=_NextPart_000_0020_01D6133F.468D2190
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

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
SIb3DQMEAgIAgDAHBgUrDgMCBzAKBggqhkiG9w0DBzAdBgNVHQ4EFgQUwS9Wt2AmUPVKr98VTbaf
wjdIUXAwHwYDVR0jBBgwFoAUXlkDprRMWGCRTvYetaU5pjLBNWowgdEGA1UdHwSByTCBxjCBw6CB
wKCBvYaBumxkYXA6Ly8vQ049SU5TUFVSLUNBLENOPUpUQ0EyMDEyLENOPUNEUCxDTj1QdWJsaWMl
MjBLZXklMjBTZXJ2aWNlcyxDTj1TZXJ2aWNlcyxDTj1Db25maWd1cmF0aW9uLERDPWhvbWUsREM9
bGFuZ2NoYW8sREM9Y29tP2NlcnRpZmljYXRlUmV2b2NhdGlvbkxpc3Q/YmFzZT9vYmplY3RDbGFz
cz1jUkxEaXN0cmlidXRpb25Qb2ludDCBxAYIKwYBBQUHAQEEgbcwgbQwgbEGCCsGAQUFBzAChoGk
bGRhcDovLy9DTj1JTlNQVVItQ0EsQ049QUlBLENOPVB1YmxpYyUyMEtleSUyMFNlcnZpY2VzLENO
PVNlcnZpY2VzLENOPUNvbmZpZ3VyYXRpb24sREM9aG9tZSxEQz1sYW5nY2hhbyxEQz1jb20/Y0FD
ZXJ0aWZpY2F0ZT9iYXNlP29iamVjdENsYXNzPWNlcnRpZmljYXRpb25BdXRob3JpdHkwQwYDVR0R
BDwwOqAjBgorBgEEAYI3FAIDoBUME3lhbmd5aTAxQGluc3B1ci5jb22BE3lhbmd5aTAxQGluc3B1
ci5jb20wDQYJKoZIhvcNAQELBQADggEBAApWKZfwQ5Gbpv3Pg2mJyUz8jhno5OBy2Hdku/euDQfD
aOOPsUxsvr8ZnWU03E9rwTAHgD9oB10Oe27CNeS6G/kqJubOZt5Emrw9EJBA6NMz4GLZYPmm82ph
l+1iajL8+U2fINJbqvTlj9Dv0VOzW+952fk9K5JiArDhWskKRLnO31YAESFfUUKaHe54l2u+2+cn
MeuQyyNOGXu2zT0XicYRUsZBOCisXzLD6I9/LgyBcqWcpLBdRK1JdO/oih2/uznyWUp1pCvpi89r
SmyUUdbfFd/FN0j8Qok4ZdKwoHNj3oi+vLaN8SHmUNHISOuUZyWcmfVzd7c5ydIDB9nQiHoxggOT
MIIDjwIBATBwMFkxEzARBgoJkiaJk/IsZAEZFgNjb20xGDAWBgoJkiaJk/IsZAEZFghsYW5nY2hh
bzEUMBIGCgmSJomT8ixkARkWBGhvbWUxEjAQBgNVBAMTCUlOU1BVUi1DQQITfgAAPxhfXKY27C7W
sQAAAAA/GDAJBgUrDgMCGgUAoIIB+DAYBgkqhkiG9w0BCQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3
DQEJBTEPFw0yMDA0MTUwODAyMzRaMCMGCSqGSIb3DQEJBDEWBBRgx59PLbL4ZVc6DBtRyzX3mWP2
mTB/BgkrBgEEAYI3EAQxcjBwMFkxEzARBgoJkiaJk/IsZAEZFgNjb20xGDAWBgoJkiaJk/IsZAEZ
FghsYW5nY2hhbzEUMBIGCgmSJomT8ixkARkWBGhvbWUxEjAQBgNVBAMTCUlOU1BVUi1DQQITfgAA
PxhfXKY27C7WsQAAAAA/GDCBgQYLKoZIhvcNAQkQAgsxcqBwMFkxEzARBgoJkiaJk/IsZAEZFgNj
b20xGDAWBgoJkiaJk/IsZAEZFghsYW5nY2hhbzEUMBIGCgmSJomT8ixkARkWBGhvbWUxEjAQBgNV
BAMTCUlOU1BVUi1DQQITfgAAPxhfXKY27C7WsQAAAAA/GDCBkwYJKoZIhvcNAQkPMYGFMIGCMAsG
CWCGSAFlAwQBKjALBglghkgBZQMEARYwCgYIKoZIhvcNAwcwCwYJYIZIAWUDBAECMA4GCCqGSIb3
DQMCAgIAgDANBggqhkiG9w0DAgIBQDAHBgUrDgMCGjALBglghkgBZQMEAgMwCwYJYIZIAWUDBAIC
MAsGCWCGSAFlAwQCATANBgkqhkiG9w0BAQEFAASCAQAviJOdFdv0d75n/A9OI7LojqLLC/WPnqgY
RUD6NqCg0XU9Mz/VXJK0SAvs+X6NQN4SWgHKSaSk/5rD7kgUB+bmQGpqnDMdfzqL0u3uOF369mio
wTAUxI3RQwbV95a98T6P+BzFo0EvMEKvwEXWdMq5IbyMytH270w52coby76Ww4JuBrmSe+yymf9t
J4UnXBq0I4kQHuqMVtjaYeRe1mhZ5jzv72kuD6d6ByuySS0hCxLMdroKKpW/ER3Cl8ix102hQEpZ
6PAZReBNURwq/Irx0iC6FjmcEF6A8wqW8XAxjTNtdI6Xfi+INDozw1nZnsBtwEb/9miKikl2h20r
87lZAAAAAAAA

------=_NextPart_000_0020_01D6133F.468D2190--

--===============7566614184386386863==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============7566614184386386863==--
