Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C7FB63B1391
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Jun 2021 07:58:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C91926069C;
	Wed, 23 Jun 2021 05:58:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1FZT-9ovm5OS; Wed, 23 Jun 2021 05:58:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 91A3C605D7;
	Wed, 23 Jun 2021 05:58:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3A1831BF584
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jun 2021 05:58:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 34A23403A3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jun 2021 05:58:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9cBp7XdzisM4 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Jun 2021 05:58:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0862D40341
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jun 2021 05:58:02 +0000 (UTC)
Received: from [192.168.0.5] (ip5f5ae8bc.dynamic.kabel-deutschland.de
 [95.90.232.188])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 9A24E61E5FE33;
 Wed, 23 Jun 2021 07:58:00 +0200 (CEST)
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
References: <20210622212134.341728-1-michal.swiatkowski@linux.intel.com>
 <20210622212134.341728-2-michal.swiatkowski@linux.intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <f1083357-9eb9-3bbb-baa5-0b4392ca4d4f@molgen.mpg.de>
Date: Wed, 23 Jun 2021 07:58:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210622212134.341728-2-michal.swiatkowski@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 01/12] ice: basic support
 for eswitch mode management
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
Cc: intel-wired-lan@lists.osuosl.org, Grzegorz Nitka <grzegorz.nitka@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBNaWNoYWwsIGRlYXIgR3J6ZWdvcnosCgoKQW0gMjIuMDYuMjEgdW0gMjM6MjEgc2Nocmll
YiBNaWNoYWwgU3dpYXRrb3dza2k6Cj4gV3JpdGUgc2V0IGFuZCBnZXQgZXN3aXRjaCBtb2RlIGZ1
bmN0aW9ucyB1c2VkIGJ5IGRldmxpbmsKCkNvbW1pdCAwOGY0YjU5MThiMiAobmV0L2Rldmxpbms6
IEFkZCBFLVN3aXRjaCBtb2RlIGNvbnRyb2wpIHNwZWxscyBpdCAKRS1Td2l0Y2ggbW9kZS4KClRv
IG1ha2UgdGhlIGNvbW1pdCBzdW1tYXJ5IGEgc3RhdGVtZW50LCBtYXliZSB1c2U6CgogPiBpY2U6
IFN1cHBvcnQgYmFzaWMgRS1Td2l0Y2ggbW9kZSBjb250cm9sCgo+IG9wcy4gVXNlIG5ldyBwZiBz
dHJ1Y3QgbWVtYmVyIGVzd2l0Y2hfbW9kZSB0byB0cmFjayBjdXJyZW50Cj4gZXN3aXRjaCBtb2Rl
IGluIGRyaXZlci4KPiAKPiBDaGFuZ2luZyBlc3dpdGNoIG1vZGUgaXMgb25seSBhbGxvd2VkIHdo
ZW4gdGhlcmUgYXJlIG5vCj4gVkZzIGNyZWF0ZWQuCj4gCj4gQ3JlYXRlIG5ldyBmaWxlIGZvciBl
c3dpdGNoIHJlbGF0ZWQgY29kZS4KPiAKPiBBZGQgY29uZmlnIGZsYWcgSUNFX1NXSVRDSERFViB0
byBhbGxvdyB1c2VyIHRvIGNob29zZSBpZgo+IHN3aXRjaGRldiBzdXBwb3J0IHNob3VsZCBiZSBl
bmFibGVkIG9yIGRpc2FibGVkLgo+IAo+IFVzZSBjYXNlIGV4YW1wbGVzOgo+IC0gc2hvdyBjdXJy
ZW50IGVzd2l0Y2ggbW9kZSAoJ2xlZ2FjeScgaXMgdGhlIGRlZmF1bHQgb25lKQo+IFtyb290QGxv
Y2FsaG9zdF0jIGRldmxpbmsgZGV2IGVzd2l0Y2ggc2hvdyBwY2kvMDAwMDowMzowMC4xCj4+IHBj
aS8wMDAwOjAzOjAwLjE6IG1vZGUgbGVnYWN5CgpBdCBsZWFzdCBNb3ppbGxhIFRodW5kZXJiaXJk
IGRpc3BsYXlzIHRoaXMgYXMgYSBxdW90ZS4gSXMgeW91ciBgZGV2bGlua2AgCmNvbW1hbmQgcmVh
bGx5IHByZXBlbmRpbmcgYSA+PwoKPiAtIG1vdmUgdG8gJ3N3aXRjaGRldicgbW9kZQo+IFtyb290
QGxvY2FsaG9zdF0jIGRldmxpbmsgZGV2IGVzd2l0Y2ggc2V0IHBjaS8wMDAwOjAzOjAwLjEgbW9k
ZQo+IHN3aXRjaGRldgo+IFtyb290QGxvY2FsaG9zdF0jIGRldmxpbmsgZGV2IGVzd2l0Y2ggc2hv
dyBwY2kvMDAwMDowMzowMC4xCj4+IHBjaS8wMDAwOjAzOjAwLjE6IG1vZGUgc3dpdGNoZGV2Cj4g
Cj4gLSBjcmVhdGUgMiBWRnMKPiBbcm9vdEBsb2NhbGhvc3RdIyBlY2hvIDIgPiAvc3lzL2NsYXNz
L25ldC9lbnM0ZjEvZGV2aWNlL3NyaW92X251bXZmcwo+IAo+IC0gdW5zdWNjZXNzZnVsIGF0dGVt
cHQgdG8gY2hhbmdlIGVzd2l0Y2ggbW9kZSB3aGlsZSBWRnMgYXJlIGNyZWF0ZWQKPiBbcm9vdEBs
b2NhbGhvc3RdIyBkZXZsaW5rIGRldiBlc3dpdGNoIHNldCBwY2kvMDAwMDowMzowMC4xIG1vZGUg
bGVnYWN5Cj4+IGRldmxpbmsgYW5zd2VyczogT3BlcmF0aW9uIG5vdCBzdXBwb3J0ZWQKPiAKPiAt
IGRlc3Ryb3kgVkZzCj4gW3Jvb3RAbG9jYWxob3N0XSMgZWNobyAwID4gL3N5cy9jbGFzcy9uZXQv
ZW5zNGYxL2RldmljZS9zcmlvdl9udW12ZnMKPiAKPiAtIHJlc3RvcmUgJ2xlZ2FjeScgbW9kZQo+
IFtyb290QGxvY2FsaG9zdF0jIGRldmxpbmsgZGV2IGVzd2l0Y2ggc2V0IHBjaS8wMDAwOjAzOjAw
LjEgbW9kZSBsZWdhY3kKPiBbcm9vdEBsb2NhbGhvc3RdIyBkZXZsaW5rIGRldiBlc3dpdGNoIHNo
b3cgcGNpLzAwMDA6MDM6MDAuMQo+PiBwY2kvMDAwMDowMzowMC4xOiBtb2RlIGxlZ2FjeQoKVGhh
bmsgeW91IGZvciBhZGRpbmcgdGhlc2UgZXhhbXBsZXMgdG8gdGhlIGNvbW1pdCBtZXNzYWdlLiBJ
4oCZZCBwdXQgc29tZSAKb2YgdGhlbSBpbnRvIHRoZSBLY29uZmlnIGRlc2NyaXB0aW9uIG9mIGBJ
Q0VfU1dJVENIREVWYC4KCgpLaW5kIHJlZ2FyZHMsCgpQYXVsCgoKPiBDby1kZXZlbG9wZWQtYnk6
IEdyemVnb3J6IE5pdGthIDxncnplZ29yei5uaXRrYUBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1i
eTogR3J6ZWdvcnogTml0a2EgPGdyemVnb3J6Lm5pdGthQGludGVsLmNvbT4KPiBTaWduZWQtb2Zm
LWJ5OiBNaWNoYWwgU3dpYXRrb3dza2kgPG1pY2hhbC5zd2lhdGtvd3NraUBsaW51eC5pbnRlbC5j
b20+Cj4gLS0tCj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9LY29uZmlnICAgICAgICAg
ICB8IDEwICsrKysKPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9NYWtlZmlsZSAg
ICAgIHwgIDEgKwo+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZS5oICAgICAg
ICAgfCAgMSArCj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2Rldmxpbmsu
YyB8ICAzICsKPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZXN3aXRjaC5j
IHwgNjIgKysrKysrKysrKysrKysrKysrKysKPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2ljZS9pY2VfZXN3aXRjaC5oIHwgMzQgKysrKysrKysrKysKPiAgIDYgZmlsZXMgY2hhbmdlZCwg
MTExIGluc2VydGlvbnMoKykKPiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pY2UvaWNlX2Vzd2l0Y2guYwo+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZXN3aXRjaC5oCj4gCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL0tjb25maWcgYi9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9LY29uZmlnCj4gaW5kZXggMzYzOWNmNzljZmFlLi40ZGE4YjM5MzBmNmUgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvS2NvbmZpZwo+ICsrKyBiL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL0tjb25maWcKPiBAQCAtMzEzLDYgKzMxMywxNiBAQCBjb25m
aWcgSUNFCj4gICAJICBUbyBjb21waWxlIHRoaXMgZHJpdmVyIGFzIGEgbW9kdWxlLCBjaG9vc2Ug
TSBoZXJlLiBUaGUgbW9kdWxlCj4gICAJICB3aWxsIGJlIGNhbGxlZCBpY2UuCj4gICAKPiArY29u
ZmlnIElDRV9TV0lUQ0hERVYKPiArCWJvb2wgIlN3aXRjaGRldiBTdXBwb3J0Igo+ICsJZGVmYXVs
dCB5Cj4gKwlkZXBlbmRzIG9uIElDRSAmJiBORVRfU1dJVENIREVWCj4gKwloZWxwCj4gKwkgIFNh
eSBZIGhlcmUgaWYgeW91IHdhbnQgdG8gdXNlIFN3aXRjaGRldiBpbiB0aGUKPiArCSAgZHJpdmVy
Lgo+ICsKPiArCSAgSWYgdW5zdXJlLCBzYXkgTi4KPiArCj4gICBjb25maWcgRk0xMEsKPiAgIAl0
cmlzdGF0ZSAiSW50ZWwoUikgRk0xMDAwMCBFdGhlcm5ldCBTd2l0Y2ggSG9zdCBJbnRlcmZhY2Ug
U3VwcG9ydCIKPiAgIAlkZWZhdWx0IG4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWNlL01ha2VmaWxlIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL01h
a2VmaWxlCj4gaW5kZXggNGY1MzhjZGY0MmMxLi4wNTQ1NTk0YzgwYmEgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL01ha2VmaWxlCj4gKysrIGIvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWNlL01ha2VmaWxlCj4gQEAgLTMzLDMgKzMzLDQgQEAgaWNlLSQo
Q09ORklHX1BUUF8xNTg4X0NMT0NLKSArPSBpY2VfcHRwLm8gaWNlX3B0cF9ody5vCj4gICBpY2Ut
JChDT05GSUdfRENCKSArPSBpY2VfZGNiLm8gaWNlX2RjYl9ubC5vIGljZV9kY2JfbGliLm8KPiAg
IGljZS0kKENPTkZJR19SRlNfQUNDRUwpICs9IGljZV9hcmZzLm8KPiAgIGljZS0kKENPTkZJR19Y
RFBfU09DS0VUUykgKz0gaWNlX3hzay5vCj4gK2ljZS0kKENPTkZJR19JQ0VfU1dJVENIREVWKSAr
PSBpY2VfZXN3aXRjaC5vCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2ljZS9pY2UuaCBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2UuaAo+IGluZGV4
IGY0NzI5Y2FjY2JlOS4uNzI5ZDM3NWZiZWJjIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2ljZS9pY2UuaAo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2ljZS9pY2UuaAo+IEBAIC00MzAsNiArNDMwLDcgQEAgc3RydWN0IGljZV9wZiB7Cj4gICAKPiAg
IAlzdHJ1Y3QgaWNlX3ZzaSAqKnZzaTsJCS8qIFZTSXMgY3JlYXRlZCBieSB0aGUgZHJpdmVyICov
Cj4gICAJc3RydWN0IGljZV9zdyAqZmlyc3Rfc3c7CS8qIGZpcnN0IHN3aXRjaCBjcmVhdGVkIGJ5
IGZpcm13YXJlICovCj4gKwl1MTYgZXN3aXRjaF9tb2RlOwkJLyogY3VycmVudCBtb2RlIG9mIGVz
d2l0Y2ggKi8KPiAgIAkvKiBWaXJ0Y2hubC9TUi1JT1YgY29uZmlnIGluZm8gKi8KPiAgIAlzdHJ1
Y3QgaWNlX3ZmICp2ZjsKPiAgIAl1MTYgbnVtX2FsbG9jX3ZmczsJCS8qIGFjdHVhbCBudW1iZXIg
b2YgVkZzIGFsbG9jYXRlZCAqLwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pY2UvaWNlX2RldmxpbmsuYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9p
Y2VfZGV2bGluay5jCj4gaW5kZXggZDY5NTA3ZDU3ZGUxLi5kZTZkMGE4YmExYTggMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9kZXZsaW5rLmMKPiArKysg
Yi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2RldmxpbmsuYwo+IEBAIC00LDYg
KzQsNyBAQAo+ICAgI2luY2x1ZGUgImljZS5oIgo+ICAgI2luY2x1ZGUgImljZV9saWIuaCIKPiAg
ICNpbmNsdWRlICJpY2VfZGV2bGluay5oIgo+ICsjaW5jbHVkZSAiaWNlX2Vzd2l0Y2guaCIKPiAg
ICNpbmNsdWRlICJpY2VfZndfdXBkYXRlLmgiCj4gICAKPiAgIC8qIGNvbnRleHQgZm9yIGRldmxp
bmsgaW5mbyB2ZXJzaW9uIHJlcG9ydGluZyAqLwo+IEBAIC00MjMsNiArNDI0LDggQEAgaWNlX2Rl
dmxpbmtfZmxhc2hfdXBkYXRlKHN0cnVjdCBkZXZsaW5rICpkZXZsaW5rLAo+ICAgCj4gICBzdGF0
aWMgY29uc3Qgc3RydWN0IGRldmxpbmtfb3BzIGljZV9kZXZsaW5rX29wcyA9IHsKPiAgIAkuc3Vw
cG9ydGVkX2ZsYXNoX3VwZGF0ZV9wYXJhbXMgPSBERVZMSU5LX1NVUFBPUlRfRkxBU0hfVVBEQVRF
X09WRVJXUklURV9NQVNLLAo+ICsJLmVzd2l0Y2hfbW9kZV9nZXQgPSBpY2VfZXN3aXRjaF9tb2Rl
X2dldCwKPiArCS5lc3dpdGNoX21vZGVfc2V0ID0gaWNlX2Vzd2l0Y2hfbW9kZV9zZXQsCj4gICAJ
LmluZm9fZ2V0ID0gaWNlX2RldmxpbmtfaW5mb19nZXQsCj4gICAJLmZsYXNoX3VwZGF0ZSA9IGlj
ZV9kZXZsaW5rX2ZsYXNoX3VwZGF0ZSwKPiAgIH07Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZXN3aXRjaC5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWNlL2ljZV9lc3dpdGNoLmMKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAw
MDAwMDAwMDAwMC4uMTM3MGM0MWI3N2FiCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZXN3aXRjaC5jCj4gQEAgLTAsMCArMSw2MiBAQAo+
ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMAo+ICsvKiBDb3B5cmlnaHQgKEMp
IDIwMTktMjAyMSwgSW50ZWwgQ29ycG9yYXRpb24uICovCj4gKwo+ICsjaW5jbHVkZSAiaWNlLmgi
Cj4gKyNpbmNsdWRlICJpY2VfZXN3aXRjaC5oIgo+ICsjaW5jbHVkZSAiaWNlX2RldmxpbmsuaCIK
PiArCj4gKy8qKgo+ICsgKiBpY2VfZXN3aXRjaF9tb2RlX3NldCAtIHNldCBuZXcgZXN3aXRjaCBt
b2RlCj4gKyAqIEBkZXZsaW5rOiBwb2ludGVyIHRvIGRldmxpbmsgc3RydWN0dXJlCj4gKyAqIEBt
b2RlOiBlc3dpdGNoIG1vZGUgdG8gc3dpdGNoIHRvCj4gKyAqIEBleHRhY2s6IHBvaW50ZXIgdG8g
ZXh0YWNrIHN0cnVjdHVyZQo+ICsgKi8KPiAraW50Cj4gK2ljZV9lc3dpdGNoX21vZGVfc2V0KHN0
cnVjdCBkZXZsaW5rICpkZXZsaW5rLCB1MTYgbW9kZSwKPiArCQkgICAgIHN0cnVjdCBuZXRsaW5r
X2V4dF9hY2sgKmV4dGFjaykKPiArewo+ICsJc3RydWN0IGljZV9wZiAqcGYgPSBkZXZsaW5rX3By
aXYoZGV2bGluayk7Cj4gKwo+ICsJaWYgKHBmLT5lc3dpdGNoX21vZGUgPT0gbW9kZSkKPiArCQly
ZXR1cm4gMDsKPiArCj4gKwlpZiAocGYtPm51bV9hbGxvY192ZnMpIHsKPiArCQlkZXZfaW5mbyhp
Y2VfcGZfdG9fZGV2KHBmKSwgIkNoYW5naW5nIGVzd2l0Y2ggbW9kZSBpcyBhbGxvd2VkIG9ubHkg
aWYgdGhlcmUgaXMgbm8gVkZzIGNyZWF0ZWQiKTsKPiArCQlOTF9TRVRfRVJSX01TR19NT0QoZXh0
YWNrLCAiQ2hhbmdpbmcgZXN3aXRjaCBtb2RlIGlzIGFsbG93ZWQgb25seSBpZiB0aGVyZSBpcyBu
byBWRnMgY3JlYXRlZCIpOwo+ICsJCXJldHVybiAtRU9QTk9UU1VQUDsKPiArCX0KPiArCj4gKwlz
d2l0Y2ggKG1vZGUpIHsKPiArCWNhc2UgREVWTElOS19FU1dJVENIX01PREVfTEVHQUNZOgo+ICsJ
CWRldl9pbmZvKGljZV9wZl90b19kZXYocGYpLCAiUEYgJWQgY2hhbmdlZCBlc3dpdGNoIG1vZGUg
dG8gbGVnYWN5IiwKPiArCQkJIHBmLT5ody5wZl9pZCk7Cj4gKwkJTkxfU0VUX0VSUl9NU0dfTU9E
KGV4dGFjaywgIkNoYW5nZWQgZXN3aXRjaCBtb2RlIHRvIGxlZ2FjeSIpOwo+ICsJCWJyZWFrOwo+
ICsJY2FzZSBERVZMSU5LX0VTV0lUQ0hfTU9ERV9TV0lUQ0hERVY6Cj4gKwl7Cj4gKwkJZGV2X2lu
Zm8oaWNlX3BmX3RvX2RldihwZiksICJQRiAlZCBjaGFuZ2VkIGVzd2l0Y2ggbW9kZSB0byBzd2l0
Y2hkZXYiLAo+ICsJCQkgcGYtPmh3LnBmX2lkKTsKPiArCQlOTF9TRVRfRVJSX01TR19NT0QoZXh0
YWNrLCAiQ2hhbmdlZCBlc3dpdGNoIG1vZGUgdG8gc3dpdGNoZGV2Iik7Cj4gKwkJYnJlYWs7Cj4g
Kwl9Cj4gKwlkZWZhdWx0Ogo+ICsJCU5MX1NFVF9FUlJfTVNHX01PRChleHRhY2ssICJVbmtub3du
IGVzd2l0Y2ggbW9kZSIpOwo+ICsJCXJldHVybiAtRUlOVkFMOwo+ICsJfQo+ICsKPiArCXBmLT5l
c3dpdGNoX21vZGUgPSBtb2RlOwo+ICsJcmV0dXJuIDA7Cj4gK30KPiArCj4gKy8qKgo+ICsgKiBp
Y2VfZXN3aXRjaF9tb2RlX2dldCAtIGdldCBjdXJyZW50IGVzd2l0Y2ggbW9kZQo+ICsgKiBAZGV2
bGluazogcG9pbnRlciB0byBkZXZsaW5rIHN0cnVjdHVyZQo+ICsgKiBAbW9kZTogb3V0cHV0IHBh
cmFtZXRlciBmb3IgY3VycmVudCBlc3dpdGNoIG1vZGUKPiArICovCj4gK2ludCBpY2VfZXN3aXRj
aF9tb2RlX2dldChzdHJ1Y3QgZGV2bGluayAqZGV2bGluaywgdTE2ICptb2RlKQo+ICt7Cj4gKwlz
dHJ1Y3QgaWNlX3BmICpwZiA9IGRldmxpbmtfcHJpdihkZXZsaW5rKTsKPiArCj4gKwkqbW9kZSA9
IHBmLT5lc3dpdGNoX21vZGU7Cj4gKwlyZXR1cm4gMDsKPiArfQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2Vzd2l0Y2guaCBiL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2ljZS9pY2VfZXN3aXRjaC5oCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBp
bmRleCAwMDAwMDAwMDAwMDAuLjBhYTZmYjdlMGM0ZQo+IC0tLSAvZGV2L251bGwKPiArKysgYi9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2Vzd2l0Y2guaAo+IEBAIC0wLDAgKzEs
MzQgQEAKPiArLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAgKi8KPiArLyogQ29w
eXJpZ2h0IChDKSAyMDE5LTIwMjEsIEludGVsIENvcnBvcmF0aW9uLiAqLwo+ICsKPiArI2lmbmRl
ZiBfSUNFX0VTV0lUQ0hfSF8KPiArI2RlZmluZSBfSUNFX0VTV0lUQ0hfSF8KPiArI2luY2x1ZGUg
PG5ldC9kZXZsaW5rLmg+Cj4gKwo+ICsjaWZkZWYgQ09ORklHX0lDRV9TV0lUQ0hERVYKPiAraW50
IGljZV9lc3dpdGNoX21vZGVfZ2V0KHN0cnVjdCBkZXZsaW5rICpkZXZsaW5rLCB1MTYgKm1vZGUp
Owo+ICtpbnQKPiAraWNlX2Vzd2l0Y2hfbW9kZV9zZXQoc3RydWN0IGRldmxpbmsgKmRldmxpbmss
IHUxNiBtb2RlLAo+ICsJCSAgICAgc3RydWN0IG5ldGxpbmtfZXh0X2FjayAqZXh0YWNrKTsKPiAr
Ym9vbCBpY2VfaXNfZXN3aXRjaF9tb2RlX3N3aXRjaGRldihzdHJ1Y3QgaWNlX3BmICpwZik7Cj4g
KyNlbHNlIC8qIENPTkZJR19JQ0VfU1dJVENIREVWICovCj4gK3N0YXRpYyBpbmxpbmUgaW50Cj4g
K2ljZV9lc3dpdGNoX21vZGVfZ2V0KHN0cnVjdCBkZXZsaW5rICpkZXZsaW5rLCB1MTYgKm1vZGUp
Cj4gK3sKPiArCXJldHVybiBERVZMSU5LX0VTV0lUQ0hfTU9ERV9MRUdBQ1k7Cj4gK30KPiArCj4g
K3N0YXRpYyBpbmxpbmUgaW50Cj4gK2ljZV9lc3dpdGNoX21vZGVfc2V0KHN0cnVjdCBkZXZsaW5r
ICpkZXZsaW5rLCB1MTYgbW9kZSwKPiArCQkgICAgIHN0cnVjdCBuZXRsaW5rX2V4dF9hY2sgKmV4
dGFjaykKPiArewo+ICsJcmV0dXJuIC1FT1BOT1RTVVBQOwo+ICt9Cj4gKwo+ICtzdGF0aWMgaW5s
aW5lIGJvb2wKPiAraWNlX2lzX2Vzd2l0Y2hfbW9kZV9zd2l0Y2hkZXYoc3RydWN0IGljZV9wZiAq
cGYpCj4gK3sKPiArCXJldHVybiBmYWxzZTsKPiArfQo+ICsjZW5kaWYgLyogQ09ORklHX0lDRV9T
V0lUQ0hERVYgKi8KPiArI2VuZGlmCj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQt
bGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtd2lyZWQtbGFuCg==
