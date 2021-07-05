Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A8983BB7FD
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jul 2021 09:38:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3A1FB607B2;
	Mon,  5 Jul 2021 07:38:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8bX9Ggtt8v_K; Mon,  5 Jul 2021 07:38:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4E3E8607A3;
	Mon,  5 Jul 2021 07:38:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E70771BF334
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jul 2021 07:38:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D31BC607A3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jul 2021 07:38:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Mu-JqEvCkG-d for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jul 2021 07:38:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 36D30606E7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jul 2021 07:38:39 +0000 (UTC)
Received: from [222.129.38.159] (helo=[192.168.1.18])
 by youngberry.canonical.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <aaron.ma@canonical.com>)
 id 1m0JBc-0001cn-4h; Mon, 05 Jul 2021 07:38:36 +0000
To: "Neftin, Sasha" <sasha.neftin@intel.com>, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, davem@davemloft.net, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, "Edri, Michael" <michael.edri@intel.com>,
 "Ruinskiy, Dima" <dima.ruinskiy@intel.com>
References: <20210702045120.22855-1-aaron.ma@canonical.com>
 <20210702045120.22855-2-aaron.ma@canonical.com>
 <613e2106-940a-49ed-6621-0bb00bc7dca5@intel.com>
From: Aaron Ma <aaron.ma@canonical.com>
Message-ID: <ad3d2d01-1d0a-8887-b057-e6a9531a05f4@canonical.com>
Date: Mon, 5 Jul 2021 15:38:29 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <613e2106-940a-49ed-6621-0bb00bc7dca5@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH 2/2] igc: wait for the MAC copy when
 enabled MAC passthrough
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiA3LzQvMjEgMTozNiBQTSwgTmVmdGluLCBTYXNoYSB3cm90ZToKPiBPbiA3LzIvMjAyMSAw
Nzo1MSwgQWFyb24gTWEgd3JvdGU6Cj4+IFN1Y2ggYXMgZG9jayBob3QgcGx1ZyBldmVudCB3aGVu
IHJ1bnRpbWUsIGZvciBoYXJkd2FyZSBpbXBsZW1lbnRhdGlvbiwKPj4gdGhlIE1BQyBjb3B5IHRh
a2VzIGxlc3MgdGhhbiBvbmUgc2Vjb25kIHdoZW4gQklPUyBlbmFibGVkIE1BQyBwYXNzdGhyb3Vn
aC4KPj4gQWZ0ZXIgdGVzdCBvbiBMZW5vdm8gVEJUNCBkb2NrLCA2MDBtcyBpcyBlbm91Z2ggdG8g
dXBkYXRlIHRoZQo+PiBNQUMgYWRkcmVzcy4KPj4gT3RoZXJ3aXNlIGV0aGVybmV0IGZhaWxzIHRv
IHdvcmsuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEFhcm9uIE1hIDxhYXJvbi5tYUBjYW5vbmljYWwu
Y29tPgo+PiAtLS0KPj4gwqAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19tYWlu
LmMgfCAzICsrKwo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCj4+Cj4+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21haW4uYyBiL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfbWFpbi5jCj4+IGluZGV4IDYwNmI3MmNi
NjE5My4uYzhiYzVmMDg5MjU1IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pZ2MvaWdjX21haW4uYwo+PiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Z2MvaWdjX21haW4uYwo+PiBAQCAtNTQ2OCw2ICs1NDY4LDkgQEAgc3RhdGljIGludCBpZ2NfcHJv
YmUoc3RydWN0IHBjaV9kZXYgKnBkZXYsCj4+IMKgwqDCoMKgwqAgbWVtY3B5KCZody0+bWFjLm9w
cywgZWktPm1hY19vcHMsIHNpemVvZihody0+bWFjLm9wcykpOwo+PiDCoMKgwqDCoMKgIG1lbWNw
eSgmaHctPnBoeS5vcHMsIGVpLT5waHlfb3BzLCBzaXplb2YoaHctPnBoeS5vcHMpKTsKPj4gK8Kg
wqDCoCBpZiAocGNpX2lzX3RodW5kZXJib2x0X2F0dGFjaGVkKHBkZXYpID4gK8KgwqDCoMKgwqDC
oMKgIG1zbGVlcCg2MDApOwo+IEkgYmVsaWV2ZSBpdCBpcyBhIGJpdCBmcmFnaWxlLiBJIHdvdWxk
IHJlY29tbWVuZCBoZXJlIGxvb2sgZm9yIGFub3RoZXIgaW5kaWNhdGlvbiBpbnN0ZWFkIG9mIGRl
bGF5LiBDYW4gd2UgcG9sbCBmb3IgYSAncGNpX2NoYW5uZWxfaW9fbm9ybWFsJyBzdGF0ZT8gKGln
Yy0+cGRldi0+ZXJyb3Jfc3RhdGUgPT0gcGNpX2NoYW5uZWxfaW9fbm9ybWFsKQoKSGkgc2FzaGEs
CkluIHRoaXMgc2l0dWF0aW9uLCB0aGUgZXJyb3Jfc3RhdGUgaXMgYWx3YXlzIHBjaV9jaGFubmVs
X2lvX25vcm1hbC4KVGhlIGRlbGF5IGlzIG5lY2Vzc2FyeS4KClJlZmVyIHRvICI2MjcyMzktSW50
ZWzCriBFdGhlcm5ldCBDb250cm9sbGVyIEkyMjUtTUFDLUFkZHJlc3MtUGFzc3Rocm91Z2gtcmV2
MS4yIgpzZWN0aW9uICIzLjUKICBUaW1pbmcgQ29uc2lkZXJhdGlvbnMiOgoiRm9yIGhhcmR3YXJl
IGltcGxlbWVudGF0aW9uLAoKd2hlbiB0aGUgb3BlcmF0aW5nIHN5c3RlbSBpcyBhbHJlYWR5IHJ1
bm5pbmcsIHRoZSBNQUMgY29weSBtdXN0IGhhcHBlbiBub3QgbW9yZSB0aGFuIG9uZQoKc2Vjb25k
IGFmdGVyIFRCVCBsaW5rIGlzIGVzdGFibGlzaGVkLgp0aGUgSTIyNSBXaW5kb3dzIGRyaXZlciBw
cmV2ZW50cyB0aGUgb3BlcmF0aW5nCgpzeXN0ZW0gZnJvbSBkZXRlY3RpbmcgdGhlIEkyMjUgZm9y
IG9uZSBzZWNvbmQuIFRoaXMgYWxsb3dzIGVub3VnaCB0aW1lIGZvciBoYXJkd2FyZSB0byB1cGRh
dGUgdGhlCgpNQUMgYWRkcmVzcy4iCgpUaGFua3Mgc2FzaGEsCkFhcm9uCgo+PiArCj4+IMKgwqDC
oMKgwqAgLyogSW5pdGlhbGl6ZSBza2V3LXNwZWNpZmljIGNvbnN0YW50cyAqLwo+PiDCoMKgwqDC
oMKgIGVyciA9IGVpLT5nZXRfaW52YXJpYW50cyhodyk7Cj4+IMKgwqDCoMKgwqAgaWYgKGVycikK
Pj4KPiBUaGFua3MgQWFyb24sCj4gc2FzaGEKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJl
ZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC13aXJlZC1sYW4K
