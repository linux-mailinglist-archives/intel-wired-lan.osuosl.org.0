Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 313671AD42E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Apr 2020 03:36:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id ADB66861B5;
	Fri, 17 Apr 2020 01:36:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rPzdHACUFPnt; Fri, 17 Apr 2020 01:36:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B259485CDB;
	Fri, 17 Apr 2020 01:36:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 880F81BF3C5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2020 01:36:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7F00186995
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2020 01:36:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3Twk26cAoMAQ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Apr 2020 01:36:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from unicom145.biz-email.net (unicom145.biz-email.net
 [210.51.26.145])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 887D886838
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2020 01:36:39 +0000 (UTC)
Received: from ([60.208.111.195])
 by unicom145.biz-email.net (Antispam) with ASMTP (SSL) id JFB91533;
 Fri, 17 Apr 2020 09:36:33 +0800
Received: from jtjnmail201605.home.langchao.com (10.100.2.5) by
 jtjnmail201606.home.langchao.com (10.100.2.6) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1591.10; Fri, 17 Apr 2020 09:36:32 +0800
Received: from jtjnmail201605.home.langchao.com ([fe80::8d20:4cc5:1116:d16e])
 by jtjnmail201605.home.langchao.com ([fe80::8d20:4cc5:1116:d16e%8])
 with mapi id 15.01.1591.008; Fri, 17 Apr 2020 09:36:32 +0800
From: =?utf-8?B?WWkgWWFuZyAo5p2o54eaKS3kupHmnI3liqHpm4blm6I=?=
 <yangyi01@inspur.com>
To: "alexander.duyck@gmail.com" <alexander.duyck@gmail.com>
Thread-Topic: [Intel-wired-lan] Anybody knows why Intel 82599ES 10Gb NIC has
 low small UDP packets forwarding performance?
Thread-Index: AdYS+MPnojF9oxncTGy4WAiVI2uUMv//+bgA//7AmICAAwnVAP//BSNg
Importance: high
X-Priority: 1
Date: Fri, 17 Apr 2020 01:36:32 +0000
Message-ID: <5fe974cae1fd4841a092abc1369d0994@inspur.com>
References: <e640c125696a0a5395089846266c9146@sslemail.net>
 <CAKgT0UeKxrJr_GrcRR8igxNLAPoh9b=pYajozsL+b3==abhdBQ@mail.gmail.com>
 <d418667033b84bcdb23e57e4ea8ecd61@inspur.com>
 <CAKgT0UeaeQo1b1+yfiOZQG_GrGWGy5EX0QD+r4NxYJcmf-EjOA@mail.gmail.com>
In-Reply-To: <CAKgT0UeaeQo1b1+yfiOZQG_GrGWGy5EX0QD+r4NxYJcmf-EjOA@mail.gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.100.1.52]
MIME-Version: 1.0
Subject: [Intel-wired-lan] =?utf-8?b?562U5aSNOiAgQW55Ym9keSBrbm93cyB3aHkg?=
 =?utf-8?q?Intel_82599ES_10Gb_NIC_has_low_small_UDP_packets_forwarding_per?=
 =?utf-8?q?formance=3F?=
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: multipart/mixed; boundary="===============8358347608656483103=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============8358347608656483103==
Content-Language: zh-CN
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=SHA1; boundary="----=_NextPart_000_001D_01D6149B.AD0439B0"

------=_NextPart_000_001D_01D6149B.AD0439B0
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Here is my coalesce parameters, can you help provide what specific =
parameters can be tuned for this? It'll be better if you can give out =
specific command lines.

$ sudo ethtool -c ten1
Coalesce parameters for ten1:
Adaptive RX: off  TX: off
stats-block-usecs: 0
sample-interval: 0
pkt-rate-low: 0
pkt-rate-high: 0

rx-usecs: 1
rx-frames: 0
rx-usecs-irq: 0
rx-frames-irq: 0

tx-usecs: 0
tx-frames: 0
tx-usecs-irq: 0
tx-frames-irq: 256

rx-usecs-low: 0
rx-frame-low: 0
tx-usecs-low: 0
tx-frame-low: 0

rx-usecs-high: 0
rx-frame-high: 0
tx-usecs-high: 0
tx-frame-high: 0

$

-----=E9=82=AE=E4=BB=B6=E5=8E=9F=E4=BB=B6-----
=E5=8F=91=E4=BB=B6=E4=BA=BA: Alexander Duyck =
[mailto:alexander.duyck@gmail.com]=20
=E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4: 2020=E5=B9=B44=E6=9C=8817=E6=97=A5 =
2:36
=E6=94=B6=E4=BB=B6=E4=BA=BA: Yi Yang =
(=E6=9D=A8=E7=87=9A)-=E4=BA=91=E6=9C=8D=E5=8A=A1=E9=9B=86=E5=9B=A2 =
<yangyi01@inspur.com>
=E6=8A=84=E9=80=81: intel-wired-lan@lists.osuosl.org
=E4=B8=BB=E9=A2=98: Re: [Intel-wired-lan] Anybody knows why Intel =
82599ES 10Gb NIC has low small UDP packets forwarding performance?

When you say 16 byte UDP packets I assume you mean 16B of payload. So =
with 14B ethernet header, 20B of IP header, 8B UDP header, and I am =
assuming 2B of padding you are carrying a 60 byte packet when everything =
is said and done. From personal experience I can tell you that the =
adapter should be able to handle about 10Mpps or so per port with =
packets that size. I have done routing tests in the past with those sort =
of packets without any issue. However the overhead for those packets is =
significantly higher than standard packets as you end up having to =
perform operations per-packet where as with TCP you have the advantage =
of TSO so you have one large frame that the adapter will break up into =
smaller pieces.

With that said, have you tried running "perf top" on a system under test =
to see what hot spots there are? That might help to identify any issues.

I know one common one that can cause significant small packet =
performance regressions is having an IOMMU enabled on the system without =
using the kernel parameter "iommu=3Dpt". What can happen is that the DMA =
mapping will become a bottle-neck as each mapping will require using a =
resource lock on a table that is shared between all of the queues. You =
can probably run "dmesg | grep -i iommu" to see if anything pops up in =
your logs related to an IOMMU being enabled.

Other than that you might double check your interrupt moderation =
settings. You might start trying assigning manual delays via "ethtool =
-C" instead of allowing for dynamic rates to see if that has any effect.

Hope that helps.

- Alex

On Wed, Apr 15, 2020 at 7:25 PM Yi Yang =
(=E6=9D=A8=E7=87=9A)-=E4=BA=91=E6=9C=8D=E5=8A=A1=E9=9B=86=E5=9B=A2 =
<yangyi01@inspur.com> wrote:
>
> Thanks Alexander, but unfortunately, this NIC is integrated into =
motherboard, so we can't unplug it.
>
> I'm very sure it isn't PCIe bandwidth issue, because TCP and UDP =
performance are ok, only small UDP pps performance is bad. 16 bytes UDP =
packets won't consume too much bandwidth, 200Mbps is enough.
>
> -----=E9=82=AE=E4=BB=B6=E5=8E=9F=E4=BB=B6-----
> =E5=8F=91=E4=BB=B6=E4=BA=BA: Alexander Duyck =
[mailto:alexander.duyck@gmail.com]
> =E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4: =
2020=E5=B9=B44=E6=9C=8815=E6=97=A5 23:15
> =E6=94=B6=E4=BB=B6=E4=BA=BA: Yi Yang =
(=E6=9D=A8=E7=87=9A)-=E4=BA=91=E6=9C=8D=E5=8A=A1=E9=9B=86=E5=9B=A2 =
<yangyi01@inspur.com>
> =E6=8A=84=E9=80=81: intel-wired-lan@lists.osuosl.org
> =E4=B8=BB=E9=A2=98: Re: [Intel-wired-lan] Anybody knows why Intel =
82599ES 10Gb NIC has low small UDP packets forwarding performance?
>
> On Wed, Apr 15, 2020 at 1:03 AM Yi Yang =
(=E6=9D=A8=E7=87=9A)-=E4=BA=91=E6=9C=8D=E5=8A=A1=E9=9B=86=E5=9B=A2 =
<yangyi01@inspur.com> wrote:
> >
> > Hi, guys
> >
> > We find Intel 82599ES 10Gb NIC has low small UDP packets forwarding=20
> > performance, this also impacts on 16 bytes UDP pps(packet per=20
> > second) performance of VMs in Openstack environment, my NIC =
information is below:
> >
> > $ ethtool -i ten1
> > driver: ixgbe
> > version: 5.6.5
> > firmware-version: 0x800003df
> > expansion-rom-version:
> > bus-info: 0000:06:00.0
> > supports-statistics: yes
> > supports-test: yes
> > supports-eeprom-access: yes
> > supports-register-dump: yes
> > supports-priv-flags: yes
> > $
> >
> > On VMs,for 16 bytes UDP packets, maximum pps is about 180000 (I have =

> > tuned irq affinity, VM is pinned to fixed CPU, it is scheduled on=20
> > the same numa node as NIC, so this has been a maximum possible=20
> > value), we also tried physical port to physical port pps performance =

> > in two physical machines, that only can reach maximum pps 300000 (I =
have tried all the tuning ways).
> >
> > But on my other servers which have Intel X710 10Gb NIC, the driver=20
> > is i40e, not ixgbe, it can reach 350000 pps for physical port to=20
> > physical port case without any extra tuning. In VxLAN case, for 32=20
> > bytes UDP packets, pps can reach 200000 very easily, it =
doesn=E2=80=99t need any extra tuning.
> >
> > https://docs.openstack.org/developer/performance-docs/test_plans/ten
> > an
> > t_netw
> > orking/plan.html and
> > https://docs.openstack.org/developer/performance-docs/test_results/t
> > en ant_ne tworking/neutron_vxlan_dvr_378/perl_l2/index.html#tcp show =

> > ixgbe driver also can reach 200000 pps for 32 bytes UDP packet for=20
> > VMs and VxLAN cases. It doesn't mention which Intel Ethernet=20
> > Controller is used.
> >
> > Metric
> >                Min    Avg     Max
> > loss, %                4.09
> > jitter, ms              0.01
> > packets, pps 190320     199583  213660
> >
> >
> > My issue is anybody knows if 82599ES can reach 350000 pps for 16=20
> > bytes UDP packets for physical port to physical port case (note: I=20
> > mean
> > iperf3 performance, I know DPDK can reach this).
> >
> > BTW, I find 82599ES can support VxLAN TSO offload, the performance=20
> > data is good in case that VM MTU is configured to 8950 (our underlay =

> > MTU is 9000), both TCP and UDP performance can reach line speed.
>
> There could be a number of things going on. You might want to check =
your interrupt moderation settings, you might want to make sure you do =
not have an IOMMU enabled, you will want to make certain you have =
sufficient PCIe bandwidth as the X710 is a PCIe gen 3 part and 82599 is =
only gen2. You may want to double check to make sure the memory layout =
between the two systems is the same as memory can cause delays in packet =
throughput.
>
> My advice would be to see if you can swap the X710 and 82599 between =
two of your systems and see if the performance issues follow the card or =
the server. If it follows the server then you likely have something =
misconfigured on the server, if it follows the card then we could follow =
up with additional debugging.
>
> Thanks.
>
> - Alex

------=_NextPart_000_001D_01D6149B.AD0439B0
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
DQEJBTEPFw0yMDA0MTcwMTM2MzBaMCMGCSqGSIb3DQEJBDEWBBRuIOuWp98H8xe48/2Vk4orv41b
XjB/BgkrBgEEAYI3EAQxcjBwMFkxEzARBgoJkiaJk/IsZAEZFgNjb20xGDAWBgoJkiaJk/IsZAEZ
FghsYW5nY2hhbzEUMBIGCgmSJomT8ixkARkWBGhvbWUxEjAQBgNVBAMTCUlOU1BVUi1DQQITfgAA
PxhfXKY27C7WsQAAAAA/GDCBgQYLKoZIhvcNAQkQAgsxcqBwMFkxEzARBgoJkiaJk/IsZAEZFgNj
b20xGDAWBgoJkiaJk/IsZAEZFghsYW5nY2hhbzEUMBIGCgmSJomT8ixkARkWBGhvbWUxEjAQBgNV
BAMTCUlOU1BVUi1DQQITfgAAPxhfXKY27C7WsQAAAAA/GDCBkwYJKoZIhvcNAQkPMYGFMIGCMAsG
CWCGSAFlAwQBKjALBglghkgBZQMEARYwCgYIKoZIhvcNAwcwCwYJYIZIAWUDBAECMA4GCCqGSIb3
DQMCAgIAgDANBggqhkiG9w0DAgIBQDAHBgUrDgMCGjALBglghkgBZQMEAgMwCwYJYIZIAWUDBAIC
MAsGCWCGSAFlAwQCATANBgkqhkiG9w0BAQEFAASCAQBuTwc5Nnsfu9wJa82PDuRJ9pWYOzpj1ALz
Vfg26/IyL9/K1pNYAaR7izCbh3vi6b/mBvCbcnB9rFJbtgM/5F/BUVus+wviCUWwHT+RgAcBa9T7
AsLjcz2720h2pHOAoKWdUHf78+R3v+U+J/K0I2+EbidG0dPFgDSHpBWLo5ODZpXS8QFKj6uLm368
g1fKmepTdV6GcY/fITDEmkdlohsUVEEc6XXrusx5meu1X+1YIoq0WH33gebSkpX8B7r+Pi/VWHhk
7tJgVmP6qMyZjGP0vbMMvKKIzxIZK2WcQiJI/9n//Ib7Eo7kz1iB5YDSFRwOJc6PSFv7L/j8sS8S
Nk8WAAAAAAAA

------=_NextPart_000_001D_01D6149B.AD0439B0--

--===============8358347608656483103==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============8358347608656483103==--
