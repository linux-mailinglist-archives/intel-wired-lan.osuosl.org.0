Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4741443DB67
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Oct 2021 08:43:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C371C402DB;
	Thu, 28 Oct 2021 06:43:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q1t0aeTLQ4Ws; Thu, 28 Oct 2021 06:43:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 27588401C3;
	Thu, 28 Oct 2021 06:43:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2712A1BF350
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Oct 2021 06:43:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1CF2C401C3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Oct 2021 06:43:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RG-9-KAvBkSq for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Oct 2021 06:43:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3FBA4400F7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Oct 2021 06:43:20 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5aef59.dynamic.kabel-deutschland.de
 [95.90.239.89])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 1688E61E64846;
 Thu, 28 Oct 2021 08:43:17 +0200 (CEST)
Message-ID: <a9ab1f26-69f6-9f31-8ffb-14a7bfa21505@molgen.mpg.de>
Date: Thu, 28 Oct 2021 08:43:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
To: Jacob Keller <jacob.e.keller@intel.com>
References: <20211027232255.669167-1-jacob.e.keller@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20211027232255.669167-1-jacob.e.keller@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH v7 1/2] ice: reduce time to read
 Option ROM CIVD data
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
Cc: intel-wired-lan@lists.osuosl.org, linux-pci@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

W0NjOiArbGludXgtcGNpIGZvciBpZGVhcyBob3cgdG8gd29yayB3aXRoIE9wdGlvbiBST01zXQoK
RGVhciBKYWNvYiwKCgpPbiAyOC4xMC4yMSAwMToyMiwgSmFjb2IgS2VsbGVyIHdyb3RlOgo+IER1
cmluZyBwcm9iZSBhbmQgZGV2aWNlIHJlc2V0LCB0aGUgaWNlIGRyaXZlciByZWFkcyBzb21lIGRh
dGEgZnJvbSB0aGUKPiBOVk0gaW1hZ2UgYXMgcGFydCBvZiBpY2VfaW5pdF9udm0uIFBhcnQgb2Yg
dGhpcyBkYXRhIGluY2x1ZGVzIGEgc2VjdGlvbgo+IG9mIHRoZSBPcHRpb24gUk9NIHdoaWNoIGNv
bnRhaW5zIHZlcnNpb24gaW5mb3JtYXRpb24uCj4gCj4gVGhlIGZ1bmN0aW9uIGljZV9nZXRfb3Jv
bV9jaXZkX2RhdGEgaXMgdXNlZCB0byBsb2NhdGUgdGhlICckQ0lWJyBkYXRhCj4gc2VjdGlvbiBv
ZiB0aGUgT3B0aW9uIFJPTS4KPiAKPiBUaW1pbmcgb2YgaWNlX3Byb2JlIGFuZCBpY2VfcmVidWls
ZCBpbmRpY2F0ZSB0aGF0IHRoZQo+IGljZV9nZXRfb3JvbV9jaXZkX2RhdGEgZnVuY3Rpb24gdGFr
ZXMgYWJvdXQgMTAgc2Vjb25kcyB0byBmaW5pc2gKPiBleGVjdXRpbmcuCj4gCj4gVGhlIGZ1bmN0
aW9uIGxvY2F0ZXMgdGhlIHNlY3Rpb24gYnkgc2Nhbm5pbmcgdGhlIE9wdGlvbiBST00gZXZlcnkg
NTEyCj4gYnl0ZXMuIFRoaXMgcmVxdWlyZXMgYSBzaWduaWZpY2FudCBudW1iZXIgb2YgTlZNIHJl
YWQgYWNjZXNzZXMsIHNpbmNlCj4gdGhlIE9wdGlvbiBST00gYmFuayBpcyA1MDBLQi4gSW4gdGhl
IHdvcnN0IGNhc2UgaXQgd291bGQgdGFrZSBhYm91dCAxMDAwCj4gcmVhZHMuIFdvcnNlLCBhbGwg
UEZzIHNlcmlhbGl6ZSB0aGlzIG9wZXJhdGlvbiBkdXJpbmcgcmVsb2FkIGJlY2F1c2Ugb2YKPiBh
Y3F1aXJpbmcgdGhlIE5WTSBzZW1hcGhvcmUuCj4gCj4gVGhlIENJVkQgc2VjdGlvbiBpcyBsb2Nh
dGVkIGF0IHRoZSBlbmQgb2YgdGhlIE9wdGlvbiBST00gaW1hZ2UgZGF0YS4KPiBVbmZvcnR1bmF0
ZWx5LCB0aGUgZHJpdmVyIGhhcyBubyBlYXN5IG1ldGhvZCB0byBkZXRlcm1pbmUgdGhlIG9mZnNl
dAo+IG1hbnVhbGx5LiBQcmFjdGljYWwgZXhwZXJpbWVudHMgaGF2ZSBzaG93biB0aGF0IHRoZSBk
YXRhIGNvdWxkIGJlIGF0Cj4gYSB2YXJpZXR5IG9mIGxvY2F0aW9ucywgc28gc2ltcGx5IHJldmVy
c2luZyB0aGUgc2Nhbm5pbmcgb3JkZXIgaXMgbm90Cj4gc3VmZmljaWVudCB0byByZWR1Y2UgdGhl
IG92ZXJhbGwgcmVhZCB0aW1lLgo+IAo+IEluc3RlYWQsIGNvcHkgdGhlIGVudGlyZSBjb250ZW50
cyBvZiB0aGUgT3B0aW9uIFJPTSBpbnRvIG1lbW9yeS4gVGhpcwo+IGFsbG93cyByZWFkaW5nIHRo
ZSBkYXRhIHVzaW5nIDRLYiBwYWdlcyBpbnN0ZWFkIG9mIDUxMiBieXRlcyBhdCBhIHRpbWUuCj4g
VGhpcyByZWR1Y2VzIHRoZSB0b3RhbCBudW1iZXIgb2YgZmlybXdhcmUgY29tbWFuZHMgYnkgYSBm
YWN0b3Igb2YgOC4gSW4KPiBhZGRpdGlvbiwgcmVhZGluZyB0aGUgd2hvbGUgc2VjdGlvbiB0b2dl
dGhlciBhdCBvbmNlIGFsbG93cyBiZXR0ZXIKPiBpbmRpY2F0aW9uIHRvIGZpcm13YXJlIG9mIHdo
ZW4gd2UncmUgImRvbmUiLgo+IAo+IFJlLXdyaXRlIGljZV9nZXRfb3JvbV9jaXZkX2RhdGEgdG8g
YWxsb2NhdGUgdmlydHVhbCBtZW1vcnkgdG8gc3RvcmUgdGhlCj4gT3B0aW9uIFJPTSBkYXRhLiBD
b3B5IHRoZSBlbnRpcmUgT3B0aW9uUk9NIGNvbnRlbnRzIGF0IG9uY2UgdXNpbmcKCk9wdGlvbiBS
T00KCj4gaWNlX3JlYWRfZmxhc2hfbW9kdWxlLiBGaW5hbGx5LCB1c2UgdGhpcyBtZW1vcnkgY29w
eSB0byBzY2FuIGZvciB0aGUKPiAnJENJVicgc2VjdGlvbi4KPiAKPiBUaGlzIGNoYW5nZSBzaWdu
aWZpY2FudGx5IHJlZHVjZXMgdGhlIHRpbWUgdG8gcmVhZCB0aGUgT3B0aW9uIFJPTSBDSVZECj4g
c2VjdGlvbiBmcm9tIH4xMCBzZWNvbmRzIGRvd24gdG8gfjEgc2Vjb25kLiBUaGlzIGhhcyBhIHNp
Z25pZmljYW50Cj4gaW1wYWN0IG9uIHRoZSB0b3RhbCB0aW1lIHRvIGNvbXBsZXRlIGEgZHJpdmVy
IHJlYnVpbGQgb3IgcHJvYmUuCgpUaGFuayB5b3UgZm9yIHRha2luZyB1cCB0aGUgY2hhbGxlbmdl
IGFuZCBsb29raW5nIGludG8gdGhpcywgYW5kIGZvciAKZGVjcmVhc2luZyB0aGUgdGltZS4KCk9U
OiBPdXQgb2YgY3VyaW9zaXR5LCBob3cgZG9lcyBpdCB3b3JrIG9uIFVFRkkgc3lzdGVtcyB3aXRo
b3V0IHVzaW5nIApDb21wYXRpYmlsaXR5IFN5c3RlbSBNb2RlIChDU00pIGFuZCBqdXN0IOKAnEVG
SSBkcml2ZXJz4oCdPwoKPiBTaWduZWQtb2ZmLWJ5OiBKYWNvYiBLZWxsZXIgPGphY29iLmUua2Vs
bGVyQGludGVsLmNvbT4KPiAtLS0KPiBDaGFuZ2VzIHNpbmNlIHY2Cj4gKiBmaXggYSBtZW1vcnkg
bGVhawo+IAo+IENoYW5nZXMgc2luY2UgdjUKPiAqIG5ldyBwYXRjaAo+IAo+ICAgZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9udm0uYyB8IDQ4ICsrKysrKysrKysrKysrKysrKy0t
LS0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDM2IGluc2VydGlvbnMoKyksIDEyIGRlbGV0aW9ucygt
KQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX252
bS5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9udm0uYwo+IGluZGV4IDk0
MWJmY2U5N2JmNC4uYzVhMzlhYThhYzk0IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2ljZS9pY2VfbnZtLmMKPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pY2UvaWNlX252bS5jCj4gQEAgLTYxOSw3ICs2MTksNyBAQCBzdGF0aWMgaW50Cj4gICBpY2Vf
Z2V0X29yb21fY2l2ZF9kYXRhKHN0cnVjdCBpY2VfaHcgKmh3LCBlbnVtIGljZV9iYW5rX3NlbGVj
dCBiYW5rLAo+ICAgCQkgICAgICAgc3RydWN0IGljZV9vcm9tX2NpdmRfaW5mbyAqY2l2ZCkKPiAg
IHsKPiAtCXN0cnVjdCBpY2Vfb3JvbV9jaXZkX2luZm8gdG1wOwo+ICsJdTggKm9yb21fZGF0YTsK
Ckkga25vdyB0aGUgZnVuY3Rpb24gbmFtZXMgdXNlIG9yb20sIGJ1dCBvcHJvbSBpcyBhbHJlYWR5
IHVzZWQgaW4gb3RoZXIgCnN1YnN5c3RlbXMuCgo+ICAgCWludCBzdGF0dXM7Cj4gICAJdTMyIG9m
ZnNldDsKPiAgIAo+IEBAIC02MjcsMzYgKzYyNyw2MCBAQCBpY2VfZ2V0X29yb21fY2l2ZF9kYXRh
KHN0cnVjdCBpY2VfaHcgKmh3LCBlbnVtIGljZV9iYW5rX3NlbGVjdCBiYW5rLAo+ICAgCSAqIFRo
ZSBmaXJzdCA0IGJ5dGVzIG11c3QgY29udGFpbiB0aGUgQVNDSUkgY2hhcmFjdGVycyAiJENJViIu
Cj4gICAJICogQSBzaW1wbGUgbW9kdWxvIDI1NiBzdW0gb2YgYWxsIG9mIHRoZSBieXRlcyBvZiB0
aGUgc3RydWN0dXJlIG11c3QKPiAgIAkgKiBlcXVhbCAwLgo+ICsJICoKPiArCSAqIFRoZSBleGFj
dCBsb2NhdGlvbiBpcyB1bmtub3duIGFuZCB2YXJpZXMgYmV0d2VlbiBpbWFnZXMgYnV0IGlzCj4g
KwkgKiB1c3VhbGx5IHNvbWV3aGVyZSBpbiB0aGUgbWlkZGxlIG9mIHRoZSBiYW5rLiBXZSBuZWVk
IHRvIHNjYW4gdGhlCj4gKwkgKiBPcHRpb24gUk9NIGJhbmsgdG8gbG9jYXRlIGl0Lgo+ICsJICoK
PiArCSAqIEl0J3Mgc2lnbmlmaWNhbnRseSBmYXN0ZXIgdG8gcmVhZCB0aGUgZW50aXJlIE9wdGlv
biBST00gdXAgZnJvbnQKPiArCSAqIHVzaW5nIHRoZSBtYXhpbXVtIHBhZ2Ugc2l6ZSwgdGhhbiB0
byByZWFkIGVhY2ggcG9zc2libGUgbG9jYXRpb24KPiArCSAqIHdpdGggYSBzZXBhcmF0ZSBmaXJt
d2FyZSBjb21tYW5kLgo+ICAgCSAqLwo+ICsJb3JvbV9kYXRhID0gdnphbGxvYyhody0+Zmxhc2gu
YmFua3Mub3JvbV9zaXplKTsKPiArCWlmICghb3JvbV9kYXRhKQo+ICsJCXJldHVybiAtRU5PTUVN
Owo+ICsKPiArCXN0YXR1cyA9IGljZV9yZWFkX2ZsYXNoX21vZHVsZShodywgYmFuaywgSUNFX1NS
XzFTVF9PUk9NX0JBTktfUFRSLCAwLAo+ICsJCQkJICAgICAgIG9yb21fZGF0YSwgaHctPmZsYXNo
LmJhbmtzLm9yb21fc2l6ZSk7Cj4gKwlpZiAoc3RhdHVzKSB7Cj4gKwkJaWNlX2RlYnVnKGh3LCBJ
Q0VfREJHX05WTSwgIlVuYWJsZSB0byByZWFkIE9wdGlvbiBST00gZGF0YVxuIik7Cj4gKwkJcmV0
dXJuIHN0YXR1czsKPiArCX0KPiArCj4gKwkvKiBTY2FuIHRoZSBtZW1vcnkgYnVmZmVyIHRvIGxv
Y2F0ZSB0aGUgQ0lWRCBkYXRhIHNlY3Rpb24gKi8KPiAgIAlmb3IgKG9mZnNldCA9IDA7IChvZmZz
ZXQgKyA1MTIpIDw9IGh3LT5mbGFzaC5iYW5rcy5vcm9tX3NpemU7IG9mZnNldCArPSA1MTIpIHsK
PiArCQlzdHJ1Y3QgaWNlX29yb21fY2l2ZF9pbmZvICp0bXA7Cj4gICAJCXU4IHN1bSA9IDAsIGk7
Cj4gICAKPiAtCQlzdGF0dXMgPSBpY2VfcmVhZF9mbGFzaF9tb2R1bGUoaHcsIGJhbmssIElDRV9T
Ul8xU1RfT1JPTV9CQU5LX1BUUiwKPiAtCQkJCQkgICAgICAgb2Zmc2V0LCAodTggKikmdG1wLCBz
aXplb2YodG1wKSk7Cj4gLQkJaWYgKHN0YXR1cykgewo+IC0JCQlpY2VfZGVidWcoaHcsIElDRV9E
QkdfTlZNLCAiVW5hYmxlIHRvIHJlYWQgT3B0aW9uIFJPTSBDSVZEIGRhdGFcbiIpOwo+IC0JCQly
ZXR1cm4gc3RhdHVzOwo+IC0JCX0KPiArCQl0bXAgPSAoc3RydWN0IGljZV9vcm9tX2NpdmRfaW5m
byAqKSZvcm9tX2RhdGFbb2Zmc2V0XTsKPiAgIAo+ICAgCQkvKiBTa2lwIGZvcndhcmQgdW50aWwg
d2UgZmluZCBhIG1hdGNoaW5nIHNpZ25hdHVyZSAqLwo+IC0JCWlmIChtZW1jbXAoIiRDSVYiLCB0
bXAuc2lnbmF0dXJlLCBzaXplb2YodG1wLnNpZ25hdHVyZSkpICE9IDApCj4gKwkJaWYgKG1lbWNt
cCgiJENJViIsIHRtcC0+c2lnbmF0dXJlLCBzaXplb2YodG1wLT5zaWduYXR1cmUpKSAhPSAwKQo+
ICAgCQkJY29udGludWU7Cj4gICAKPiArCQlpY2VfZGVidWcoaHcsIElDRV9EQkdfTlZNLCAiRm91
bmQgQ0lWRCBzZWN0aW9uIGF0IG9mZnNldCAldVxuIiwKPiArCQkJICBvZmZzZXQpOwo+ICsKPiAg
IAkJLyogVmVyaWZ5IHRoYXQgdGhlIHNpbXBsZSBjaGVja3N1bSBpcyB6ZXJvICovCj4gLQkJZm9y
IChpID0gMDsgaSA8IHNpemVvZih0bXApOyBpKyspCj4gKwkJZm9yIChpID0gMDsgaSA8IHNpemVv
ZigqdG1wKTsgaSsrKQo+ICAgCQkJLyogY3BwY2hlY2stc3VwcHJlc3Mgb2JqZWN0SW5kZXggKi8K
PiAtCQkJc3VtICs9ICgodTggKikmdG1wKVtpXTsKPiArCQkJc3VtICs9ICgodTggKil0bXApW2ld
Owo+ICAgCj4gICAJCWlmIChzdW0pIHsKPiAgIAkJCWljZV9kZWJ1ZyhodywgSUNFX0RCR19OVk0s
ICJGb3VuZCBDSVZEIGRhdGEgd2l0aCBpbnZhbGlkIGNoZWNrc3VtIG9mICV1XG4iLAo+ICAgCQkJ
CSAgc3VtKTsKPiAtCQkJcmV0dXJuIC1FSU87Cj4gKwkJCWdvdG8gZXJyX2ludmFsaWRfY2hlY2tz
dW07Cj4gICAJCX0KPiAgIAo+IC0JCSpjaXZkID0gdG1wOwo+ICsJCSpjaXZkID0gKnRtcDsKPiAr
CQl2ZnJlZShvcm9tX2RhdGEpOwo+ICAgCQlyZXR1cm4gMDsKPiAgIAl9Cj4gICAKPiArCWljZV9k
ZWJ1ZyhodywgSUNFX0RCR19OVk0sICJVbmFibGUgdG8gbG9jYXRlIENJVkQgZGF0YSB3aXRoaW4g
dGhlIE9wdGlvbiBST01cbiIpOwo+ICsKPiArZXJyX2ludmFsaWRfY2hlY2tzdW06Cj4gKwl2ZnJl
ZShvcm9tX2RhdGEpOwo+ICAgCXJldHVybiAtRUlPOwo+ICAgfQoKUGxlYXNlIGV4Y3VzZSBteSBp
Z25vcmFuY2UuIEkgd291bGQgaGF2ZSB0aG91Z2gsIHRoYXQgdGhlIHN5c3RlbSAKZmlybXdhcmUg
YWxyZWFkeSBwdXQgdGhhdCBPcHRpb24gUk9NIGludG8gbWVtb3J5LiBUaGVyZSBpcyBhIGZ1bmN0
aW9uIApgcGNpX21hcF9iaW9zcm9tKClgIGRlY2xhcmVkIGluIGBhcmNoL3g4Ni9pbmNsdWRlL2Fz
bS9wcm9iZV9yb21zLmhgIGFuZCAKaW1wbGVtZW50ZWQgaW4gYGFyY2gveDg2L2tlcm5lbC9wcm9i
ZV9yb21zLmNgLCB3aGljaCBtaWdodCBiZSB1c2VkPwoKCktpbmQgcmVnYXJkcywKClBhdWwKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVk
LWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0
cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
