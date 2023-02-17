Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCA8F69A8B1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Feb 2023 10:56:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6A30D404F5;
	Fri, 17 Feb 2023 09:56:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6A30D404F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676627809;
	bh=Q3k/blqoQTsOJzyLFXQ9LrCOCUB3N8SuqthGyLyXkP0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JQcOvEWifusTmOPLuSm8MnKd3TC+YWFQL6zu4M40YGGdAq2FawNx/CqM0Sobrabg7
	 /TKqL6wAgPavU0HtBB6aP5SqcOBcQ/54tlMz0GPiQGNTgAJQeLhDpQueJ6UpmkxKUs
	 zRiBzid57wUDcol7RkuWa6Sri+K0x7CFDSPWcmCATQZJSQN5BjkWStQC8iQ1UPLfJt
	 F2jOIetnotkNFZ5sMicrbidhTqkkbCK33QF+ihzuXCnkfrm87Rai6Si/NQqi9e+ohI
	 6QqSFuksh/zQfIa2yC3k6SMECn3zDwz0tyD1FKWDCoRQLpq/6KrYTe/R5qj8+4hPMU
	 e8UllWRKwqsWg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SYQIZ28fj-4Z; Fri, 17 Feb 2023 09:56:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4D28F404E5;
	Fri, 17 Feb 2023 09:56:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4D28F404E5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6EFF51BF5DE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Feb 2023 09:56:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 50C1F404EB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Feb 2023 09:56:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 50C1F404EB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3hhBYEpagdRo for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Feb 2023 09:56:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 768C8400A4
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 768C8400A4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Feb 2023 09:56:41 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 404A760027FDD;
 Fri, 17 Feb 2023 10:56:38 +0100 (CET)
Message-ID: <323642b0-68cc-1446-c917-4484d23c1db5@molgen.mpg.de>
Date: Fri, 17 Feb 2023 10:56:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Content-Language: en-US
To: Kamil Maziarz <kamil.maziarz@intel.com>
References: <20230217085749.348624-1-kamil.maziarz@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20230217085749.348624-1-kamil.maziarz@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] igbvf: add PCI reset
 handler functions
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
Cc: Dawid Wesierski <dawidx.wesierski@intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBLYW1pbCwgZGVhciBEYXdpZCwKCgpUaGFuayB5b3UgZm9yIHRoZSBwYXRjaC4KCkFtIDE3
LjAyLjIzIHVtIDA5OjU3IHNjaHJpZWIgS2FtaWwgTWF6aWFyejoKPiBGcm9tOiBEYXdpZCBXZXNp
ZXJza2kgPGRhd2lkeC53ZXNpZXJza2lAaW50ZWwuY29tPgo+IAo+IFRoZXJlIHdhcyBhIHByb2Js
ZW0gd2l0aCByZXN1bWluZyBwaW5nIGFmdGVyIGNvbmR1Y3RpbmcgYSBQQ0kgcmVzZXQuCj4gVGhp
cyBjb21taXQgYWRkcyB0d28gZnVuY3Rpb25zLCBpZ2J2Zl9pb19wcmVwYXJlIGFuZCBpZ2J2Zl9p
b19kb25lLAo+IHdoaWNoLCBhZnRlciBiZWluZyBhZGRlZCB0byB0aGUgcGNpX2Vycm9yX2hhbmRs
ZXJzIHN0cnVjdCwKPiB3aWxsIHByZXBhcmUgdGhlIGRyaXZlcnMgZm9yIGEgUENJIHJlc2V0IGFu
ZCB0aGVuIGJyaW5nIHRoZSBpbnRlcmZhY2UgdXAKPiBhbmQgcmVzZXQgaXQgYWZ0ZXIgdGhlIHJl
c2V0LiBUaGlzIHdpbGwgcHJldmVudCB0aGUgZHJpdmVyIGZyb20KPiBlbmRpbmcgdXAgaW4gYW4g
aW5jb3JyZWN0IHN0YXRlLgoK4oCcYW5kIHJlc2V0IGl0IGFmdGVyIHRoZSByZXNldOKAnSBzb3Vu
ZHMgY29uZnVzaW5nLiBDYW4geW91IGNsZWFyIHRoYXQgdXAgCnBsZWFzZT8KCkFkZGl0aW9uYWxs
eSwgd2hlcmUgaXMgdGhhdCByZXF1aXJlbWVudCBzcGVjaWZpZWQ/IFBsZWFzZSBkb2N1bWVudCB0
aGUgCmRhdGFzaGVldCBuYW1lLCB2ZXJzaW9uIGFuZCBzZWN0aW9uLgoKPiBTaWduZWQtb2ZmLWJ5
OiBEYXdpZCBXZXNpZXJza2kgPGRhd2lkeC53ZXNpZXJza2lAaW50ZWwuY29tPgo+IFNpZ25lZC1v
ZmYtYnk6IEthbWlsIE1hemlhcnogPGthbWlsLm1hemlhcnpAaW50ZWwuY29tPgo+IC0tLQo+IHYy
OiBhZGRlZCBuZXdsaW5lcwo+IC0tLQo+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdi
dmYvbmV0ZGV2LmMgfCAyOSArKysrKysrKysrKysrKysrKysrKysrKwo+ICAgMSBmaWxlIGNoYW5n
ZWQsIDI5IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWdidmYvbmV0ZGV2LmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2J2
Zi9uZXRkZXYuYwo+IGluZGV4IDcyY2IxYjU2ZTlmMi4uN2ZmMjc1MmRkNzYzIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYnZmL25ldGRldi5jCj4gKysrIGIvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdidmYvbmV0ZGV2LmMKPiBAQCAtMjU5Myw2ICsyNTkz
LDMzIEBAIHN0YXRpYyB2b2lkIGlnYnZmX2lvX3Jlc3VtZShzdHJ1Y3QgcGNpX2RldiAqcGRldikK
PiAgIAluZXRpZl9kZXZpY2VfYXR0YWNoKG5ldGRldik7Cj4gICB9Cj4gICAKPiArLyoqCj4gKyAq
IGlnYnZmX2lvX3ByZXBhcmUgLSBwcmVwYXJlIGRldmljZSBkcml2ZXIgZm9yIFBDSSByZXNldAo+
ICsgKiBAcGRldjogUENJIGRldmljZSBpbmZvcm1hdGlvbiBzdHJ1Y3QKPiArICovCj4gK3N0YXRp
YyB2b2lkIGlnYnZmX2lvX3ByZXBhcmUoc3RydWN0IHBjaV9kZXYgKnBkZXYpCj4gK3sKPiArCXN0
cnVjdCBuZXRfZGV2aWNlICpuZXRkZXYgPSBwY2lfZ2V0X2RydmRhdGEocGRldik7Cj4gKwlzdHJ1
Y3QgaWdidmZfYWRhcHRlciAqYWRhcHRlciA9IG5ldGRldl9wcml2KG5ldGRldik7Cj4gKwo+ICsJ
d2hpbGUgKHRlc3RfYW5kX3NldF9iaXQoX19JR0JWRl9SRVNFVFRJTkcsICZhZGFwdGVyLT5zdGF0
ZSkpCj4gKwkJdXNsZWVwX3JhbmdlKDEwMDAsIDIwMDApOwoKVGhpcyBsb29rcyBsaWtlIGEgcG90
ZW50aWFsIGVuZGxlc3MgbG9vcD8gU2hvdWxkIGEgdGltZW91dCBiZSBhZGRlZCwgYW5kIAphbiBl
cnJvciBtZXNzYWdlLCBpbiBjYXNlIHRoZSB0aW1lb3V0IGlzIGhpdD8KCkFzIHlvdSBpbnRyb2R1
Y2UgZGVsYXlzIGhlcmUsIHBsZWFzZSBkb2N1bWVudCBpbiB0aGUgY29tbWl0IG1lc3NhZ2UsIGhv
dyAKbXVjaCBkZWxheSB5b3UgZXhwZXJpZW5jZWQgb24geW91ciB0ZXN0IHN5c3RlbXMuCgo+ICsJ
aWdidmZfZG93bihhZGFwdGVyKTsKPiArfQo+ICsKPiArLyoqCj4gKyAqIGlnYnZmX2lvX3Jlc2V0
X2RvbmUgLSBQQ0kgcmVzZXQgZG9uZSwgZGV2aWNlIGRyaXZlciByZXNldCBjYW4gYmVnaW4KPiAr
ICogQHBkZXY6IFBDSSBkZXZpY2UgaW5mb3JtYXRpb24gc3RydWN0Cj4gKyAqLwo+ICtzdGF0aWMg
dm9pZCBpZ2J2Zl9pb19yZXNldF9kb25lKHN0cnVjdCBwY2lfZGV2ICpwZGV2KQo+ICt7Cj4gKwlz
dHJ1Y3QgbmV0X2RldmljZSAqbmV0ZGV2ID0gcGNpX2dldF9kcnZkYXRhKHBkZXYpOwo+ICsJc3Ry
dWN0IGlnYnZmX2FkYXB0ZXIgKmFkYXB0ZXIgPSBuZXRkZXZfcHJpdihuZXRkZXYpOwo+ICsKPiAr
CWlnYnZmX3VwKGFkYXB0ZXIpOwo+ICsJY2xlYXJfYml0KF9fSUdCVkZfUkVTRVRUSU5HLCAmYWRh
cHRlci0+c3RhdGUpOwo+ICt9Cj4gKwo+ICAgc3RhdGljIHZvaWQgaWdidmZfcHJpbnRfZGV2aWNl
X2luZm8oc3RydWN0IGlnYnZmX2FkYXB0ZXIgKmFkYXB0ZXIpCj4gICB7Cj4gICAJc3RydWN0IGUx
MDAwX2h3ICpodyA9ICZhZGFwdGVyLT5odzsKPiBAQCAtMjkyMCw2ICsyOTQ3LDggQEAgc3RhdGlj
IGNvbnN0IHN0cnVjdCBwY2lfZXJyb3JfaGFuZGxlcnMgaWdidmZfZXJyX2hhbmRsZXIgPSB7Cj4g
ICAJLmVycm9yX2RldGVjdGVkID0gaWdidmZfaW9fZXJyb3JfZGV0ZWN0ZWQsCj4gICAJLnNsb3Rf
cmVzZXQgPSBpZ2J2Zl9pb19zbG90X3Jlc2V0LAo+ICAgCS5yZXN1bWUgPSBpZ2J2Zl9pb19yZXN1
bWUsCj4gKwkucmVzZXRfcHJlcGFyZSA9IGlnYnZmX2lvX3ByZXBhcmUsCj4gKwkucmVzZXRfZG9u
ZSA9IGlnYnZmX2lvX3Jlc2V0X2RvbmUsCj4gICB9Owo+ICAgCj4gICBzdGF0aWMgY29uc3Qgc3Ry
dWN0IHBjaV9kZXZpY2VfaWQgaWdidmZfcGNpX3RibFtdID0gewoKCktpbmQgcmVnYXJkcywKClBh
dWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
d2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczov
L2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
