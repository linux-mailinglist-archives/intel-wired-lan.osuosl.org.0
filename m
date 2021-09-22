Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 419DE414731
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Sep 2021 13:01:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8B4A640770;
	Wed, 22 Sep 2021 11:01:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xZBvgeLWPMPm; Wed, 22 Sep 2021 11:01:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 74BC040722;
	Wed, 22 Sep 2021 11:01:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 73FF81BF951
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Sep 2021 11:01:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6197740722
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Sep 2021 11:01:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Kb8loI2ukqFm for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Sep 2021 11:01:37 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5010B4035F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Sep 2021 11:01:36 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id C054A61E64784;
 Wed, 22 Sep 2021 13:01:33 +0200 (CEST)
To: Sasha Neftin <sasha.neftin@intel.com>
References: <20210922065542.3780389-1-sasha.neftin@intel.com>
 <3bbabd03-317f-7bb5-064e-5e2b648ca689@molgen.mpg.de>
 <f587f383-c5f3-3f47-9618-e15e2ea0939d@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <ae562410-3235-26b2-993d-b5c934344153@molgen.mpg.de>
Date: Wed, 22 Sep 2021 13:01:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <f587f383-c5f3-3f47-9618-e15e2ea0939d@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v1 2/2] e1000e: Fixing packet loss
 issues on new platforms
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

RGVhciBTYXNoYSwKCgpBbSAyMi4wOS4yMSB1bSAwOTozMCBzY2hyaWViIFNhc2hhIE5lZnRpbjoK
PiBPbiA5LzIyLzIwMjEgMTA6MDksIFBhdWwgTWVuemVsIHdyb3RlOgoKPj4gQW0gMjIuMDkuMjEg
dW0gMDg6NTUgc2NocmllYiBTYXNoYSBOZWZ0aW46Cj4+Cj4+IFBsZWFzZSB1c2UgaW1wZXJhdGl2
ZSBtb29kIGluIHRoZSBjb21taXQgbWVzc2FnZSBzdW1tYXJ5OiBGaXgg4oCmLiBNYXliZToKPj4K
Pj4gZTEwMDBlOiBGaXggcGFja2V0IGxvc3Mgb24gVGlnZXIgTGFrZSBhbmQgbGF0ZXIKPj4KPj4+
IFVwZGF0ZSB0aGUgSFcgTUFDIGluaXRpYWxpemF0aW9uIGZsb3cuIERvIG5vdCBnYXRlIERNQSBj
bG9jayBmcm9tCj4+PiB0aGUgbW9kUEhZIGJsb2NrLiBLZWVwaW5nIHRoaXMgY2xvY2sgd2lsbCBw
cmV2ZW50IGRyb3AgcGFja2V0cyBzZW50Cj4+Cj4+IGRyb3BwZWQKPj4KPj4+IGluIGJ1cnN0IG1v
ZGUgb24gdGhlIEt1bWVyYW4gaW50ZXJmYWNlLgo+Pgo+PiBXaGF0IGlzIEt1bWVyYW4/Cj4gaW50
ZXJmYWNlIHRvIGV4dGVybmFsIEdpZ2FiaXQgRXRoZXJuZXQgUEhZCgpUaGFuayB5b3UuIEZvciBz
b21lYm9keSBub3QgaGF2aW5nIGFsbCBuYW1lcyBtZW1vcml6ZWQsIHRoaXMgd291bGQgYmUgCmdv
b2QgdG8ga25vdyBpbiBteSBvcGluaW9uLgoKPj4gV2hlcmUgaXMgdGhlIG5ldyBIVyBNQUMgaW5p
dGlhbGl6YXRpb24gZmxvdyBkb2N1bWVudGVkPyBUaGUgc3BlYyBvciAKPj4gc29tZSBlcnJhdGE/
Cj4+Cj4+IEhvdyBjYW4gdGhlIGJ1ZyBiZSByZXByb2R1Y2VkPwo+IERlc2NyaWJlZCBpbiBidWd6
aWxsYSAtIHBsZWFzZSwgbWFrZSBzdXJlIHRoZSBidXJzdCB0cmFmZmljOgo+IHJ1biBjb21tYW5k
czoKPiB0YyBxZGlzYyBhZGQgZGV2IGVubzEgKGxhbiBkZXZpY2UgbmFtZSkgcm9vdCBuZXRlbSBk
ZWxheSA1IG1zIG9uIGNsaWVudCBzaWRlCj4gaXBlcmYgLXMgb24gc2VydmVyIHNpZGUKPiBpcGVy
ZiAtYyBzZXJ2ZXJfSVAgLVIgb24gY2xpZW50IHNpZGUKClRoYW5rIHlvdS4gSW4gbXkgb3Bpbmlv
biwgcmV2aWV3ZXJzIHNob3VsZCBoYXZlIHRoaXMgaW4gdGhlIGNvbW1pdCAKbWVzc2FnZSwgaW5z
dGVhZCBvZiByZWFkaW5nIHRocm91Z2ggc2V2ZXJhbCBjb21tZW50cyBpbiB0aGUgTGludXggCkJ1
Z3ppbGxhLiBBbHNvLCBhdCBsZWFzdCBpbiAjMjEzNjUxIHRoZSB0aXRsZSBhbmQgZmlyc3QgY29t
bWVudCB0YWxrcyAKYWJvdXQgSW50ZWwgTUUgKE1hbmFnZW1lbnQgRW5naW5lKS4KCj4+PiBCdWd6
aWxsYTogaHR0cHM6Ly9idWd6aWxsYS5rZXJuZWwub3JnL3Nob3dfYnVnLmNnaT9pZD0yMTM2NTEK
Pj4+IEJ1Z3ppbGxhOiBodHRwczovL2J1Z3ppbGxhLmtlcm5lbC5vcmcvc2hvd19idWcuY2dpP2lk
PTIxMzM3Nwo+Pj4gRml4ZXM6IGJjN2Y3NWZhOTc4OCAoIk5ldyBwY2ktZXhwcmVzcyBlMTAwMCBk
cml2ZXIiKTsKPj4+IFNpZ25lZC1vZmYtYnk6IFNhc2hhIE5lZnRpbiA8c2FzaGEubmVmdGluQGlu
dGVsLmNvbT4KPj4+IC0tLQo+Pj4gwqAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBl
L2ljaDhsYW4uYyB8IDExICsrKysrKysrKystCj4+PiDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9lMTAwMGUvaWNoOGxhbi5oIHzCoCAzICsrKwo+Pj4gwqAgMiBmaWxlcyBjaGFuZ2VkLCAx
MyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9pY2g4bGFuLmMgCj4+PiBiL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2UxMDAwZS9pY2g4bGFuLmMKPj4+IGluZGV4IDY2ZDcxOTYzMTBlMi4u
NWU0ZmM5YjRlMmFkIDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
ZTEwMDBlL2ljaDhsYW4uYwo+Pj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEw
MDBlL2ljaDhsYW4uYwo+Pj4gQEAgLTQ4MTMsNyArNDgxMyw3IEBAIHN0YXRpYyBzMzIgZTEwMDBf
cmVzZXRfaHdfaWNoOGxhbihzdHJ1Y3QgCj4+PiBlMTAwMF9odyAqaHcpCj4+PiDCoCBzdGF0aWMg
czMyIGUxMDAwX2luaXRfaHdfaWNoOGxhbihzdHJ1Y3QgZTEwMDBfaHcgKmh3KQo+Pj4gwqAgewo+
Pj4gwqDCoMKgwqDCoCBzdHJ1Y3QgZTEwMDBfbWFjX2luZm8gKm1hYyA9ICZody0+bWFjOwo+Pj4g
LcKgwqDCoCB1MzIgY3RybF9leHQsIHR4ZGN0bCwgc25vb3A7Cj4+PiArwqDCoMKgIHUzMiBjdHJs
X2V4dCwgdHhkY3RsLCBzbm9vcCwgZmZsdF9kYmc7Cj4+PiDCoMKgwqDCoMKgIHMzMiByZXRfdmFs
Owo+Pj4gwqDCoMKgwqDCoCB1MTYgaTsKPj4+IEBAIC00ODcyLDYgKzQ4NzIsMTUgQEAgc3RhdGlj
IHMzMiBlMTAwMF9pbml0X2h3X2ljaDhsYW4oc3RydWN0IAo+Pj4gZTEwMDBfaHcgKmh3KQo+Pj4g
wqDCoMKgwqDCoMKgwqDCoMKgIHNub29wID0gKHUzMil+KFBDSUVfTk9fU05PT1BfQUxMKTsKPj4+
IMKgwqDCoMKgwqAgZTEwMDBlX3NldF9wY2llX25vX3Nub29wKGh3LCBzbm9vcCk7Cj4+PiArwqDC
oMKgIC8qIEVuYWJsZSB3b3JrYXJvdW5kIGZvciBwYWNrZXQgbG9zcyBpc3N1ZSBvbiBUR1AgUENI
Cj4+Cj4+IE1heWJlOgo+Pgo+Pj4gV29yayBhcm91bmQgcGFja2V0IGxvc3MgaXNzdWUgb24gVEdQ
IFBDSCBhbmQgbGF0ZXIKPj4KPj4+ICvCoMKgwqDCoCAqIERvIG5vdCBnYXRlIERNQSBjbG9jayBm
cm9tIHRoZSBtb2RQSFkgYmxvY2sKPj4+ICvCoMKgwqDCoCAqLwo+Pj4gK8KgwqDCoCBpZiAobWFj
LT50eXBlID49IGUxMDAwX3BjaF90Z3ApIHsKPj4+ICvCoMKgwqDCoMKgwqDCoCBmZmx0X2RiZyA9
IGVyMzIoRkZMVF9EQkcpOwo+Pgo+PiBNYXliZSB0aGUgdmFyaWFibGUgYGN0cmxfZXh0YCBjb3Vs
ZCBiZSByZW5hbWVkIHRvIGB0bXBgIG9yIGB0bXAzMmAsIAo+PiBhbmQgcmV1c2VkLgo+IEkgcHJl
ZmVyIHRvIHN0YXkgd2l0aCBhIG1lYW5pbmdmdWwgbmFtZQoKVW5kZXJzdG9vZC4gSSBrbm93IGl0
4oCZcyBwZXJzb25hbCBwcmVmZXJlbmNlLgoKPj4+ICvCoMKgwqDCoMKgwqDCoCBmZmx0X2RiZyB8
PSBFMTAwMF9GRkxUX0RCR19ET05UX0dBVEVfV0FLRV9ETUFfQ0xLOwo+Pj4gK8KgwqDCoMKgwqDC
oMKgIGV3MzIoRkZMVF9EQkcsIGZmbHRfZGJnKTsKPj4+ICvCoMKgwqAgfQo+Pj4gKwo+Pj4gwqDC
oMKgwqDCoCBjdHJsX2V4dCA9IGVyMzIoQ1RSTF9FWFQpOwo+Pj4gwqDCoMKgwqDCoCBjdHJsX2V4
dCB8PSBFMTAwMF9DVFJMX0VYVF9ST19ESVM7Cj4+PiDCoMKgwqDCoMKgIGV3MzIoQ1RSTF9FWFQs
IGN0cmxfZXh0KTsKPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9l
MTAwMGUvaWNoOGxhbi5oIAo+Pj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUv
aWNoOGxhbi5oCj4+PiBpbmRleCBkNmEwOTJlNWVlNzQuLjI1MDRiMTFjMzE2OSAxMDA2NDQKPj4+
IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9pY2g4bGFuLmgKPj4+ICsr
KyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9pY2g4bGFuLmgKPj4+IEBAIC0y
ODksNiArMjg5LDkgQEAKPj4+IMKgIC8qIFByb3ByaWV0YXJ5IExhdGVuY3kgVG9sZXJhbmNlIFJl
cG9ydGluZyBQQ0kgQ2FwYWJpbGl0eSAqLwo+Pj4gwqAgI2RlZmluZSBFMTAwMF9QQ0lfTFRSX0NB
UF9MUFTCoMKgwqDCoMKgwqDCoCAweEE4Cj4+PiArLyogRG9uJ3QgZ2F0ZSB3YWtlIERNQSBjbG9j
ayAqLwo+Pj4gKyNkZWZpbmUgRTEwMDBfRkZMVF9EQkdfRE9OVF9HQVRFX1dBS0VfRE1BX0NMS8Kg
wqDCoCAweDEwMDAKPj4+ICsKPj4+IMKgIHZvaWQgZTEwMDBlX3dyaXRlX3Byb3RlY3RfbnZtX2lj
aDhsYW4oc3RydWN0IGUxMDAwX2h3ICpodyk7Cj4+PiDCoCB2b2lkIGUxMDAwZV9zZXRfa21ybl9s
b2NrX2xvc3Nfd29ya2Fyb3VuZF9pY2g4bGFuKHN0cnVjdCBlMTAwMF9odyAqaHcsCj4+PiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYm9vbCBz
dGF0ZSk7Cj4+PgoKCktpbmQgcmVnYXJkcywKClBhdWwKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRl
bC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
