Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A247D720111
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Jun 2023 14:04:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3BD086162F;
	Fri,  2 Jun 2023 12:04:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3BD086162F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685707446;
	bh=Un8aUSw9vxKk6oeDENVIQ9C24iBoaI+FnqdpUdNxCfk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9E9jXecak8YdgiECpOx4nMoHSaQ6cZz3LrzsamlbhL00dSllxrVS5BuUiXtkQv9Ia
	 5sVsz7eEZbfLpK50SifZHVWgQl0LunJXHEulv5lteIO1wWJiWTNO32fAiaGjwlbBUv
	 2jdTv5EkWDa/bXP2R45CcBDTRuJW4/W3+iaBQ77L0Dy9aaxkfHfqmdb/3+l8h6fIN1
	 nuMogh2bBbaLK3nMoeCyA6knO7/0nPgPBAABC0XwvbuVKNmJ/JAwHq1sQTxV1ZQb8J
	 8q1ErmSscyQq5b2628LeRvRqpICe1tLSVl3KEhu/kwQu3Jsk/l21XF5JRulYjc16LP
	 lSbJ5/FOiNBDQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OI_ko7H6MHVc; Fri,  2 Jun 2023 12:04:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7660F6070A;
	Fri,  2 Jun 2023 12:04:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7660F6070A
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8B1B01BF34D
 for <intel-wired-lan@osuosl.org>; Fri,  2 Jun 2023 12:03:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6228141D6E
 for <intel-wired-lan@osuosl.org>; Fri,  2 Jun 2023 12:03:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6228141D6E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kHGDElTYUoGb for <intel-wired-lan@osuosl.org>;
 Fri,  2 Jun 2023 12:03:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5579A41879
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5579A41879
 for <intel-wired-lan@osuosl.org>; Fri,  2 Jun 2023 12:03:52 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5aebf4.dynamic.kabel-deutschland.de
 [95.90.235.244])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 7798461E4052B;
 Fri,  2 Jun 2023 14:03:27 +0200 (CEST)
Message-ID: <6b2dcf48-563e-dbb4-25ce-c41b5041983f@molgen.mpg.de>
Date: Fri, 2 Jun 2023 14:03:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
References: <20230602012827.25938-1-muhammad.husaini.zulkifli@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20230602012827.25938-1-muhammad.husaini.zulkifli@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] igc: Fix TX Hang issue
 when QBV Gate is close
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
Cc: chwee.lin.choong@intel.com, intel-wired-lan@osuosl.org,
 anthony.l.nguyen@intel.com, tee.min.tan@linux.intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBNdWhhbW1hZCwKCgpUaGFuayB5b3UgZm9yIHlvdXIgcGF0Y2guCgpBbSAwMi4wNi4yMyB1
bSAwMzoyOCBzY2hyaWViIE11aGFtbWFkIEh1c2FpbmkgWnVsa2lmbGk6CgpUaGVyZSBpcyBhIHNt
YWxsIHR5cG8gaW4gdGhlIGNvbW1pdCBtZXNzYWdlIHN1bW1hcnkvdGl0bGU6IGNsb3NlKmQqLgoK
PiBJZiBhIHVzZXIgc2NoZWR1bGVzIGEgR2F0ZSBDb250cm9sIExpc3QgKEdDTCkgdG8gY2xvc2Ug
b25lIG9mCj4gdGhlIFFCViBnYXRlcyB3aGlsZSBhbHNvIHRyYW5zbWl0dGluZyBhIHBhY2tldCB0
byB0aGF0IGNsb3NlZCBnYXRlLAo+IFRYIEhhbmcgd2lsbCBiZSBoYXBwZW4uIEhXIHdvdWxkIG5v
dCBkcm9wIGFueSBwYWNrZXQgd2hlbiB0aGUgZ2F0ZQo+IGlzIGNsb3NlIGFuZCBrZWVwIHF1ZXVl
aW5nIHVwIGluIEhXIFRYIEZJRk8gdW50aWwgdGhlIGdhdGUgaXMgcmUtb3Blbi4KCjEuICBjbG9z
ZSpkKgoyLiAgcXVldWluZwozLiAgcmUtb3BlbmVkCgo+IFRoaXMgcGF0Y2ggaW1wbGVtZW50IHRo
ZSBzb2x1dGlvbiB0byBkcm9wIHRoZSBwYWNrZXQgZm9yIHRoZSBjbG9zZWQKPiBnYXRlLgoKaW1w
bGVtZW50KnMqCgo+IFRoaXMgcGF0Y2ggd2lsbCBhZGRpdGlvbmFsbHkgaW5jbHVkZSBhIHJlc2V0
IGFkYXB0ZXIgdG8gcGVyZm9ybQoKTWF5YmU6IEFkZGl0aW9uYWxseSByZXNldCB0aGUgYWRhcHRl
ciB0byDigKYKCj4gU1cgaW5pdGlhbGl6YXRpb24gZm9yIGVhY2ggMXN0IEdhdGUgQ29udHJvbCBM
aXN0IChHQ0wpIHRvIGF2b2lkIGhhbmcuCj4gVGhpcyBpcyBkdWUgdG8gdGhlIEhXIGRlc2lnbiwg
d2hlcmUgY2hhbmdpbmcgdG8gVFNOIHRyYW5zbWl0IG1vZGUKPiByZXF1aXJlcyBTVyBpbml0aWFs
aXphdGlvbi4gSW50ZWwgRGlzY3JldGUgSTIyNS82IHRyYW5zbWl0IG1vZGUKPiBjYW5ub3QgYmUg
Y2hhbmdlZCB3aGVuIGluIGR5bmFtaWMgbW9kZSBhY2NvcmRpbmcgdG8gU29mdHdhcmUgVXNlcgo+
IE1hbnVhbCBTZWN0aW9uIDcuNS4yLjEuIFN1YnNlcXVlbnQgR2F0ZSBDb250cm9sIExpc3QgKEdD
TCkgb3BlcmF0aW9ucwo+IHdpbGwgcHJvY2VlZCB3aXRob3V0IGEgcmVzZXQsIGFzIHRoZXkgYWxy
ZWFkeSBpbiBUU04gTW9kZS4KCuKApiB0aGV5IGFscmVhZHkgKmFyZSogIOKApgoKPiBTdGVwIHRv
IHJlcHJvZHVjZToKPiAKPiBEVVQ6Cj4gMSkgQ29uZmlndXJlIEdDTCBMaXN0IHdpdGggY2VydGFp
biBnYXRlIGNsb3NlLgo+IDIpIFRyYW5zbWl0IHRoZSBwYWNrZXQgdG8gY2xvc2UgZ2F0ZS4KCmNs
b3NlKmQqCgpEbyB5b3UgaGF2ZSB0aGUgY29tbWFuZHMgdG8gZG8gd2hhdCB5b3UgZGlkPwoKPiBG
aXhlczogZWM1MGE5ZDQzN2YwICgiaWdjOiBBZGQgc3VwcG9ydCBmb3IgdGFwcmlvIG9mZmxvYWRp
bmciKQo+IENvLWRldmVsb3BlZC1ieTogVGFuIFRlZSBNaW4gPHRlZS5taW4udGFuQGxpbnV4Lmlu
dGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBUYW4gVGVlIE1pbiA8dGVlLm1pbi50YW5AbGludXgu
aW50ZWwuY29tPgo+IFRlc3RlZC1ieTogQ2h3ZWUgTGluIENob29uZyA8Y2h3ZWUubGluLmNob29u
Z0BpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTXVoYW1tYWQgSHVzYWluaSBadWxraWZsaSA8
bXVoYW1tYWQuaHVzYWluaS56dWxraWZsaUBpbnRlbC5jb20+Cj4gCj4gLS0tCj4gVjEgLT4gVjI6
IEZpeCBjb25mbGljdCBhbmQgYXBwbHkgdG8gbmV0LXF1ZXVlIHRyZWUuCj4gLS0tCj4gLS0tCj4g
ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjLmggICAgICB8ICA2ICsrKwo+ICAg
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19tYWluLmMgfCA1NyArKysrKysrKysr
KysrKysrKysrKystLQo+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY190c24u
YyAgfCA0MSArKysrKysrKysrLS0tLS0tCj4gICAzIGZpbGVzIGNoYW5nZWQsIDg3IGluc2VydGlv
bnMoKyksIDE3IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pZ2MvaWdjLmggYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdj
LmgKPiBpbmRleCAwYmJkMTA4ZjI4OTM5Li4xMjdiMjQ4MDU0ZTU1IDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2MuaAo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2lnYy9pZ2MuaAo+IEBAIC0xMyw2ICsxMyw3IEBACj4gICAjaW5jbHVkZSA8
bGludXgvcHRwX2Nsb2NrX2tlcm5lbC5oPgo+ICAgI2luY2x1ZGUgPGxpbnV4L3RpbWVjb3VudGVy
Lmg+Cj4gICAjaW5jbHVkZSA8bGludXgvbmV0X3RzdGFtcC5oPgo+ICsjaW5jbHVkZSA8bGludXgv
aHJ0aW1lci5oPgo+ICAgCj4gICAjaW5jbHVkZSAiaWdjX2h3LmgiCj4gICAKPiBAQCAtMTAwLDYg
KzEwMSw4IEBAIHN0cnVjdCBpZ2NfcmluZyB7Cj4gICAJdTMyIHN0YXJ0X3RpbWU7Cj4gICAJdTMy
IGVuZF90aW1lOwo+ICAgCXUzMiBtYXhfc2R1Owo+ICsJYm9vbCBvcGVyX2dhdGVfY2xvc2VkOwoK
V2hhdCBkb2VzICpvcGVyKiByZWZlciB0bz8KCj4gKwlib29sIGFkbWluX2dhdGVfY2xvc2VkOwo+
ICAgCj4gICAJLyogQ0JTIHBhcmFtZXRlcnMgKi8KPiAgIAlib29sIGNic19lbmFibGU7ICAgICAg
ICAgICAgICAgIC8qIGluZGljYXRlcyBpZiBDQlMgaXMgZW5hYmxlZCAqLwo+IEBAIC0xNTksNiAr
MTYyLDcgQEAgc3RydWN0IGlnY19hZGFwdGVyIHsKPiAgIAlzdHJ1Y3QgdGltZXJfbGlzdCB3YXRj
aGRvZ190aW1lcjsKPiAgIAlzdHJ1Y3QgdGltZXJfbGlzdCBkbWFfZXJyX3RpbWVyOwo+ICAgCXN0
cnVjdCB0aW1lcl9saXN0IHBoeV9pbmZvX3RpbWVyOwo+ICsJc3RydWN0IGhydGltZXIgaHJ0aW1l
cjsKPiAgIAo+ICAgCXUzMiB3b2w7Cj4gICAJdTMyIGVuX21uZ19wdDsKPiBAQCAtMTg4LDYgKzE5
Miw4IEBAIHN0cnVjdCBpZ2NfYWRhcHRlciB7Cj4gICAJa3RpbWVfdCBjeWNsZV90aW1lOwo+ICAg
CWJvb2wgcWJ2X2VuYWJsZTsKPiAgIAl1MzIgcWJ2X2NvbmZpZ19jaGFuZ2VfZXJyb3JzOwo+ICsJ
Ym9vbCBxYnZfdHJhbnNpdGlvbjsKPiArCWludCBxYnZfY291bnQ7Cgp1bnNpZ25lZCBpbnQ/Cgo+
ICAgCS8qIE9TIGRlZmluZWQgc3RydWN0cyAqLwo+ICAgCXN0cnVjdCBwY2lfZGV2ICpwZGV2Owo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21haW4uYyBi
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfbWFpbi5jCj4gaW5kZXggOTA5NTMw
NjMyM2FmZC4uMWY5NTM3NmY5ZmZkYSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pZ2MvaWdjX21haW4uYwo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2lnYy9pZ2NfbWFpbi5jCj4gQEAgLTE1MjEsNiArMTUyMSw5IEBAIHN0YXRpYyBuZXRkZXZfdHhf
dCBpZ2NfeG1pdF9mcmFtZV9yaW5nKHN0cnVjdCBza19idWZmICpza2IsCj4gICAJdTggaGRyX2xl
biA9IDA7Cj4gICAJaW50IHRzbyA9IDA7Cj4gICAKPiArCWlmIChhZGFwdGVyLT5xYnZfdHJhbnNp
dGlvbiB8fCB0eF9yaW5nLT5vcGVyX2dhdGVfY2xvc2VkKQo+ICsJCWdvdG8gb3V0X2Ryb3A7Cj4g
Kwo+ICAgCS8qIG5lZWQ6IDEgZGVzY3JpcHRvciBwZXIgcGFnZSAqIFBBR0VfU0laRS9JR0NfTUFY
X0RBVEFfUEVSX1RYRCwKPiAgIAkgKgkrIDEgZGVzYyBmb3Igc2tiX2hlYWRsZW4vSUdDX01BWF9E
QVRBX1BFUl9UWEQsCj4gICAJICoJKyAyIGRlc2MgZ2FwIHRvIGtlZXAgdGFpbCBmcm9tIHRvdWNo
aW5nIGhlYWQsCj4gQEAgLTI5NjcsNyArMjk3MCw4IEBAIHN0YXRpYyBib29sIGlnY19jbGVhbl90
eF9pcnEoc3RydWN0IGlnY19xX3ZlY3RvciAqcV92ZWN0b3IsIGludCBuYXBpX2J1ZGdldCkKPiAg
IAkJICAgIChhZGFwdGVyLT50eF90aW1lb3V0X2ZhY3RvciAqIEhaKSkgJiYKPiAgIAkJICAgICEo
cmQzMihJR0NfU1RBVFVTKSAmIElHQ19TVEFUVVNfVFhPRkYpICYmCj4gICAJCSAgICAocmQzMihJ
R0NfVERIKHR4X3JpbmctPnJlZ19pZHgpKSAhPQo+IC0JCSAgICAgcmVhZGwodHhfcmluZy0+dGFp
bCkpKSB7Cj4gKwkJICAgIHJlYWRsKHR4X3JpbmctPnRhaWwpKSAmJgo+ICsJCSAgICAhdHhfcmlu
Zy0+b3Blcl9nYXRlX2Nsb3NlZCkgewo+ICAgCQkJLyogZGV0ZWN0ZWQgVHggdW5pdCBoYW5nICov
Cj4gICAJCQluZXRkZXZfZXJyKHR4X3JpbmctPm5ldGRldiwKPiAgIAkJCQkgICAiRGV0ZWN0ZWQg
VHggVW5pdCBIYW5nXG4iCj4gQEAgLTYwNTcsNiArNjA2MSw4IEBAIHN0YXRpYyBpbnQgaWdjX3Rz
bl9jbGVhcl9zY2hlZHVsZShzdHJ1Y3QgaWdjX2FkYXB0ZXIgKmFkYXB0ZXIpCj4gICAJYWRhcHRl
ci0+YmFzZV90aW1lID0gMDsKPiAgIAlhZGFwdGVyLT5jeWNsZV90aW1lID0gTlNFQ19QRVJfU0VD
Owo+ICAgCWFkYXB0ZXItPnFidl9jb25maWdfY2hhbmdlX2Vycm9ycyA9IDA7Cj4gKwlhZGFwdGVy
LT5xYnZfdHJhbnNpdGlvbiA9IGZhbHNlOwo+ICsJYWRhcHRlci0+cWJ2X2NvdW50ID0gMDsKPiAg
IAo+ICAgCWZvciAoaSA9IDA7IGkgPCBhZGFwdGVyLT5udW1fdHhfcXVldWVzOyBpKyspIHsKPiAg
IAkJc3RydWN0IGlnY19yaW5nICpyaW5nID0gYWRhcHRlci0+dHhfcmluZ1tpXTsKPiBAQCAtNjA2
NCw2ICs2MDcwLDggQEAgc3RhdGljIGludCBpZ2NfdHNuX2NsZWFyX3NjaGVkdWxlKHN0cnVjdCBp
Z2NfYWRhcHRlciAqYWRhcHRlcikKPiAgIAkJcmluZy0+c3RhcnRfdGltZSA9IDA7Cj4gICAJCXJp
bmctPmVuZF90aW1lID0gTlNFQ19QRVJfU0VDOwo+ICAgCQlyaW5nLT5tYXhfc2R1ID0gMDsKPiAr
CQlyaW5nLT5vcGVyX2dhdGVfY2xvc2VkID0gZmFsc2U7Cj4gKwkJcmluZy0+YWRtaW5fZ2F0ZV9j
bG9zZWQgPSBmYWxzZTsKPiAgIAl9Cj4gICAKPiAgIAlyZXR1cm4gMDsKPiBAQCAtNjA3NSw2ICs2
MDgzLDcgQEAgc3RhdGljIGludCBpZ2Nfc2F2ZV9xYnZfc2NoZWR1bGUoc3RydWN0IGlnY19hZGFw
dGVyICphZGFwdGVyLAo+ICAgCWJvb2wgcXVldWVfY29uZmlndXJlZFtJR0NfTUFYX1RYX1FVRVVF
U10gPSB7IH07Cj4gICAJc3RydWN0IGlnY19odyAqaHcgPSAmYWRhcHRlci0+aHc7Cj4gICAJdTMy
IHN0YXJ0X3RpbWUgPSAwLCBlbmRfdGltZSA9IDA7Cj4gKwlzdHJ1Y3QgdGltZXNwZWM2NCBub3c7
Cj4gICAJc2l6ZV90IG47Cj4gICAJaW50IGk7Cj4gICAKPiBAQCAtNjA5NSw2ICs2MTA0LDggQEAg
c3RhdGljIGludCBpZ2Nfc2F2ZV9xYnZfc2NoZWR1bGUoc3RydWN0IGlnY19hZGFwdGVyICphZGFw
dGVyLAo+ICAgCWFkYXB0ZXItPmN5Y2xlX3RpbWUgPSBxb3B0LT5jeWNsZV90aW1lOwo+ICAgCWFk
YXB0ZXItPmJhc2VfdGltZSA9IHFvcHQtPmJhc2VfdGltZTsKPiAgIAo+ICsJaWdjX3B0cF9yZWFk
KGFkYXB0ZXIsICZub3cpOwo+ICsKPiAgIAlmb3IgKG4gPSAwOyBuIDwgcW9wdC0+bnVtX2VudHJp
ZXM7IG4rKykgewo+ICAgCQlzdHJ1Y3QgdGNfdGFwcmlvX3NjaGVkX2VudHJ5ICplID0gJnFvcHQt
PmVudHJpZXNbbl07Cj4gICAKPiBAQCAtNjEyOSw3ICs2MTQwLDEwIEBAIHN0YXRpYyBpbnQgaWdj
X3NhdmVfcWJ2X3NjaGVkdWxlKHN0cnVjdCBpZ2NfYWRhcHRlciAqYWRhcHRlciwKPiAgIAkJCQly
aW5nLT5zdGFydF90aW1lID0gc3RhcnRfdGltZTsKPiAgIAkJCXJpbmctPmVuZF90aW1lID0gZW5k
X3RpbWU7Cj4gICAKPiAtCQkJcXVldWVfY29uZmlndXJlZFtpXSA9IHRydWU7Cj4gKwkJCWlmIChy
aW5nLT5zdGFydF90aW1lID49IGFkYXB0ZXItPmN5Y2xlX3RpbWUpCj4gKwkJCQlxdWV1ZV9jb25m
aWd1cmVkW2ldID0gZmFsc2U7Cj4gKwkJCWVsc2UKPiArCQkJCXF1ZXVlX2NvbmZpZ3VyZWRbaV0g
PSB0cnVlOwoKTWF5YmU6CgogICAgIHF1ZXVlX2NvbmZpZ3VyZWRbaV0gPSAhKHJpbmctPnN0YXJ0
X3RpbWUgPj0gYWRhcHRlci0+Y3ljbGVfdGltZSkKCj4gICAJCX0KPiAgIAo+ICAgCQlzdGFydF90
aW1lICs9IGUtPmludGVydmFsOwo+IEBAIC02MTM5LDggKzYxNTMsMjAgQEAgc3RhdGljIGludCBp
Z2Nfc2F2ZV9xYnZfc2NoZWR1bGUoc3RydWN0IGlnY19hZGFwdGVyICphZGFwdGVyLAo+ICAgCSAq
IElmIG5vdCwgc2V0IHRoZSBzdGFydCBhbmQgZW5kIHRpbWUgdG8gYmUgZW5kIHRpbWUuCj4gICAJ
ICovCj4gICAJZm9yIChpID0gMDsgaSA8IGFkYXB0ZXItPm51bV90eF9xdWV1ZXM7IGkrKykgewo+
ICsJCXN0cnVjdCBpZ2NfcmluZyAqcmluZyA9IGFkYXB0ZXItPnR4X3JpbmdbaV07Cj4gKwo+ICsJ
CWlmICghaXNfYmFzZV90aW1lX3Bhc3QocW9wdC0+YmFzZV90aW1lLCAmbm93KSkgewo+ICsJCQly
aW5nLT5hZG1pbl9nYXRlX2Nsb3NlZCA9IGZhbHNlOwo+ICsJCX0gZWxzZSB7Cj4gKwkJCXJpbmct
Pm9wZXJfZ2F0ZV9jbG9zZWQgPSBmYWxzZTsKPiArCQkJcmluZy0+YWRtaW5fZ2F0ZV9jbG9zZWQg
PSBmYWxzZTsKPiArCQl9Cj4gKwo+ICAgCQlpZiAoIXF1ZXVlX2NvbmZpZ3VyZWRbaV0pIHsKPiAt
CQkJc3RydWN0IGlnY19yaW5nICpyaW5nID0gYWRhcHRlci0+dHhfcmluZ1tpXTsKPiArCQkJaWYg
KCFpc19iYXNlX3RpbWVfcGFzdChxb3B0LT5iYXNlX3RpbWUsICZub3cpKQo+ICsJCQkJcmluZy0+
YWRtaW5fZ2F0ZV9jbG9zZWQgPSB0cnVlOwo+ICsJCQllbHNlCj4gKwkJCQlyaW5nLT5vcGVyX2dh
dGVfY2xvc2VkID0gdHJ1ZTsKPiAgIAo+ICAgCQkJcmluZy0+c3RhcnRfdGltZSA9IGVuZF90aW1l
Owo+ICAgCQkJcmluZy0+ZW5kX3RpbWUgPSBlbmRfdGltZTsKPiBAQCAtNjQ2Niw2ICs2NDkyLDI3
IEBAIHUzMiBpZ2NfcmQzMihzdHJ1Y3QgaWdjX2h3ICpodywgdTMyIHJlZykKPiAgIAlyZXR1cm4g
dmFsdWU7Cj4gICB9Cj4gICAKPiArc3RhdGljIGVudW0gaHJ0aW1lcl9yZXN0YXJ0IGlnY19xYnZf
c2NoZWR1bGluZ190aW1lcihzdHJ1Y3QgaHJ0aW1lciAqdGltZXIpCj4gK3sKPiArCXN0cnVjdCBp
Z2NfYWRhcHRlciAqYWRhcHRlciA9IGNvbnRhaW5lcl9vZih0aW1lciwgc3RydWN0IGlnY19hZGFw
dGVyLAo+ICsJCQkJCQkgICBocnRpbWVyKTsKPiArCWludCBpOwoKdW5zaWduZWQgaW50PwoKPiAr
Cj4gKwlhZGFwdGVyLT5xYnZfdHJhbnNpdGlvbiA9IHRydWU7Cj4gKwlmb3IgKGkgPSAwOyBpIDwg
YWRhcHRlci0+bnVtX3R4X3F1ZXVlczsgaSsrKSB7Cj4gKwkJc3RydWN0IGlnY19yaW5nICp0eF9y
aW5nID0gYWRhcHRlci0+dHhfcmluZ1tpXTsKPiArCj4gKwkJaWYgKHR4X3JpbmctPmFkbWluX2dh
dGVfY2xvc2VkKSB7Cj4gKwkJCXR4X3JpbmctPmFkbWluX2dhdGVfY2xvc2VkID0gZmFsc2U7Cj4g
KwkJCXR4X3JpbmctPm9wZXJfZ2F0ZV9jbG9zZWQgPSB0cnVlOwo+ICsJCX0gZWxzZSB7Cj4gKwkJ
CXR4X3JpbmctPm9wZXJfZ2F0ZV9jbG9zZWQgPSBmYWxzZTsKPiArCQl9Cj4gKwl9Cj4gKwlhZGFw
dGVyLT5xYnZfdHJhbnNpdGlvbiA9IGZhbHNlOwo+ICsJcmV0dXJuIEhSVElNRVJfTk9SRVNUQVJU
Owo+ICt9Cj4gKwo+ICAgLyoqCj4gICAgKiBpZ2NfcHJvYmUgLSBEZXZpY2UgSW5pdGlhbGl6YXRp
b24gUm91dGluZQo+ICAgICogQHBkZXY6IFBDSSBkZXZpY2UgaW5mb3JtYXRpb24gc3RydWN0Cj4g
QEAgLTY2NDIsNiArNjY4OSw5IEBAIHN0YXRpYyBpbnQgaWdjX3Byb2JlKHN0cnVjdCBwY2lfZGV2
ICpwZGV2LAo+ICAgCUlOSVRfV09SSygmYWRhcHRlci0+cmVzZXRfdGFzaywgaWdjX3Jlc2V0X3Rh
c2spOwo+ICAgCUlOSVRfV09SSygmYWRhcHRlci0+d2F0Y2hkb2dfdGFzaywgaWdjX3dhdGNoZG9n
X3Rhc2spOwo+ICAgCj4gKwlocnRpbWVyX2luaXQoJmFkYXB0ZXItPmhydGltZXIsIENMT0NLX01P
Tk9UT05JQywgSFJUSU1FUl9NT0RFX1JFTCk7Cj4gKwlhZGFwdGVyLT5ocnRpbWVyLmZ1bmN0aW9u
ID0gJmlnY19xYnZfc2NoZWR1bGluZ190aW1lcjsKPiArCj4gICAJLyogSW5pdGlhbGl6ZSBsaW5r
IHByb3BlcnRpZXMgdGhhdCBhcmUgdXNlci1jaGFuZ2VhYmxlICovCj4gICAJYWRhcHRlci0+ZmNf
YXV0b25lZyA9IHRydWU7Cj4gICAJaHctPm1hYy5hdXRvbmVnID0gdHJ1ZTsKPiBAQCAtNjc0NSw2
ICs2Nzk1LDcgQEAgc3RhdGljIHZvaWQgaWdjX3JlbW92ZShzdHJ1Y3QgcGNpX2RldiAqcGRldikK
PiAgIAo+ICAgCWNhbmNlbF93b3JrX3N5bmMoJmFkYXB0ZXItPnJlc2V0X3Rhc2spOwo+ICAgCWNh
bmNlbF93b3JrX3N5bmMoJmFkYXB0ZXItPndhdGNoZG9nX3Rhc2spOwo+ICsJaHJ0aW1lcl9jYW5j
ZWwoJmFkYXB0ZXItPmhydGltZXIpOwo+ICAgCj4gICAJLyogUmVsZWFzZSBjb250cm9sIG9mIGgv
dyB0byBmL3cuICBJZiBmL3cgaXMgQU1UIGVuYWJsZWQsIHRoaXMKPiAgIAkgKiB3b3VsZCBoYXZl
IGFscmVhZHkgaGFwcGVuZWQgaW4gY2xvc2UgYW5kIGlzIHJlZHVuZGFudC4KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY190c24uYyBiL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfdHNuLmMKPiBpbmRleCA2YjI5OWI4M2U3ZWYyLi44MTc3
MDk1NTAyOWRjIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9p
Z2NfdHNuLmMKPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX3Rzbi5j
Cj4gQEAgLTExNCw3ICsxMTQsNiBAQCBzdGF0aWMgaW50IGlnY190c25fZGlzYWJsZV9vZmZsb2Fk
KHN0cnVjdCBpZ2NfYWRhcHRlciAqYWRhcHRlcikKPiAgIHN0YXRpYyBpbnQgaWdjX3Rzbl9lbmFi
bGVfb2ZmbG9hZChzdHJ1Y3QgaWdjX2FkYXB0ZXIgKmFkYXB0ZXIpCj4gICB7Cj4gICAJc3RydWN0
IGlnY19odyAqaHcgPSAmYWRhcHRlci0+aHc7Cj4gLQlib29sIHRzbl9tb2RlX3JlY29uZmlnID0g
ZmFsc2U7Cj4gICAJdTMyIHRxYXZjdHJsLCBiYXNldF9sLCBiYXNldF9oOwo+ICAgCXUzMiBzZWMs
IG5zZWMsIGN5Y2xlOwo+ICAgCWt0aW1lX3QgYmFzZV90aW1lLCBzeXN0aW07Cj4gQEAgLTIyOCwx
MSArMjI3LDEwIEBAIHN0YXRpYyBpbnQgaWdjX3Rzbl9lbmFibGVfb2ZmbG9hZChzdHJ1Y3QgaWdj
X2FkYXB0ZXIgKmFkYXB0ZXIpCj4gICAKPiAgIAl0cWF2Y3RybCA9IHJkMzIoSUdDX1RRQVZDVFJM
KSAmIH5JR0NfVFFBVkNUUkxfRlVUU0NERElTOwo+ICAgCj4gLQlpZiAodHFhdmN0cmwgJiBJR0Nf
VFFBVkNUUkxfVFJBTlNNSVRfTU9ERV9UU04pCj4gLQkJdHNuX21vZGVfcmVjb25maWcgPSB0cnVl
Owo+IC0KPiAgIAl0cWF2Y3RybCB8PSBJR0NfVFFBVkNUUkxfVFJBTlNNSVRfTU9ERV9UU04gfCBJ
R0NfVFFBVkNUUkxfRU5IQU5DRURfUUFWOwo+ICAgCj4gKwlhZGFwdGVyLT5xYnZfY291bnQrKzsK
PiArCj4gICAJY3ljbGUgPSBhZGFwdGVyLT5jeWNsZV90aW1lOwo+ICAgCWJhc2VfdGltZSA9IGFk
YXB0ZXItPmJhc2VfdGltZTsKPiAgIAo+IEBAIC0yNTAsMTcgKzI0OCwyOCBAQCBzdGF0aWMgaW50
IGlnY190c25fZW5hYmxlX29mZmxvYWQoc3RydWN0IGlnY19hZGFwdGVyICphZGFwdGVyKQo+ICAg
CQkgKi8KPiAgIAkJaWYgKChyZDMyKElHQ19CQVNFVF9IKSB8fCByZDMyKElHQ19CQVNFVF9MKSkg
JiYKPiAgIAkJICAgIChhZGFwdGVyLT50Y19zZXR1cF90eXBlID09IFRDX1NFVFVQX1FESVNDX1RB
UFJJTykgJiYKPiAtCQkgICAgdHNuX21vZGVfcmVjb25maWcpCj4gKwkJICAgIChhZGFwdGVyLT5x
YnZfY291bnQgPiAxKSkKPiAgIAkJCWFkYXB0ZXItPnFidl9jb25maWdfY2hhbmdlX2Vycm9ycysr
Owo+ICAgCX0gZWxzZSB7Cj4gLQkJLyogQWNjb3JkaW5nIHRvIGRhdGFzaGVldCBzZWN0aW9uIDcu
NS4yLjkuMy4zLCBGdXRTY2REaXMgYml0Cj4gLQkJICogaGFzIHRvIGJlIGNvbmZpZ3VyZWQgYmVm
b3JlIHRoZSBjeWNsZSB0aW1lIGFuZCBiYXNlIHRpbWUuCj4gLQkJICogVHggd29uJ3QgaGFuZyBp
ZiB0aGVyZSBpcyBhIEdDTCBpcyBhbHJlYWR5IHJ1bm5pbmcsCj4gLQkJICogc28gaW4gdGhpcyBj
YXNlIHdlIGRvbid0IG5lZWQgdG8gc2V0IEZ1dFNjZERpcy4KPiAtCQkgKi8KPiAtCQlpZiAoaWdj
X2lzX2RldmljZV9pZF9pMjI2KGh3KSAmJgo+IC0JCSAgICAhKHJkMzIoSUdDX0JBU0VUX0gpIHx8
IHJkMzIoSUdDX0JBU0VUX0wpKSkKPiAtCQkJdHFhdmN0cmwgfD0gSUdDX1RRQVZDVFJMX0ZVVFND
RERJUzsKPiArCQlpZiAoaWdjX2lzX2RldmljZV9pZF9pMjI2KGh3KSkgewo+ICsJCQlrdGltZV90
IGFkanVzdF90aW1lLCBleHBpcmVzX3RpbWU7Cj4gKwo+ICsJCSAgICAgICAvKiBBY2NvcmRpbmcg
dG8gZGF0YXNoZWV0IHNlY3Rpb24gNy41LjIuOS4zLjMsIEZ1dFNjZERpcyBiaXQKPiArCQkJKiBo
YXMgdG8gYmUgY29uZmlndXJlZCBiZWZvcmUgdGhlIGN5Y2xlIHRpbWUgYW5kIGJhc2UgdGltZS4K
PiArCQkJKiBUeCB3b24ndCBoYW5nIGlmIHRoZXJlIGlzIGEgR0NMIGlzIGFscmVhZHkgcnVubmlu
ZywKClJlbW92ZSBzZWNvbmQgKmlzKj8KCj4gKwkJCSogc28gaW4gdGhpcyBjYXNlIHdlIGRvbid0
IG5lZWQgdG8gc2V0IEZ1dFNjZERpcy4KPiArCQkJKi8KPiArCQkJaWYgKCEocmQzMihJR0NfQkFT
RVRfSCkgfHwgcmQzMihJR0NfQkFTRVRfTCkpKQo+ICsJCQkJdHFhdmN0cmwgfD0gSUdDX1RRQVZD
VFJMX0ZVVFNDRERJUzsKPiArCj4gKwkJCW5zZWMgPSByZDMyKElHQ19TWVNUSU1MKTsKPiArCQkJ
c2VjID0gcmQzMihJR0NfU1lTVElNSCk7Cj4gKwkJCXN5c3RpbSA9IGt0aW1lX3NldChzZWMsIG5z
ZWMpOwo+ICsKPiArCQkJYWRqdXN0X3RpbWUgPSBhZGFwdGVyLT5iYXNlX3RpbWU7Cj4gKwkJCWV4
cGlyZXNfdGltZSA9IGt0aW1lX3N1Yl9ucyhhZGp1c3RfdGltZSwgc3lzdGltKTsKPiArCQkJaHJ0
aW1lcl9zdGFydCgmYWRhcHRlci0+aHJ0aW1lciwgZXhwaXJlc190aW1lLCBIUlRJTUVSX01PREVf
UkVMKTsKPiArCQl9Cj4gICAJfQo+ICAgCj4gICAJd3IzMihJR0NfVFFBVkNUUkwsIHRxYXZjdHJs
KTsKPiBAQCAtMzA2LDcgKzMxNSwxMSBAQCBpbnQgaWdjX3Rzbl9vZmZsb2FkX2FwcGx5KHN0cnVj
dCBpZ2NfYWRhcHRlciAqYWRhcHRlcikKPiAgIHsKPiAgIAlzdHJ1Y3QgaWdjX2h3ICpodyA9ICZh
ZGFwdGVyLT5odzsKPiAgIAo+IC0JaWYgKG5ldGlmX3J1bm5pbmcoYWRhcHRlci0+bmV0ZGV2KSAm
JiBpZ2NfaXNfZGV2aWNlX2lkX2kyMjUoaHcpKSB7Cj4gKwkvKiBQZXIgSTIyNS82IEhXIERlc2ln
biBTZWN0aW9uIDcuNS4yLjEsIHRyYW5zbWl0IG1vZGUKPiArCSAqIGNhbm5vdCBiZSBjaGFuZ2Ug
ZHluYW1pY2FsbHkuIFJlcXVpcmUgcmVzZXQgdGhlIGFkYXB0ZXIuCgpjaGFuZ2UqZCoKCj4gKwkg
Ki8KPiArCWlmIChuZXRpZl9ydW5uaW5nKGFkYXB0ZXItPm5ldGRldikgJiYKPiArCSAgICAoaWdj
X2lzX2RldmljZV9pZF9pMjI1KGh3KSB8fCAhYWRhcHRlci0+cWJ2X2NvdW50KSkgewo+ICAgCQlz
Y2hlZHVsZV93b3JrKCZhZGFwdGVyLT5yZXNldF90YXNrKTsKPiAgIAkJcmV0dXJuIDA7Cj4gICAJ
fQoKCktpbmQgcmVnYXJkcywKClBhdWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1s
YW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC13aXJlZC1sYW4K
