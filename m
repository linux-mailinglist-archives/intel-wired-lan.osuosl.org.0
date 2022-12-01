Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EC6263EA63
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Dec 2022 08:36:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7F6C440C45;
	Thu,  1 Dec 2022 07:36:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7F6C440C45
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669880180;
	bh=iHP4OImZlf5Qus/k3nJ7FRopeWqqw9FYyJLTB3t64KA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=H83XZb9QOxY8X8h0jLaMSCBoQTsfR9/iXp9feSQjjrgNlvl1seCwSAUHMyYjiypFW
	 XaI4lCA3p0DgCr+zkPZp2QF4CPTLAlB9+bJL43essdUyR4Kb3yPhjsW0yHMidSVh6w
	 mvb+1elieiCQyg4xMuoYe252g7GgvzD2BUchsm41Lwc+v4zWDh95GZ0XFcYh/ebiBW
	 9uGaF0yKOAaFafgoz1SVBwsHYMeTOCc1XECq0W8clwLBiUJaeRsMcif6LzkjZuP9d0
	 7LqVv9sQfdEaFBK51KhKUgaiym5dvMiaADi0jekNzdpInhcAKV/ziZnf93F7DDXpiN
	 AvdYYKo06E0/Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eHLMLgjYaWIR; Thu,  1 Dec 2022 07:36:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 667DE40150;
	Thu,  1 Dec 2022 07:36:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 667DE40150
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 489181BF2A2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 07:36:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2CA5541892
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 07:36:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2CA5541892
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eF1elSBL_pqg for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Dec 2022 07:36:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B2FF04186C
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B2FF04186C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 07:36:11 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5aea28.dynamic.kabel-deutschland.de
 [95.90.234.40])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 7926660028140;
 Thu,  1 Dec 2022 08:36:08 +0100 (CET)
Message-ID: <ada85dd1-dd75-d595-9c07-ece2fce4f501@molgen.mpg.de>
Date: Thu, 1 Dec 2022 08:36:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
To: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
References: <20221128214749.110-1-paul.m.stillwell.jr@intel.com>
 <20221128214749.110-4-paul.m.stillwell.jr@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20221128214749.110-4-paul.m.stillwell.jr@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next 3/5] ice: add ability to
 query/set FW log level and resolution
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBQYXVsLAoKClRoYW5rIHlvdSBmb3IgdGhlIHBhdGNoLgoKQW0gMjguMTEuMjIgdW0gMjI6
NDcgc2NocmllYiBQYXVsIE0gU3RpbGx3ZWxsIEpyOgo+IFRoZSBFOHh4IGhhcyB0aGUgYWJpbGl0
eSB0byBjaGFuZ2UgdGhlIEZXIGxvZyBsZXZlbCBhbmQKPiB0aGUgZ3JhbnVsYXJpdHkgYXQgd2hp
Y2ggdGhlIGxvZ3MgZ2V0IG91dHB1dC4gRW5hYmxlCj4gdGhlIGFiaWxpdHkgdG8gc2VlIHdoYXQg
dGhlIGN1cnJlbnQgdmFsdWVzIGFyZSBhbmQgdG8KPiBjaGFuZ2UgdGhlbS4KClBsZWFzZSByZWZs
b3cgdGhlIG1lc3NhZ2UgZm9yIDc1IGNoYXJhY3RlcnMgcGVyIGxpbmUuCgpQbGVhc2UgYWRkIHRo
ZSBleGFtcGxlcywgaG93IHRvIGxpc3QgYW5kIGNoYW5nZSB0aGUgY3VycmVudCB2YWx1ZXMuCgpB
IHNtYWxsIGNvbW1lbnQgcmVnYXJkaW5nIHRoZSBpbXBsZW1lbnRhdGlvbiB3b3VsZCBhbHNvIGJl
IG5pY2UsIGFuZCAKbWF5YmUgYSByZWZlcmVuY2UgdG8gdGhlIHVzZWQgZGF0YXNoZWV0IChuYW1l
LCByZXZpc2lvbikuCgo+IFNpZ25lZC1vZmYtYnk6IFBhdWwgTSBTdGlsbHdlbGwgSnIgPHBhdWwu
bS5zdGlsbHdlbGwuanJAaW50ZWwuY29tPgo+IC0tLQo+ICAgLi4uL25ldC9ldGhlcm5ldC9pbnRl
bC9pY2UvaWNlX2FkbWlucV9jbWQuaCAgIHwgICA0ICsKPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2ljZS9pY2VfY29tbW9uLmMgICB8ICAgNCArLQo+ICAgZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWNlL2ljZV9kZXZsaW5rLmMgIHwgMTQyICsrKysrKysrLQo+ICAgZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9md2xvZy5jICAgIHwgMjc3ICsrKysrKysrKysrKysr
KysrKwo+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9md2xvZy5oICAgIHwg
ICA1ICsKPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdHlwZS5oICAgICB8
ICAgMSArCj4gICA2IGZpbGVzIGNoYW5nZWQsIDQyOSBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9u
cygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNl
X2FkbWlucV9jbWQuaCBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfYWRtaW5x
X2NtZC5oCj4gaW5kZXggZDAwMjYxNjFhMmI0Li44ZmExOGJjNWQ0NDEgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9hZG1pbnFfY21kLmgKPiArKysgYi9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2FkbWlucV9jbWQuaAo+IEBAIC0yNDA2
LDcgKzI0MDYsMTEgQEAgZW51bSBpY2VfYWRtaW5xX29wYyB7Cj4gICAKPiAgIAkvKiBTdGFuZGFs
b25lIENvbW1hbmRzL0V2ZW50cyAqLwo+ICAgCWljZV9hcWNfb3BjX2V2ZW50X2xhbl9vdmVyZmxv
dwkJCT0gMHgxMDAxLAo+ICsJLyogRlcgTG9nZ2luZyBDb21tYW5kcyAqLwo+ICsJaWNlX2FxY19v
cGNfZndfbG9nc19jb25maWcJCQk9IDB4RkYzMCwKPiArCWljZV9hcWNfb3BjX2Z3X2xvZ3NfcmVn
aXN0ZXIJCQk9IDB4RkYzMSwKPiAgIAlpY2VfYXFjX29wY19md19sb2dzX3F1ZXJ5CQkJPSAweEZG
MzIsCj4gKwlpY2VfYXFjX29wY19md19sb2dzX2V2ZW50CQkJPSAweEZGMzMsCj4gICB9Owo+ICAg
Cj4gICAjZW5kaWYgLyogX0lDRV9BRE1JTlFfQ01EX0hfICovCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfY29tbW9uLmMgYi9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pY2UvaWNlX2NvbW1vbi5jCj4gaW5kZXggZWNkYzFlYmI0NWQ1Li4wYjNhZGFj
MTNjNjYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9j
b21tb24uYwo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfY29tbW9u
LmMKPiBAQCAtODc5LDcgKzg3OSw5IEBAIGludCBpY2VfaW5pdF9odyhzdHJ1Y3QgaWNlX2h3ICpo
dykKPiAgIAlpZiAoc3RhdHVzKQo+ICAgCQlnb3RvIGVycl91bnJvbGxfY3Fpbml0Owo+ICAgCj4g
LQlpY2VfZndsb2dfc2V0X3N1cHBvcnRfZW5hKGh3KTsKPiArCXN0YXR1cyA9IGljZV9md2xvZ19p
bml0KGh3KTsKPiArCWlmIChzdGF0dXMpCj4gKwkJaWNlX2RlYnVnKGh3LCBJQ0VfREJHX0ZXX0xP
RywgIkVycm9yIGluaXRpYWxpemluZyBGVyBsb2dnaW5nOiAlZFxuIiwgc3RhdHVzKTsKPiAgIAo+
ICAgCXN0YXR1cyA9IGljZV9jbGVhcl9wZl9jZmcoaHcpOwo+ICAgCWlmIChzdGF0dXMpCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZGV2bGluay5jIGIv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9kZXZsaW5rLmMKPiBpbmRleCA4ODQz
ZmY0OTJmN2YuLmNhNjdmMjc0MWY4MyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pY2UvaWNlX2RldmxpbmsuYwo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2ljZS9pY2VfZGV2bGluay5jCj4gQEAgLTE0ODgsNiArMTQ4OCw4IEBAIGVudW0gaWNlX2Rl
dmxpbmtfcGFyYW1faWQgewo+ICAgCUlDRV9ERVZMSU5LX1BBUkFNX0lEX0JBU0UgPSBERVZMSU5L
X1BBUkFNX0dFTkVSSUNfSURfTUFYLAo+ICAgCUlDRV9ERVZMSU5LX1BBUkFNX0lEX0ZXTE9HX1NV
UFBPUlRFRCwKPiAgIAlJQ0VfREVWTElOS19QQVJBTV9JRF9GV0xPR19FTkFCTEVELAo+ICsJSUNF
X0RFVkxJTktfUEFSQU1fSURfRldMT0dfTEVWRUwsCj4gKwlJQ0VfREVWTElOS19QQVJBTV9JRF9G
V0xPR19SRVNPTFVUSU9OLAo+ICAgfTsKPiAgIAo+ICAgc3RhdGljIGludAo+IEBAIC0xNTMwLDgg
KzE1MzIsMTIxIEBAIHN0YXRpYyBpbnQKPiAgIGljZV9kZXZsaW5rX2Z3bG9nX2VuYWJsZWRfc2V0
KHN0cnVjdCBkZXZsaW5rICpkZXZsaW5rLCB1MzIgaWQsCj4gICAJCQkgICAgICBzdHJ1Y3QgZGV2
bGlua19wYXJhbV9nc2V0X2N0eCAqY3R4KQo+ICAgewo+IC0JLyogc2V0IG9wZXJhdGlvbiBpcyB1
bnN1cHBvcnRlZCBhdCB0aGlzIHRpbWUgKi8KPiAtCXJldHVybiAtRU9QTk9UU1VQUDsKPiArCXN0
cnVjdCBpY2VfcGYgKnBmID0gZGV2bGlua19wcml2KGRldmxpbmspOwo+ICsJc3RydWN0IGljZV9o
dyAqaHcgPSAmcGYtPmh3Owo+ICsJaW50IHN0YXR1czsKPiArCj4gKwkvKiBvbmx5IHN1cHBvcnQg
ZncgbG9nIGNvbW1hbmRzIG9uIFBGIDAgKi8KPiArCWlmIChody0+YnVzLmZ1bmMpCj4gKwkJcmV0
dXJuIC1FT1BOT1RTVVBQOwo+ICsKPiArCWlmIChody0+Zndsb2dfZW5hID09IGN0eC0+dmFsLnZi
b29sKQo+ICsJCXJldHVybiAwOwo+ICsKPiArCWh3LT5md2xvZ19lbmEgPSBjdHgtPnZhbC52Ym9v
bDsKPiArCj4gKwlpZiAoaHctPmZ3bG9nX2VuYSkKPiArCQlody0+Zndsb2dfY2ZnLm9wdGlvbnMg
fD0gSUNFX0ZXTE9HX09QVElPTl9BUlFfRU5BOwo+ICsJZWxzZQo+ICsJCWh3LT5md2xvZ19jZmcu
b3B0aW9ucyAmPSB+SUNFX0ZXTE9HX09QVElPTl9BUlFfRU5BOwo+ICsKPiArCS8qIHNlbmQgdGhl
IGNmZyB0byBGVyBhbmQgcmVnaXN0ZXIgZm9yIGV2ZW50cyAqLwo+ICsJc3RhdHVzID0gaWNlX2Z3
bG9nX3NldChodywgJmh3LT5md2xvZ19jZmcpOwo+ICsJaWYgKHN0YXR1cykKPiArCQlyZXR1cm4g
c3RhdHVzOwo+ICsKPiArCWlmIChody0+Zndsb2dfZW5hKSB7Cj4gKwkJc3RhdHVzID0gaWNlX2Z3
bG9nX3JlZ2lzdGVyKGh3KTsKPiArCQlpZiAoc3RhdHVzKQo+ICsJCQlyZXR1cm4gc3RhdHVzOwo+
ICsJfSBlbHNlIHsKPiArCQlzdGF0dXMgPSBpY2VfZndsb2dfdW5yZWdpc3Rlcihodyk7Cj4gKwkJ
aWYgKHN0YXR1cykKPiArCQkJcmV0dXJuIHN0YXR1czsKPiArCX0KPiArCj4gKwlyZXR1cm4gMDsK
PiArfQo+ICsKPiArc3RhdGljIGludAo+ICtpY2VfZGV2bGlua19md2xvZ19sZXZlbF9nZXQoc3Ry
dWN0IGRldmxpbmsgKmRldmxpbmssIHUzMiBpZCwKPiArCQkJICAgIHN0cnVjdCBkZXZsaW5rX3Bh
cmFtX2dzZXRfY3R4ICpjdHgpCj4gK3sKPiArCXN0cnVjdCBpY2VfcGYgKnBmID0gZGV2bGlua19w
cml2KGRldmxpbmspOwo+ICsKPiArCS8qIG9ubHkgc3VwcG9ydCBmdyBsb2cgY29tbWFuZHMgb24g
UEYgMCAqLwo+ICsJaWYgKHBmLT5ody5idXMuZnVuYykKPiArCQlyZXR1cm4gLUVPUE5PVFNVUFA7
Cj4gKwo+ICsJLyogYWxsIHRoZSBsb2cgbGV2ZWxzIGFyZSB0aGUgc2FtZSBzbyBwaWNrIHRoZSBm
aXJzdCBvbmUgKi8KPiArCWN0eC0+dmFsLnZ1OCA9IHBmLT5ody5md2xvZ19jZmcubW9kdWxlX2Vu
dHJpZXNbMF0ubG9nX2xldmVsOwo+ICsKPiArCXJldHVybiAwOwo+ICt9Cj4gKwo+ICtzdGF0aWMg
aW50Cj4gK2ljZV9kZXZsaW5rX2Z3bG9nX2xldmVsX3NldChzdHJ1Y3QgZGV2bGluayAqZGV2bGlu
aywgdTMyIGlkLAo+ICsJCQkgICAgc3RydWN0IGRldmxpbmtfcGFyYW1fZ3NldF9jdHggKmN0eCkK
PiArewo+ICsJc3RydWN0IGljZV9wZiAqcGYgPSBkZXZsaW5rX3ByaXYoZGV2bGluayk7Cj4gKwlz
dHJ1Y3QgaWNlX2Z3bG9nX2NmZyAqY2ZnOwo+ICsJdTggaTsKClBsZWFzZSB1c2UgbmF0aXZlIHR5
cGVzLiBMaW1pdGluZyB0aGUgd2lkdGggYWN0dWFsbHkgZ2VuZXJhdGVzIG1vcmUgY29kZSAKWzFd
LiAoWW91IGNhbiBhbHNvIGNoZWNrIHRoYXQgd2l0aCBgc2NyaXB0cy9ibG9hdC1vLW1ldGVyYC4p
CgooUGxlYXNlIGFsc28gZml4IHRoYXQgZm9yIHRoZSByZXN0IG9mIHRoZSBhZGRlZCBjb2RlLikK
ClvigKZdCgoKS2luZCByZWdhcmRzLAoKUGF1bAoKClsxXTogaHR0cHM6Ly9ub3RhYnMub3JnL2Nv
ZGluZy9zbWFsbEludHNCaWdQZW5hbHR5Lmh0bQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdp
cmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLXdpcmVkLWxhbgo=
