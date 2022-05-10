Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 158C6520E42
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 May 2022 09:04:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 819C681B10;
	Tue, 10 May 2022 07:04:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2hnw9grVlQy2; Tue, 10 May 2022 07:04:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8295881B0A;
	Tue, 10 May 2022 07:04:32 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9C9321BF2C5
 for <intel-wired-lan@osuosl.org>; Tue, 10 May 2022 07:04:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 883CE4010E
 for <intel-wired-lan@osuosl.org>; Tue, 10 May 2022 07:04:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T355itALTMRa for <intel-wired-lan@osuosl.org>;
 Tue, 10 May 2022 07:04:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 71225400CC
 for <intel-wired-lan@osuosl.org>; Tue, 10 May 2022 07:04:25 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5aeae3.dynamic.kabel-deutschland.de
 [95.90.234.227])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 095D961EA1923;
 Tue, 10 May 2022 09:04:22 +0200 (CEST)
Message-ID: <d9807c38-81a1-a1d9-cc77-802c2a5755cb@molgen.mpg.de>
Date: Tue, 10 May 2022 09:04:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
References: <20220509010847.17492-1-muhammad.husaini.zulkifli@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20220509010847.17492-1-muhammad.husaini.zulkifli@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH] igc: Correct the launchtime offset
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
Cc: intel-wired-lan@osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBNdWhhbW1hZCwKCgpUaGFuayB5b3UgZm9yIHlvdXIgcGF0Y2guCgpBbSAwOS4wNS4yMiB1
bSAwMzowOCBzY2hyaWViIE11aGFtbWFkIEh1c2FpbmkgWnVsa2lmbGk6Cj4gVGhlIGxhdW5jaHRp
bWUgb2Zmc2V0IGNhbiBiZSBjb3JyZWN0ZWQgYWNjb3JkaW5nIHRvIHNlY3Rpb25zIDcuNS4yLjYK
PiBhbmQgMTIuMy4yIG9mIHRoZSBkYXRhc2hlZXQuCgrigJxjYW7igJ0gb3Ig4oCcc2hvdWxk4oCd
PwoKU29ycnksIHdoYXQgaXMgdGhlIG5hbWUgb2YgdGhlIGRhdGFzaGVldD8KCldoYXQgcHJvYmxl
bXMgZG9lcyBpdCBmaXgsIGFuZCBob3cgY2FuIHRoZXkgYmUgcmVwcm9kdWNlZD8KCj4gQmFzZWQg
b24gdGhlIHByZWxpbWluYXJ5IGRhdGEsIHRoaXMgY29ycmVjdGlvbiBpcyByb3VnaGx5IDE1MDBu
cy4KPiBJbiB0aGUgZnV0dXJlLCBwcm9wZXIgbWVhc3VyZW1lbnRzIG11c3QgYmUgdGFrZW4sIGFu
ZCBjb3JyZWN0aW9ucyBtdXN0IHRha2UKPiBpbnRvIGFjY291bnQgdGhlIHZhcmlvdXMgbGluayBz
cGVlZHMuCgpOaXQ6IFBsZWFzZSBkbyBub3Qgd3JhcCBsaW5lcyBqdXN0IGJlY2F1c2UgYSBzZW50
ZW5jZSBlbmRzLiBJZiB0aGVzZSBhcmUgCnBhcmFncmFwaHMsIHRoZW4gcGxlYXNlIHNlcGFyYXRl
IHRob3NlIGJ5IGV4YWN0bHkgb25lIGJsYW5rIGxpbmUuCgo+IFNpZ25lZC1vZmYtYnk6IFZpbmlj
aXVzIENvc3RhIEdvbWVzIDx2aW5pY2l1cy5nb21lc0BpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1i
eTogTXVoYW1tYWQgSHVzYWluaSBadWxraWZsaSA8bXVoYW1tYWQuaHVzYWluaS56dWxraWZsaUBp
bnRlbC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX3Jl
Z3MuaCB8ICAxICsKPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfdHNuLmMg
IHwgMTQgKysrKysrKysrKysrKysKPiAgIDIgZmlsZXMgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygr
KQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX3Jl
Z3MuaCBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfcmVncy5oCj4gaW5kZXgg
ZTE5N2EzM2Q5M2EwLi45MjhkMjJiMWNhMjIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWdjL2lnY19yZWdzLmgKPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pZ2MvaWdjX3JlZ3MuaAo+IEBAIC0yMzEsNiArMjMxLDcgQEAKPiAgICNkZWZpbmUgSUdD
X0JBU0VUX0gJCTB4MzMxOAo+ICAgI2RlZmluZSBJR0NfUUJWQ1lDTEVUCQkweDMzMUMKPiAgICNk
ZWZpbmUgSUdDX1FCVkNZQ0xFVF9TCQkweDMzMjAKPiArI2RlZmluZSBJR0NfR1RYT0ZGU0VUCQkw
eDMzMTAKClNvcnQgdGhlc2UgYnkgdGhlIHZhbHVlPwoKPiAgIAo+ICAgI2RlZmluZSBJR0NfU1RR
VChfbikJCSgweDMzMjQgKyAweDQgKiAoX24pKQo+ICAgI2RlZmluZSBJR0NfRU5EUVQoX24pCQko
MHgzMzM0ICsgMHg0ICogKF9uKSkKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWdjL2lnY190c24uYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2Nf
dHNuLmMKPiBpbmRleCAwZmNlMjJkZTJhYjguLjNkNGQwYWIwMTFlMyAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX3Rzbi5jCj4gKysrIGIvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY190c24uYwo+IEBAIC04NCwxMiArODQsMjYgQEAgc3Rh
dGljIGludCBpZ2NfdHNuX2VuYWJsZV9vZmZsb2FkKHN0cnVjdCBpZ2NfYWRhcHRlciAqYWRhcHRl
cikKPiAgIAlzdHJ1Y3QgaWdjX2h3ICpodyA9ICZhZGFwdGVyLT5odzsKPiAgIAl1MzIgdHFhdmN0
cmwsIGJhc2V0X2wsIGJhc2V0X2g7Cj4gICAJdTMyIHNlYywgbnNlYywgY3ljbGU7Cj4gKwl1MTYg
dHhfb2Zmc2V0OwoKUGxlYXNlIGFwcGVuZCB0aGUgdW5pdCB0byB0aGUgdmFyaWFibGUgbmFtZS4K
CldoeSBzcGVjaWZ5IHRoZSBzaXplLCBhbmQgbm90IGp1c3QgdXNlIGB1bnNpZ25lZCBpbnRgIFsx
XT8gKGBfX3dyaXRlbCgpYCAKYWxzbyB1c2VzIGB1bnNpZ25lZCBpbnRgIGluIHRoZSBlbmQ/Cgo+
ICAgCWt0aW1lX3QgYmFzZV90aW1lLCBzeXN0aW07Cj4gICAJaW50IGk7Cj4gICAKPiAgIAljeWNs
ZSA9IGFkYXB0ZXItPmN5Y2xlX3RpbWU7Cj4gICAJYmFzZV90aW1lID0gYWRhcHRlci0+YmFzZV90
aW1lOwo+ICAgCj4gKwlzd2l0Y2ggKGFkYXB0ZXItPmxpbmtfc3BlZWQpIHsKPiArCS8qIFRPRE86
IFRoaXMgY29kZSB1c2Ugc2FtZSB0cmFuc21pdCBvZmZzZXQgYWNyb3NzIGFsbCBsaW5rIHNwZWVk
IGFzIGZvciBub3cuICovCj4gKwljYXNlIFNQRUVEXzEwOgo+ICsJY2FzZSBTUEVFRF8xMDA6Cj4g
KwljYXNlIFNQRUVEXzEwMDA6Cj4gKwljYXNlIFNQRUVEXzI1MDA6Cj4gKwkJdHhfb2Zmc2V0ID0g
MTUwMDsKPiArCQlicmVhazsKPiArCWRlZmF1bHQ6Cj4gKwkJYnJlYWs7Cj4gKwl9Cj4gKwo+ICsJ
d3IzMihJR0NfR1RYT0ZGU0VULCB0eF9vZmZzZXQpOwo+ICAgCXdyMzIoSUdDX1RTQVVYQywgMCk7
Cj4gICAJd3IzMihJR0NfRFRYTVhQS1RTWiwgSUdDX0RUWE1YUEtUU1pfVFNOKTsKPiAgIAl3cjMy
KElHQ19UWFBCUywgSUdDX1RYUEJTSVpFX1RTTik7CgoKS2luZCByZWdhcmRzLAoKUGF1bAoKClsx
XTogaHR0cHM6Ly9ub3RhYnMub3JnL2NvZGluZy9zbWFsbEludHNCaWdQZW5hbHR5Lmh0bQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1s
YW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMu
b3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
