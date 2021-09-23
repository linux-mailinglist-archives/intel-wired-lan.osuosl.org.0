Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A9DAC416864
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Sep 2021 01:16:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2356B4078C;
	Thu, 23 Sep 2021 23:16:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qQYH8Za50z1i; Thu, 23 Sep 2021 23:16:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 17C5D40770;
	Thu, 23 Sep 2021 23:16:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 71DB41BF2F6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Sep 2021 23:16:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6C7E740770
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Sep 2021 23:16:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lv-t5QuSw3M3 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Sep 2021 23:16:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D3C2A40747
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Sep 2021 23:16:13 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 56AA660E05;
 Thu, 23 Sep 2021 23:16:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632438973;
 bh=/ffRospjLf6815nzAX4J5r7pcOyGGKeM5iEwxXNbnZc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bVYYU2E4Ra2vKENV7uGbE5hTrseofLy5junHt7TELSxNeYh04XVq8eliin1OQDntW
 rnIHqOkMYOCVQ4lDd7zcyIjVNlCElnsDxAf0PMxkHsC3sDQXDv1Dm75JKUk9jDD2r4
 8sBW2vPWJkr1w0potE2PF1dcoiULy/awynRFT+5odYCliCseTMn7RQLsqTPsksuAAv
 bYs8tqMffWKpg5NjeK4SVpfC99hUz4pB6eMQ9zvCut+RGfs90jnoQueEWNhefxsFI+
 RmsDirQugKJfOip4CgihOzpRxjdNlEAHoe5WMFTEztsZydp0nnjyXoEvqkxCE1GHj8
 tAqh+94otEF3Q==
Date: Fri, 24 Sep 2021 02:16:09 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <YU0KubuG03l8isms@unreal>
References: <cover.1632420430.git.leonro@nvidia.com>
 <20210923155547.248ab1aa@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210923155547.248ab1aa@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/6] Batch of devlink related
 fixes
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
Cc: Igor Russkikh <irusskikh@marvell.com>, Alexander Lobakin <alobakin@pm.me>,
 Javed Hasan <jhasan@marvell.com>,
 Michal Kalderon <michal.kalderon@marvell.com>, linux-scsi@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Jiri Pirko <jiri@nvidia.com>, Ariel Elior <aelior@marvell.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 Vasundhara Volam <vasundhara-v.volam@broadcom.com>,
 Sathya Perla <sathya.perla@broadcom.com>,
 Michael Chan <michael.chan@broadcom.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Saurav Kashyap <skashyap@marvell.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, GR-QLogic-Storage-Upstream@marvell.com,
 "David S . Miller" <davem@davemloft.net>, GR-everest-linux-l2@marvell.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVGh1LCBTZXAgMjMsIDIwMjEgYXQgMDM6NTU6NDdQTSAtMDcwMCwgSmFrdWIgS2ljaW5za2kg
d3JvdGU6Cj4gT24gVGh1LCAyMyBTZXAgMjAyMSAyMToxMjo0NyArMDMwMCBMZW9uIFJvbWFub3Zz
a3kgd3JvdGU6Cj4gPiBJJ20gYXNraW5nIHRvIGFwcGx5IHRoaXMgYmF0Y2ggb2YgZGV2bGluayBm
aXhlcyB0byBuZXQtbmV4dCBhbmQgbm90IHRvCj4gPiBuZXQsIGJlY2F1c2UgbW9zdCBpZiBub3Qg
YWxsIGZpeGVzIGFyZSBmb3Igb2xkIGNvZGUgb3IvYW5kIGNhbiBiZSBjb25zaWRlcmVkCj4gPiBh
cyBjbGVhbnVwLgo+ID4gCj4gPiBJdCB3aWxsIGNhbmNlbCB0aGUgbmVlZCB0byBkZWFsIHdpdGgg
bWVyZ2UgY29uZmxpY3RzIGZvciBteSBuZXh0IGRldmxpbmsgc2VyaWVzIDopLgo+IAo+IE5vdCBz
dXJlIGhvdyBEYXZlIHdpbGwgZmVlbCBhYm91dCBhZGRpbmcgZml4ZXMgdG8gbmV0LW5leHQsCj4g
d2UgZG8gbWVyZ2UgdGhlIHRyZWVzIHdlZWtseSBhZnRlciBhbGwuCgpNeSBhbG1vc3QgcmVhZHkg
c3VibWlzc2lvbiBxdWV1ZSBpczoK4p6cICBrZXJuZWwgZ2l0OihtL2RldmxpbmspIGdpdCBsCjY5
M2MxYTlhYzViMyAoSEVBRCAtPiBtL2RldmxpbmspIGRldmxpbms6IERlbGV0ZSByZWxvYWQgZW5h
YmxlL2Rpc2FibGUgaW50ZXJmYWNlCjZkMzkzNTRmOGI0NCBuZXQvbWx4NTogUmVnaXN0ZXIgc2Vw
YXJhdGUgcmVsb2FkIGRldmxpbmsgb3BzIGZvciBtdWx0aXBvcnQgZGV2aWNlCjFhYzRlODgxMWZk
NSBkZXZsaW5rOiBBbGxvdyBzZXQgc3BlY2lmaWMgb3BzIGNhbGxiYWNrcyBkeW5hbWljYWxseQpk
ZTE4NDlkM2IzNDggZGV2bGluazogQWxsb3cgbW9kaWZpY2F0aW9uIG9mIGRldmxpbmsgb3BzCjc0
MzlhNDVkY2U3MiBuZXQ6IGRzYTogTW92ZSBkZXZsaW5rIHJlZ2lzdHJhdGlvbiB0byBiZSBsYXN0
IGRldmxpbmsgY29tbWFuZAo3ZGQyM2EzMjczOTUgc3RhZ2luZzogcWxnZTogTW92ZSBkZXZsaW5r
IHJlZ2lzdHJhdGlvbiB0byBiZSBsYXN0IGRldmxpbmsgY29tbWFuZAo3N2YwNzRjOThiMGQgcHRw
OiBvY3A6IE1vdmUgZGV2bGluayByZWdpc3RyYXRpb24gdG8gYmUgbGFzdCBkZXZsaW5rIGNvbW1h
bmQKZmIzZjRkNDBhZDQ5IG5ldDogd3dhbjogaW9zbTogTW92ZSBkZXZsaW5rX3JlZ2lzdGVyIHRv
IGJlIGxhc3QgZGV2bGluayBjb21tYW5kCjg3ZTk1ZWU5Mjc1YiBuZXRkZXZzaW06IE1vdmUgZGV2
bGluayByZWdpc3RyYXRpb24gdG8gYmUgbGFzdCBkZXZsaW5rIGNvbW1hbmQKNDE3MzIwNWFmMzk5
IG5ldDogZXRoZXJuZXQ6IHRpOiBNb3ZlIGRldmxpbmsgcmVnaXN0cmF0aW9uIHRvIGJlIGxhc3Qg
ZGV2bGluayBjb21tYW5kCmJjNjMzYTA3NTlmNiBxZWQ6IE1vdmUgZGV2bGluayByZWdpc3RyYXRp
b24gdG8gYmUgbGFzdCBkZXZsaW5rIGNvbW1hbmQKZWFkNGUyMDI3MTY0IGlvbmljOiBNb3ZlIGRl
dmxpbmsgcmVnaXN0cmF0aW9uIHRvIGJlIGxhc3QgZGV2bGluayBjb21tYW5kCmJjNTI3MmNjYzM3
OCBuZnA6IE1vdmUgZGVsaW5rX3JlZ2lzdGVyIHRvIGJlIGxhc3QgY29tbWFuZAphNjUyMWJmMTMz
ZDkgbmV0OiBtc2NjOiBvY2Vsb3Q6IGRlbGF5IGRldmxpbmsgcmVnaXN0cmF0aW9uIHRvIHRoZSBl
bmQKZTBjYTlhMjljYzIwIG1seHN3OiBjb3JlOiBSZWdpc3RlciBkZXZsaW5rIGluc3RhbmNlIGxh
c3QKNjgxYWMxNDU3NTE2IG5ldC9tbHg1OiBBY2NlcHQgZGV2bGluayB1c2VyIGlucHV0IGFmdGVy
IGRyaXZlciBpbml0aWFsaXphdGlvbiBjb21wbGV0ZQo5YjFhMmY0YWJhZWYgbmV0L21seDQ6IE1v
dmUgZGV2bGlua19yZWdpc3RlciB0byBiZSB0aGUgbGFzdCBpbml0aWFsaXphdGlvbiBjb21tYW5k
CmEzYjJkOWE5NWE1MSBuZXQvcHJlc3RlcmE6IFNwbGl0IGRldmxpbmsgYW5kIHRyYXBzIHJlZ2lz
dHJhdGlvbnMgdG8gc2VwYXJhdGUgcm91dGluZXMKYmJkZjQ4NDI0MzJmIG9jdGVvbnR4MjogTW92
ZSBkZXZsaW5rIHJlZ2lzdHJhdGlvbiB0byBiZSBsYXN0IGRldmxpbmsgY29tbWFuZAo1Mjk3ZTIz
ZjE5ZTkgaWNlOiBPcGVuIGRldmxpbmsgd2hlbiBkZXZpY2UgaXMgcmVhZHkKMThhZjc3YTk5Y2Vh
IG5ldDogaGluaWM6IE9wZW4gZGV2aWNlIGZvciB0aGUgdXNlciBhY2Nlc3Mgd2hlbiBpdCBpcyBy
ZWFkeQo5MWEwM2NkYzkyZTIgZHBhYTItZXRoOiBSZWdpc3RlciBkZXZsaW5rIGluc3RhbmNlIGF0
IHRoZSBlbmQgb2YgcHJvYmUKZGQ1YWY5ODRlNTNjIGxpcXVpZGlvOiBPdmVyY29tZSBtaXNzaW5n
IGRldmljZSBsb2NrIHByb3RlY3Rpb24gaW4gaW5pdC9yZW1vdmUgZmxvd3MKZWZlYTEwOWJhMzJl
IGJueHRfZW46IFJlZ2lzdGVyIGRldmxpbmsgaW5zdGFuY2UgYXQgdGhlIGVuZCBkZXZsaW5rIGNv
bmZpZ3VyYXRpb24KNmEyYjEzOWJjZjAxIGRldmxpbms6IE5vdGlmeSB1c2VycyB3aGVuIG9iamVj
dHMgYXJlIGFjY2Vzc2libGUKCisgYSBjb3VwbGUgb2YgcGF0Y2hlcyB0aGF0IHJlbW92ZXMgInB1
Ymxpc2hlZCIgZmllbGQgZnJvbSBkZXZsaW5rIHBhcmFtZXRlcnMKYW5kIGZpeCBvZiBvbGQgZGV2
bGluayBidWcgd2hlcmUgcGFyYW1ldGVycyB3ZXJlIG5ldGxpbmsgbm90aWZpY2F0aW9ucwp3ZXJl
IHNlbnQgdHdpY2UuCgpTbyBpdCB3aWxsIGJlIHZlcnkgaGVscGZ1bCB0byBrZWVwIHRoaXMgc2Vy
aWVzIGluIG5ldC1uZXh0LgoKPiAKPiBPdGhlcndpc2UgdGhlIHBhdGNoZXMgbG9vayBmaW5lLgoK
VGhhbmtzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0
dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
