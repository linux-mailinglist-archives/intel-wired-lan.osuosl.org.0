Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 119858F124
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Aug 2019 18:46:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 73F7C858E1;
	Thu, 15 Aug 2019 16:46:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5RaH8NMMAPTE; Thu, 15 Aug 2019 16:46:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 90BFE85707;
	Thu, 15 Aug 2019 16:46:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1DB8A1BF3A6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2019 16:46:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 196C38654C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2019 16:46:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mD53QfT8Yady for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Aug 2019 16:46:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1808586538
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2019 16:46:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Aug 2019 09:46:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,389,1559545200"; d="scan'208";a="260867787"
Received: from unknown (HELO [10.241.228.234]) ([10.241.228.234])
 by orsmga001.jf.intel.com with ESMTP; 15 Aug 2019 09:46:35 -0700
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 magnus.karlsson@intel.com, netdev@vger.kernel.org, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, maciej.fijalkowski@intel.com,
 tom.herbert@intel.com
References: <1565840783-8269-1-git-send-email-sridhar.samudrala@intel.com>
 <bebfb097-5357-91d8-ebc7-2f8ede392ad7@intel.com>
From: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
Message-ID: <cc3a09eb-bcb8-a6e1-7175-77bddaf10c11@intel.com>
Date: Thu, 15 Aug 2019 09:46:35 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <bebfb097-5357-91d8-ebc7-2f8ede392ad7@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 0/5] Add support for SKIP_BPF
 flag for AF_XDP sockets
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

T24gOC8xNS8yMDE5IDU6NTEgQU0sIEJqw7ZybiBUw7ZwZWwgd3JvdGU6Cj4gT24gMjAxOS0wOC0x
NSAwNTo0NiwgU3JpZGhhciBTYW11ZHJhbGEgd3JvdGU6Cj4+IFRoaXMgcGF0Y2ggc2VyaWVzIGlu
dHJvZHVjZXMgWERQX1NLSVBfQlBGIGZsYWcgdGhhdCBjYW4gYmUgc3BlY2lmaWVkCj4+IGR1cmlu
ZyB0aGUgYmluZCgpIGNhbGwgb2YgYW4gQUZfWERQIHNvY2tldCB0byBza2lwIGNhbGxpbmcgdGhl
IEJQRgo+PiBwcm9ncmFtIGluIHRoZSByZWNlaXZlIHBhdGggYW5kIHBhc3MgdGhlIGJ1ZmZlciBk
aXJlY3RseSB0byB0aGUgc29ja2V0Lgo+Pgo+PiBXaGVuIGEgc2luZ2xlIEFGX1hEUCBzb2NrZXQg
aXMgYXNzb2NpYXRlZCB3aXRoIGEgcXVldWUgYW5kIGEgSFcKPj4gZmlsdGVyIGlzIHVzZWQgdG8g
cmVkaXJlY3QgdGhlIHBhY2tldHMgYW5kIHRoZSBhcHAgaXMgaW50ZXJlc3RlZCBpbgo+PiByZWNl
aXZpbmcgYWxsIHRoZSBwYWNrZXRzIG9uIHRoYXQgcXVldWUsIHdlIGRvbid0IG5lZWQgYW4gYWRk
aXRpb25hbAo+PiBCUEYgcHJvZ3JhbSB0byBkbyBmdXJ0aGVyIGZpbHRlcmluZyBvciBsb29rdXAv
cmVkaXJlY3QgdG8gYSBzb2NrZXQuCj4+Cj4+IEhlcmUgYXJlIHNvbWUgcGVyZm9ybWFuY2UgbnVt
YmVycyBjb2xsZWN0ZWQgb24KPj4gwqDCoCAtIDIgc29ja2V0IDI4IGNvcmUgSW50ZWwoUikgWGVv
bihSKSBQbGF0aW51bSA4MTgwIENQVSBAIDIuNTBHSHoKPj4gwqDCoCAtIEludGVsIDQwR2IgRXRo
ZXJuZXQgTklDIChpNDBlKQo+Pgo+PiBBbGwgdGVzdHMgdXNlIDIgY29yZXMgYW5kIHRoZSByZXN1
bHRzIGFyZSBpbiBNcHBzLgo+Pgo+PiB0dXJibyBvbiAoZGVmYXVsdCkKPj4gLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG5vLXNraXAtYnBmwqDCoMKgIHNraXAtYnBmCj4+IC0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+PiByeGRyb3AgemVy
b2NvcHnCoMKgwqDCoMKgwqDCoMKgwqDCoCAyMS45wqDCoMKgwqDCoMKgwqDCoCAzOC41Cj4+IGwy
ZndkwqAgemVyb2NvcHnCoMKgwqDCoMKgwqDCoMKgwqDCoCAxNy4wwqDCoMKgwqDCoMKgwqDCoCAy
MC41Cj4+IHJ4ZHJvcCBjb3B5wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAxMS4xwqDCoMKg
wqDCoMKgwqDCoCAxMy4zCj4+IGwyZndkwqAgY29wecKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCAxLjnCoMKgwqDCoMKgwqDCoMKgwqAgMi4wCj4+Cj4+IG5vIHR1cmJvIDrCoCBlY2hvIDEg
PiAvc3lzL2RldmljZXMvc3lzdGVtL2NwdS9pbnRlbF9wc3RhdGUvbm9fdHVyYm8KPj4gLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG5vLXNraXAtYnBmwqDCoMKgIHNraXAtYnBm
Cj4+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+PiByeGRy
b3AgemVyb2NvcHnCoMKgwqDCoMKgwqDCoMKgwqDCoCAxNS40wqDCoMKgwqDCoMKgwqDCoCAyOS4w
Cj4+IGwyZndkwqAgemVyb2NvcHnCoMKgwqDCoMKgwqDCoMKgwqDCoCAxMS44wqDCoMKgwqDCoMKg
wqDCoCAxOC4yCj4+IHJ4ZHJvcCBjb3B5wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDgu
MsKgwqDCoMKgwqDCoMKgwqAgMTAuNQo+PiBsMmZ3ZMKgIGNvcHnCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgMS43wqDCoMKgwqDCoMKgwqDCoMKgIDEuNwo+PiAtLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPj4KPiAKPiBUaGlzIHdvcmsgaXMgc29tZXdo
YXQgc2ltaWxhciB0byB0aGUgWERQX0FUVEFDSCB3b3JrIFsxXS4gQXZvaWRpbmcgdGhlCj4gcmV0
cG9saW5lIGluIHRoZSBYRFAgcHJvZ3JhbSBjYWxsIGlzIGEgbmljZSBwZXJmb3JtYW5jZSBib29z
dCEgSSBsaWtlCj4gdGhlIG51bWJlcnMhIDotKSBJIGFsc28gbGlrZSB0aGUgaWRlYSBvZiBhZGRp
bmcgYSBmbGFnIHRoYXQganVzdCBkb2VzCj4gd2hhdCBtb3N0IEFGX1hEUCBSeCB1c2VycyB3YW50
IC0tIGp1c3QgZ2V0dGluZyBhbGwgcGFja2V0cyBvZiBhCj4gY2VydGFpbiBxdWV1ZSBpbnRvIHRo
ZSBYRFAgc29ja2V0cy4KPiAKPiBJbiBhZGRpdGlvbiB0byBUb2tlJ3MgbWFpbCwgSSBoYXZlIHNv
bWUgbW9yZSBjb25jZXJucyB3aXRoIHRoZSBzZXJpZXM6Cj4gCj4gKiBBRkFJVSB0aGUgU0tJUF9C
UEYgb25seSB3b3JrcyBmb3IgemVyby1jb3B5IGVuYWJsZWQgc29ja2V0cy4gSU1PLCBpdAo+ICDC
oCBzaG91bGQgd29yayBmb3IgYWxsIG1vZGVzIChpbmNsdWRpbmcgWERQX1NLQikuCgpUaGlzIHBh
dGNoIGVuYWJsZXMgU0tJUF9CUEYgZm9yIEFGX1hEUCBzb2NrZXRzIHdoZXJlIGFuIFhEUCBwcm9n
cmFtIGlzIAphdHRhY2hlZCBhdCBkcml2ZXIgbGV2ZWwgKGJvdGggemVyb2NvcHkgYW5kIGNvcHkg
bW9kZXMpCkkgdHJpZWQgYSBxdWljayBoYWNrIHRvIHNlZSB0aGUgcGVyZiBiZW5lZml0IHdpdGgg
Z2VuZXJpYyBYRFAgbW9kZSwgYnV0IAppIGRpZG4ndCBzZWUgYW55IHNpZ25pZmljYW50IGltcHJv
dmVtZW50IGluIHBlcmZvcm1hbmNlIGluIHRoYXQgCnNjZW5hcmlvLiBzbyBpIGRpZG4ndCBpbmNs
dWRlIHRoYXQgbW9kZS4KCj4gCj4gKiBJbiBvcmRlciB0byB3b3JrLCBhIHVzZXIgc3RpbGwgbmVl
ZHMgYW4gWERQIHByb2dyYW0gcnVubmluZy4gVGhhdCdzCj4gIMKgIGNsdW5reS4gSSdkIGxpa2Ug
dGhlIGJlaGF2aW9yIHRoYXQgaWYgbm8gWERQIHByb2dyYW0gaXMgYXR0YWNoZWQsCj4gIMKgIGFu
ZCB0aGUgb3B0aW9uIGlzIHNldCwgdGhlIHBhY2tldHMgZm9yIGEgdGhhdCBxdWV1ZSBlbmQgdXAg
aW4gdGhlCj4gIMKgIHNvY2tldC4gSWYgdGhlcmUncyBhbiBYRFAgcHJvZ3JhbSBhdHRhY2hlZCwg
dGhlIHByb2dyYW0gaGFzCj4gIMKgIHByZWNlZGVuY2UuCgpJIHRoaW5rIHRoaXMgd291bGQgcmVx
dWlyZSBtb3JlIGNoYW5nZXMgaW4gdGhlIGRyaXZlcnMgdG8gdGFrZSBYRFAgCmRhdGFwYXRoIGV2
ZW4gd2hlbiB0aGVyZSBpcyBubyBYRFAgcHJvZ3JhbSBsb2FkZWQuCgo+IAo+ICogSXQgcmVxdWly
ZXMgY2hhbmdlcyBpbiBhbGwgZHJpdmVycy4gTm90IG5pY2UsIGFuZCBzY2FsZXMgYmFkbHkuIFRy
eQo+ICDCoCBtYWtpbmcgaXQgZ2VuZXJpYyAoeGRwX2RvX3JlZGlyZWN0L3hkcF9mbHVzaCksIHNv
IGl0IEp1c3QgV29ya3MgZm9yCj4gIMKgIGFsbCBYRFAgY2FwYWJsZSBkcml2ZXJzLgoKSSB0cmll
ZCB0byBtYWtlIHRoaXMgYXMgZ2VuZXJpYyBhcyBwb3NzaWJsZSBhbmQgbWFrZSB0aGUgY2hhbmdl
cyB0byB0aGUgCmRyaXZlciB2ZXJ5IG1pbmltYWwsIGJ1dCBjb3VsZCBub3QgZmluZCBhIHdheSB0
byBhdm9pZCBhbnkgY2hhbmdlcyBhdCAKYWxsIHRvIHRoZSBkcml2ZXIuIHhkcF9kb19kaXJlY3Qo
KSBnZXRzIGNhbGxlZCBiYXNlZCBhZnRlciB0aGUgY2FsbCB0byAKYnBmX3Byb2dfcnVuX3hkcCgp
IGluIHRoZSBkcml2ZXJzLgoKPiAKPiBUaGFua3MgZm9yIHdvcmtpbmcgb24gdGhpcyEKPiAKPiAK
PiBCasO2cm4KPiAKPiBbMV0gCj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbmV0ZGV2LzIwMTgx
MjA3MTE0NDMxLjE4MDM4LTEtYmpvcm4udG9wZWxAZ21haWwuY29tLyAKPiAKPiAKPiAKPj4gU3Jp
ZGhhciBTYW11ZHJhbGEgKDUpOgo+PiDCoMKgIHhzazogQ29udmVydCBib29sICd6YycgZmllbGQg
aW4gc3RydWN0IHhkcF91bWVtIHRvIGEgdTMyIGJpdG1hcAo+PiDCoMKgIHhzazogSW50cm9kdWNl
IFhEUF9TS0lQX0JQRiBiaW5kIG9wdGlvbgo+PiDCoMKgIGk0MGU6IEVuYWJsZSBYRFBfU0tJUF9C
UEYgb3B0aW9uIGZvciBBRl9YRFAgc29ja2V0cwo+PiDCoMKgIGl4Z2JlOiBFbmFibGUgWERQX1NL
SVBfQlBGIG9wdGlvbiBmb3IgQUZfWERQIHNvY2tldHMKPj4gwqDCoCB4ZHBzb2NrX3VzZXI6IEFk
ZCBza2lwX2JwZiBvcHRpb24KPj4KPj4gwqAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQw
ZS9pNDBlX3R4cnguY8KgwqAgfCAyMiArKysrKysrKystCj4+IMKgIGRyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2k0MGUvaTQwZV94c2suY8KgwqDCoCB8wqAgNiArKysKPj4gwqAgZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfbWFpbi5jIHwgMjAgKysrKysrKystCj4+IMKg
IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX3hzay5jwqAgfCAxNiArKysr
KystCj4+IMKgIGluY2x1ZGUvbmV0L3hkcF9zb2NrLmjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgMjEgKysrKysrKystCj4+IMKgIGluY2x1ZGUvdWFwaS9s
aW51eC9pZl94ZHAuaMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAgMSAr
Cj4+IMKgIGluY2x1ZGUvdWFwaS9saW51eC94ZHBfZGlhZy5owqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgfMKgIDEgKwo+PiDCoCBuZXQveGRwL3hkcF91bWVtLmPCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDkgKystLQo+PiDC
oCBuZXQveGRwL3hzay5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IDQzICsrKysrKysrKysrKysrKystLS0KPj4gwqAgbmV0
L3hkcC94c2tfZGlhZy5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHzCoCA1ICsrLQo+PiDCoCBzYW1wbGVzL2JwZi94ZHBzb2NrX3VzZXIuY8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCA4ICsrKysKPj4gwqAgMTEg
ZmlsZXMgY2hhbmdlZCwgMTM1IGluc2VydGlvbnMoKyksIDE3IGRlbGV0aW9ucygtKQo+PgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1s
YW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMu
b3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
