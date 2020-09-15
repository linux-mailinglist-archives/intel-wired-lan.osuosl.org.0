Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B65E6269ED0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Sep 2020 08:48:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 37DF6204D7;
	Tue, 15 Sep 2020 06:48:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3am9zYVy+YwO; Tue, 15 Sep 2020 06:48:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BCBFF20497;
	Tue, 15 Sep 2020 06:48:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3B4BA1BF2C5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Sep 2020 06:48:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 32292870A0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Sep 2020 06:48:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IJDExmLTd+yQ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Sep 2020 06:48:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 770E38709D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Sep 2020 06:48:16 +0000 (UTC)
IronPort-SDR: 0KpCClvFvjY3EeFH4lwpVnu3mDZ8Pvm7OoRwFIu+1cF5vmQbX3C5w7LLtvEi7H9+Ppw+D9ktN3
 r2/NZtqwh2lg==
X-IronPort-AV: E=McAfee;i="6000,8403,9744"; a="177276550"
X-IronPort-AV: E=Sophos;i="5.76,428,1592895600"; d="scan'208";a="177276550"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2020 23:48:12 -0700
IronPort-SDR: EbmrIu9kC7ANBIyieM976NAGakPTJQJ6MtfCe6Sm8D2Gpc2MiF4KqYO5J8RKQyolNaqYvXIpnv
 UxcZG4lqpGeg==
X-IronPort-AV: E=Sophos;i="5.76,428,1592895600"; d="scan'208";a="482645947"
Received: from unknown (HELO [10.185.168.216]) ([10.185.168.216])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2020 23:48:09 -0700
To: Paul Menzel <pmenzel@molgen.mpg.de>, intel-wired-lan@lists.osuosl.org
References: <20191010101539.37043-1-sasha.neftin@intel.com>
 <b97d6390-2226-ef51-d87b-736aa6e7189a@molgen.mpg.de>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <292c4e24-9efb-0057-6d50-2b8c72456215@intel.com>
Date: Tue, 15 Sep 2020 09:48:06 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <b97d6390-2226-ef51-d87b-736aa6e7189a@molgen.mpg.de>
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

T24gOS8xNC8yMDIwIDEwOjM1LCBQYXVsIE1lbnplbCB3cm90ZToKPiBEZWFyIFNhc2hhLCBkZWFy
IEplZmYsCj4gCj4gCj4gQW0gMTAuMTAuMTkgdW0gMTI6MTUgc2NocmllYiBTYXNoYSBOZWZ0aW46
Cj4+IEFkZCBkZXZpY2VzIElEJ3MgZm9yIHRoZSBuZXh0IExPTSBnZW5lcmF0aW9ucyB0aGF0IHdp
bGwgYmUKPj4gYXZhaWxhYmxlIG9uIHRoZSBuZXh0IEludGVsIENsaWVudCBwbGF0Zm9ybSAoQ29t
ZXQgTGFrZSkKPj4gVGhpcyBwYXRjaCBwcm92aWRlcyB0aGUgaW5pdGlhbCBzdXBwb3J0IGZvciB0
aGVzZSBkZXZpY2VzCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFNhc2hhIE5lZnRpbiA8c2FzaGEubmVm
dGluQGludGVsLmNvbT4KPj4gLS0tCj4+IMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2Ux
MDAwZS9ody5owqDCoMKgwqAgfCA2ICsrKysrKwo+PiDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9lMTAwMGUvbmV0ZGV2LmMgfCA2ICsrKysrKwo+PiDCoCAyIGZpbGVzIGNoYW5nZWQsIDEy
IGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2UxMDAwZS9ody5oIAo+PiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9o
dy5oCj4+IGluZGV4IGVmZjc1YmQ4YThmMC4uMTFmZGMyN2ZhYTgyIDEwMDY0NAo+PiAtLS0gYS9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvaHcuaAo+PiArKysgYi9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvaHcuaAo+PiBAQCAtODYsNiArODYsMTIgQEAgc3RydWN0
IGUxMDAwX2h3Owo+PiDCoCAjZGVmaW5lIEUxMDAwX0RFVl9JRF9QQ0hfSUNQX0kyMTlfVjjCoMKg
wqDCoMKgwqDCoCAweDE1RTAKPj4gwqAgI2RlZmluZSBFMTAwMF9ERVZfSURfUENIX0lDUF9JMjE5
X0xNOcKgwqDCoMKgwqDCoMKgIDB4MTVFMQo+PiDCoCAjZGVmaW5lIEUxMDAwX0RFVl9JRF9QQ0hf
SUNQX0kyMTlfVjnCoMKgwqDCoMKgwqDCoCAweDE1RTIKPj4gKyNkZWZpbmUgRTEwMDBfREVWX0lE
X1BDSF9DTVBfSTIxOV9MTTEwwqDCoMKgwqDCoMKgwqAgMHgwRDRFCj4+ICsjZGVmaW5lIEUxMDAw
X0RFVl9JRF9QQ0hfQ01QX0kyMTlfVjEwwqDCoMKgwqDCoMKgwqAgMHgwRDRGCj4+ICsjZGVmaW5l
IEUxMDAwX0RFVl9JRF9QQ0hfQ01QX0kyMTlfTE0xMcKgwqDCoMKgwqDCoMKgIDB4MEQ0Qwo+PiAr
I2RlZmluZSBFMTAwMF9ERVZfSURfUENIX0NNUF9JMjE5X1YxMcKgwqDCoMKgwqDCoMKgIDB4MEQ0
RAo+PiArI2RlZmluZSBFMTAwMF9ERVZfSURfUENIX0NNUF9JMjE5X0xNMTLCoMKgwqDCoMKgwqDC
oCAweDBENTMKPj4gKyNkZWZpbmUgRTEwMDBfREVWX0lEX1BDSF9DTVBfSTIxOV9WMTLCoMKgwqDC
oMKgwqDCoCAweDBENTUKPj4gwqAgI2RlZmluZSBFMTAwMF9SRVZJU0lPTl80wqDCoMKgIDQKPj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9uZXRkZXYuYyAK
Pj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvbmV0ZGV2LmMKPj4gaW5kZXgg
Y2M0MzYzZTY3MDcyLi4yZGVkZWVkNzRjZDQgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2UxMDAwZS9uZXRkZXYuYwo+PiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9lMTAwMGUvbmV0ZGV2LmMKPj4gQEAgLTc3NTMsNiArNzc1MywxMiBAQCBzdGF0aWMg
Y29uc3Qgc3RydWN0IHBjaV9kZXZpY2VfaWQgCj4+IGUxMDAwX3BjaV90YmxbXSA9IHsKPj4gwqDC
oMKgwqDCoCB7IFBDSV9WREVWSUNFKElOVEVMLCBFMTAwMF9ERVZfSURfUENIX0lDUF9JMjE5X1Y4
KSwgCj4+IGJvYXJkX3BjaF9jbnAgfSwKPj4gwqDCoMKgwqDCoCB7IFBDSV9WREVWSUNFKElOVEVM
LCBFMTAwMF9ERVZfSURfUENIX0lDUF9JMjE5X0xNOSksIAo+PiBib2FyZF9wY2hfY25wIH0sCj4+
IMKgwqDCoMKgwqAgeyBQQ0lfVkRFVklDRShJTlRFTCwgRTEwMDBfREVWX0lEX1BDSF9JQ1BfSTIx
OV9WOSksIAo+PiBib2FyZF9wY2hfY25wIH0sCj4+ICvCoMKgwqAgeyBQQ0lfVkRFVklDRShJTlRF
TCwgRTEwMDBfREVWX0lEX1BDSF9DTVBfSTIxOV9MTTEwKSwgCj4+IGJvYXJkX3BjaF9jbnAgfSwK
Pj4gK8KgwqDCoCB7IFBDSV9WREVWSUNFKElOVEVMLCBFMTAwMF9ERVZfSURfUENIX0NNUF9JMjE5
X1YxMCksIAo+PiBib2FyZF9wY2hfY25wIH0sCj4+ICvCoMKgwqAgeyBQQ0lfVkRFVklDRShJTlRF
TCwgRTEwMDBfREVWX0lEX1BDSF9DTVBfSTIxOV9MTTExKSwgCj4+IGJvYXJkX3BjaF9jbnAgfSwK
Pj4gK8KgwqDCoCB7IFBDSV9WREVWSUNFKElOVEVMLCBFMTAwMF9ERVZfSURfUENIX0NNUF9JMjE5
X1YxMSksIAo+PiBib2FyZF9wY2hfY25wIH0sCj4+ICvCoMKgwqAgeyBQQ0lfVkRFVklDRShJTlRF
TCwgRTEwMDBfREVWX0lEX1BDSF9DTVBfSTIxOV9MTTEyKSwgCj4+IGJvYXJkX3BjaF9zcHQgfSwK
Pj4gK8KgwqDCoCB7IFBDSV9WREVWSUNFKElOVEVMLCBFMTAwMF9ERVZfSURfUENIX0NNUF9JMjE5
X1YxMiksIAo+PiBib2FyZF9wY2hfc3B0IH0sCj4+IMKgwqDCoMKgwqAgeyAwLCAwLCAwLCAwLCAw
LCAwLCAwIH3CoMKgwqAgLyogdGVybWluYXRlIGxpc3QgKi8KPj4gwqAgfTsKPiAKPiBUaGlzIGxh
bmRlZCBpbiBMaW51eCA1LjUsIGFuZCB3ZSB3b3VsZCByZWFsbHkgbGlrZSB0byBzZWUgaXQgaW4g
dGhlIDUuNCAKPiBzdGFibGUgc2VyaWVzLiBBcyBpdOKAmXMganVzdCBhZGRpbmcgbmV3IFBDSSBk
ZXZpY2UgY29kZXMsIHRoaXMgc291bmRzIAo+IGVhc2lseSBkb2FibGUuCj4gCj4gV2hhdCBpcyB0
aGUgcHJvY2VzcyBvZiBnZXR0aW5nIGl0IGludG8gdGhlIHN0YWJsZSBzZXJpZXM/IEkgcmVtZW1i
ZXIgdGhlIAo+IG5ldCBzdWJzeXN0ZW0gaGF2aW5nIGEgZGlmZmVyZW50IHByb2Nlc3MgdGhhbiBq
dXN0IGFkZGluZyBgQ0M6IAo+IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmdgLCB3aGljaCBpcyB0b28g
bGF0ZSBmb3IgdGhpcyBhbnl3YXksIGFzIGl04oCZcyAKPiBhbHJlYWR5IGluIExpbnVz4oCZIG1h
c3RlciBicmFuY2guClRvbnksIGNhbiB5b3UgaGVscCBoZXJlPwooSWYgSSByZWNhbGwgY29ycmVj
dGx5IEdyZWcgS3JvYWgtSGFydG1hbiBvd24gdGhlIHN0YWJsZSB2ZXJzaW9uIGRvbWFpbikKPiAK
PiAKPiBLaW5kIHJlZ2FyZHMsCj4gCj4gUGF1bApfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdp
cmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLXdpcmVkLWxhbgo=
