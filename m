Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B82D26861F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Sep 2020 09:35:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3D3FD85AE9;
	Mon, 14 Sep 2020 07:35:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ves0nWsy2vpk; Mon, 14 Sep 2020 07:35:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CBFE58545B;
	Mon, 14 Sep 2020 07:35:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5F60C1BF29D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Sep 2020 07:35:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 53E482010C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Sep 2020 07:35:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6i+o7cUXp9t5 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Sep 2020 07:35:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by silver.osuosl.org (Postfix) with ESMTPS id 3DA1720027
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Sep 2020 07:35:39 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5af04b.dynamic.kabel-deutschland.de
 [95.90.240.75])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 199CE20645E93;
 Mon, 14 Sep 2020 09:35:36 +0200 (CEST)
To: Sasha Neftin <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20191010101539.37043-1-sasha.neftin@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <b97d6390-2226-ef51-d87b-736aa6e7189a@molgen.mpg.de>
Date: Mon, 14 Sep 2020 09:35:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20191010101539.37043-1-sasha.neftin@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v1] e1000e: Add support for Comet Lake
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBTYXNoYSwgZGVhciBKZWZmLAoKCkFtIDEwLjEwLjE5IHVtIDEyOjE1IHNjaHJpZWIgU2Fz
aGEgTmVmdGluOgo+IEFkZCBkZXZpY2VzIElEJ3MgZm9yIHRoZSBuZXh0IExPTSBnZW5lcmF0aW9u
cyB0aGF0IHdpbGwgYmUKPiBhdmFpbGFibGUgb24gdGhlIG5leHQgSW50ZWwgQ2xpZW50IHBsYXRm
b3JtIChDb21ldCBMYWtlKQo+IFRoaXMgcGF0Y2ggcHJvdmlkZXMgdGhlIGluaXRpYWwgc3VwcG9y
dCBmb3IgdGhlc2UgZGV2aWNlcwo+IAo+IFNpZ25lZC1vZmYtYnk6IFNhc2hhIE5lZnRpbiA8c2Fz
aGEubmVmdGluQGludGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2UxMDAwZS9ody5oICAgICB8IDYgKysrKysrCj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9lMTAwMGUvbmV0ZGV2LmMgfCA2ICsrKysrKwo+ICAgMiBmaWxlcyBjaGFuZ2VkLCAxMiBpbnNl
cnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2Ux
MDAwZS9ody5oIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2h3LmgKPiBpbmRl
eCBlZmY3NWJkOGE4ZjAuLjExZmRjMjdmYWE4MiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9lMTAwMGUvaHcuaAo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2UxMDAwZS9ody5oCj4gQEAgLTg2LDYgKzg2LDEyIEBAIHN0cnVjdCBlMTAwMF9odzsKPiAg
ICNkZWZpbmUgRTEwMDBfREVWX0lEX1BDSF9JQ1BfSTIxOV9WOAkJMHgxNUUwCj4gICAjZGVmaW5l
IEUxMDAwX0RFVl9JRF9QQ0hfSUNQX0kyMTlfTE05CQkweDE1RTEKPiAgICNkZWZpbmUgRTEwMDBf
REVWX0lEX1BDSF9JQ1BfSTIxOV9WOQkJMHgxNUUyCj4gKyNkZWZpbmUgRTEwMDBfREVWX0lEX1BD
SF9DTVBfSTIxOV9MTTEwCQkweDBENEUKPiArI2RlZmluZSBFMTAwMF9ERVZfSURfUENIX0NNUF9J
MjE5X1YxMAkJMHgwRDRGCj4gKyNkZWZpbmUgRTEwMDBfREVWX0lEX1BDSF9DTVBfSTIxOV9MTTEx
CQkweDBENEMKPiArI2RlZmluZSBFMTAwMF9ERVZfSURfUENIX0NNUF9JMjE5X1YxMQkJMHgwRDRE
Cj4gKyNkZWZpbmUgRTEwMDBfREVWX0lEX1BDSF9DTVBfSTIxOV9MTTEyCQkweDBENTMKPiArI2Rl
ZmluZSBFMTAwMF9ERVZfSURfUENIX0NNUF9JMjE5X1YxMgkJMHgwRDU1Cj4gICAKPiAgICNkZWZp
bmUgRTEwMDBfUkVWSVNJT05fNAk0Cj4gICAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvZTEwMDBlL25ldGRldi5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
ZTEwMDBlL25ldGRldi5jCj4gaW5kZXggY2M0MzYzZTY3MDcyLi4yZGVkZWVkNzRjZDQgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL25ldGRldi5jCj4gKysr
IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL25ldGRldi5jCj4gQEAgLTc3NTMs
NiArNzc1MywxMiBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHBjaV9kZXZpY2VfaWQgZTEwMDBfcGNp
X3RibFtdID0gewo+ICAgCXsgUENJX1ZERVZJQ0UoSU5URUwsIEUxMDAwX0RFVl9JRF9QQ0hfSUNQ
X0kyMTlfVjgpLCBib2FyZF9wY2hfY25wIH0sCj4gICAJeyBQQ0lfVkRFVklDRShJTlRFTCwgRTEw
MDBfREVWX0lEX1BDSF9JQ1BfSTIxOV9MTTkpLCBib2FyZF9wY2hfY25wIH0sCj4gICAJeyBQQ0lf
VkRFVklDRShJTlRFTCwgRTEwMDBfREVWX0lEX1BDSF9JQ1BfSTIxOV9WOSksIGJvYXJkX3BjaF9j
bnAgfSwKPiArCXsgUENJX1ZERVZJQ0UoSU5URUwsIEUxMDAwX0RFVl9JRF9QQ0hfQ01QX0kyMTlf
TE0xMCksIGJvYXJkX3BjaF9jbnAgfSwKPiArCXsgUENJX1ZERVZJQ0UoSU5URUwsIEUxMDAwX0RF
Vl9JRF9QQ0hfQ01QX0kyMTlfVjEwKSwgYm9hcmRfcGNoX2NucCB9LAo+ICsJeyBQQ0lfVkRFVklD
RShJTlRFTCwgRTEwMDBfREVWX0lEX1BDSF9DTVBfSTIxOV9MTTExKSwgYm9hcmRfcGNoX2NucCB9
LAo+ICsJeyBQQ0lfVkRFVklDRShJTlRFTCwgRTEwMDBfREVWX0lEX1BDSF9DTVBfSTIxOV9WMTEp
LCBib2FyZF9wY2hfY25wIH0sCj4gKwl7IFBDSV9WREVWSUNFKElOVEVMLCBFMTAwMF9ERVZfSURf
UENIX0NNUF9JMjE5X0xNMTIpLCBib2FyZF9wY2hfc3B0IH0sCj4gKwl7IFBDSV9WREVWSUNFKElO
VEVMLCBFMTAwMF9ERVZfSURfUENIX0NNUF9JMjE5X1YxMiksIGJvYXJkX3BjaF9zcHQgfSwKPiAg
IAo+ICAgCXsgMCwgMCwgMCwgMCwgMCwgMCwgMCB9CS8qIHRlcm1pbmF0ZSBsaXN0ICovCj4gICB9
OwoKVGhpcyBsYW5kZWQgaW4gTGludXggNS41LCBhbmQgd2Ugd291bGQgcmVhbGx5IGxpa2UgdG8g
c2VlIGl0IGluIHRoZSA1LjQgCnN0YWJsZSBzZXJpZXMuIEFzIGl04oCZcyBqdXN0IGFkZGluZyBu
ZXcgUENJIGRldmljZSBjb2RlcywgdGhpcyBzb3VuZHMgCmVhc2lseSBkb2FibGUuCgpXaGF0IGlz
IHRoZSBwcm9jZXNzIG9mIGdldHRpbmcgaXQgaW50byB0aGUgc3RhYmxlIHNlcmllcz8gSSByZW1l
bWJlciB0aGUgCm5ldCBzdWJzeXN0ZW0gaGF2aW5nIGEgZGlmZmVyZW50IHByb2Nlc3MgdGhhbiBq
dXN0IGFkZGluZyBgQ0M6IApzdGFibGVAdmdlci5rZXJuZWwub3JnYCwgd2hpY2ggaXMgdG9vIGxh
dGUgZm9yIHRoaXMgYW55d2F5LCBhcyBpdOKAmXMgCmFscmVhZHkgaW4gTGludXPigJkgbWFzdGVy
IGJyYW5jaC4KCgpLaW5kIHJlZ2FyZHMsCgpQYXVsCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwt
d2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
