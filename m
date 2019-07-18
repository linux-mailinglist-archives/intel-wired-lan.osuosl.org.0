Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D4D66CADB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jul 2019 10:22:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2614086A14;
	Thu, 18 Jul 2019 08:22:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5J506Ioue0Tm; Thu, 18 Jul 2019 08:22:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0D37C86A1D;
	Thu, 18 Jul 2019 08:22:11 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8D9C51BF5A1
 for <intel-wired-lan@osuosl.org>; Thu, 18 Jul 2019 08:22:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8A2B286A11
 for <intel-wired-lan@osuosl.org>; Thu, 18 Jul 2019 08:22:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e5BTLVHlqRbi for <intel-wired-lan@osuosl.org>;
 Thu, 18 Jul 2019 08:22:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CA03C86A10
 for <intel-wired-lan@osuosl.org>; Thu, 18 Jul 2019 08:22:07 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5bd1a9.dynamic.kabel-deutschland.de
 [95.91.209.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id CAF05201A3C2B;
 Thu, 18 Jul 2019 10:22:04 +0200 (CEST)
To: Gavin Lambert <intel@mirality.co.nz>
References: <3acf459ddbbd30687cda0a79523afe04@mirality.co.nz>
 <bec9f546d5a5a46586af0ac93d36f84f@mirality.co.nz>
 <000661bda5687541e895a949c76712fb@mirality.co.nz>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <9ce1ba83-6603-6278-4658-52b941aa85ba@molgen.mpg.de>
Date: Thu, 18 Jul 2019 10:22:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <000661bda5687541e895a949c76712fb@mirality.co.nz>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [e1000e] Linux 4.9: unable to send packets
 after link recovery with patched driver
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
Cc: intel-wired-lan@osuosl.org,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Alexander Usyskin <alexander.usyskin@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Tomas Winkler <tomas.winkler@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

W3ByaXZhdGUgYW5zd2VyXQoKRGVhciBHYXZpbiwKCgpZb3VyIG1lc3NhZ2VzIHdlcmUgZGVsaXZl
cmVkIHRvIHRoZSBsaXN0IHN1YnNjcmliZXJzLgoKT24gMTguMDcuMTkgMTA6MDYsIEdhdmluIExh
bWJlcnQgd3JvdGU6Cj4gT24gMjAxOS0wNy0xMiAxNToyMywgSSB3cm90ZToKPj4gT24gMjAxOS0w
Ny0xMSAxODo1MCwgSSB3cm90ZToKPj4+IE9uIGEgRGViaWFuIHN5c3RlbSB3aXRoIGtlcm5lbCBs
aW51eC1pbWFnZS00LjkuMC00LXJ0LWFtZDY0ICg0LjkuNjUpCj4+PiBpbnN0YWxsZWQsIHRoaXMg
d29ya3MgcGVyZmVjdGx5LsKgIEl0IGFsc28gd29ya3MgcGVyZmVjdGx5IHdpdGgKPj4+IGxpbnV4
LWltYWdlLTQuOS4wLTgtcnQtYW1kNjQgKDQuOS4xMTApLgo+Pj4KPj4+IEhvd2V2ZXIsIHdpdGgg
a2VybmVsIGxpbnV4LWltYWdlLTQuOS4wLTktcnQtYW1kNjQgKDQuOS4xNjgpIGluc3RhbGxlZAo+
Pj4gKGFuZCBubyBvdGhlciBjaGFuZ2VzIHRvIHRoZSBzeXN0ZW0gb3RoZXIgdGhhbiBidWlsZGlu
ZyB0aGUgcGF0Y2hlZAo+Pj4gZTEwMDBlIG1vZHVsZSBhZ2FpbnN0IHRoaXMga2VybmVsJ3MgaGVh
ZGVycyksIHNvbWV0aGluZyB3ZWlyZCBoYXBwZW5zCj4+PiB3aGVuIHRoZSBkcml2ZXIgaXMgcnVu
bmluZyBpbiBpdHMgYWx0ZXJuYXRlICJlY2RldiIgbW9kZS4KPiBbLi4uXQo+PiBTaW5jZSB0aGlz
IHdhcyBtb3N0bHkganVzdCBhIHJlYmFzZSBlcnJvciAoeW91IGNhbiBzZWUgYSBzaW1pbGFyCj4+
IGNoYW5nZSBpbiB0aGUgb2xkIGxvY2F0aW9uIG9mIHRoaXMgY29kZSksIEknbSBub3Qgc3VyZSBp
ZiB0aGlzIGhlbHBzCj4+IG5hcnJvdyBkb3duIHRoZSBzb3VyY2Ugb2YgdGhlIHByb2JsZW0gYmV0
d2VlbiA0LjkuMTEwIGFuZCA0LjkuMTY4IG9yCj4+IG5vdC7CoCBJJ20gc3RpbGwgbG9va2luZyBm
b3IgaWRlYXMgZm9yIHRoYXQuCj4gCj4gVXNpbmcgdGhpcyBrZXJuZWwgdHJlZToKPiBodHRwczov
L2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9ydC9saW51eC1zdGFibGUt
cnQuZ2l0L2xvZy8/aD12NC45LXJ0Jm9mcz0zMTIwIAo+IAo+IEkndmUgaWRlbnRpZmllZCB0aGF0
IHRoZSBjb2RlIGF0IHRhZyB2NC45LjEyNiBpcyAiZ29vZCIgYW5kIHRoZSBjb2RlIGF0IAo+IHRh
ZyB2NC45LjEyNyBpcyAiYmFkIi4KPiAKPiBJJ3ZlIGRvbmUgYSBiaXNlY3QgKHR3aWNlLCBmcm9t
IGRpZmZlcmVudCBzdGFydGluZyBwb2ludHMpIGFuZCBib3RoIAo+IHRpbWVzIHNldHRsZWQgb24g
dGhpcyBjb21taXQgYXMgdGhlIG9uZSB3aGljaCBpbnRyb2R1Y2VkIHRoZSBwcm9ibGVtIEknbSAK
PiBleHBlcmllbmNpbmc6Cj4gCj4gY29tbWl0IGMwYjgwOTk4NWE3YTQxOGZjYzMzNjFjMjM5YWU3
OTI1MDI0NTI4MmQgKHJlZnMvYmlzZWN0L2JhZCkKPiBBdXRob3I6IFRvbWFzIFdpbmtsZXIgPHRv
bWFzLndpbmtsZXJAaW50ZWwuY29tPgo+IERhdGU6wqDCoCBUdWUgSmFuIDIgMTI6MDE6NDEgMjAx
OCArMDIwMAo+IAo+ICDCoMKgwqAgbWVpOiBtZTogYWxsb3cgcnVudGltZSBwbSBmb3IgcGxhdGZv
cm0gd2l0aCBEMGkzCj4gCj4gIMKgwqDCoCBjb21taXQgY2MzNjVkY2YwZTU2MjcxYmVkZjNkZTk1
Zjg4OTIyYWJlMjQ4ZTk1MSB1cHN0cmVhbS4KPiAKPiAgwqDCoMKgID5Gcm9tIHRoZSBwY2kgcG93
ZXIgZG9jdW1lbnRhdGlvbjoKPiAgwqDCoMKgICJUaGUgZHJpdmVyIGl0c2VsZiBzaG91bGQgbm90
IGNhbGwgcG1fcnVudGltZV9hbGxvdygpLCB0aG91Z2guIAo+IEluc3RlYWQsCj4gIMKgwqDCoCBp
dCBzaG91bGQgbGV0IHVzZXIgc3BhY2Ugb3Igc29tZSBwbGF0Zm9ybS1zcGVjaWZpYyBjb2RlIGRv
IHRoYXQgCj4gKHVzZXIgc3BhY2UKPiAgwqDCoMKgIGNhbiBkbyBpdCB2aWEgc3lzZnMgYXMgc3Rh
dGVkIGFib3ZlKS4uLiIKPiAKPiAgwqDCoMKgIEhvd2V2ZXIsIHRoZSBTMGl4IHJlc2lkZW5jeSBj
YW5ub3QgYmUgcmVhY2hlZCB3aXRob3V0IE1FSSBkZXZpY2UgCj4gZ2V0dGluZwo+ICDCoMKgwqAg
aW50byBsb3cgcG93ZXIgc3RhdGUuIEhlbmNlLCBmb3IgbWVpIGRldmljZXMgdGhhdCBzdXBwb3J0
IEQwaTMsIAo+IGl0J3MgYmV0dGVyCj4gIMKgwqDCoCB0byBtYWtlIHJ1bnRpbWUgcG93ZXIgbWFu
YWdlbWVudCBtYW5kYXRvcnkgYW5kIG5vdCByZWx5IG9uIHRoZSBzeXN0ZW0KPiAgwqDCoMKgIGlu
dGVncmF0aW9uIHN1Y2ggYXMgdWRldiBydWxlcy4KPiAgwqDCoMKgIFRoaXMgcG9saWN5IGNhbm5v
dCBiZSBhcHBsaWVkIGdsb2JhbGx5IGFzIHNvbWUgb2xkZXIgcGxhdGZvcm1zCj4gIMKgwqDCoCB3
ZXJlIGZvdW5kIHRvIGhhdmUgYnJva2VuIHBvd2VyIG1hbmFnZW1lbnQuCj4gCj4gIMKgwqDCoCBD
YzogPHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmc+IHY0LjEzKwo+ICDCoMKgwqAgQ2M6IFJhZmFlbCBK
LiBXeXNvY2tpIDxyYWZhZWwuai53eXNvY2tpQGludGVsLmNvbT4KPiAgwqDCoMKgIFNpZ25lZC1v
ZmYtYnk6IFRvbWFzIFdpbmtsZXIgPHRvbWFzLndpbmtsZXJAaW50ZWwuY29tPgo+ICDCoMKgwqAg
UmV2aWV3ZWQtYnk6IEFsZXhhbmRlciBVc3lza2luIDxhbGV4YW5kZXIudXN5c2tpbkBpbnRlbC5j
b20+Cj4gIMKgwqDCoCBTaWduZWQtb2ZmLWJ5OiBHcmVnIEtyb2FoLUhhcnRtYW4gPGdyZWdraEBs
aW51eGZvdW5kYXRpb24ub3JnPgoKVGhpcyBjb21taXQgd2FzIGFkZGVkIGluIHY0LjE2LXJjMS4K
Cj4gSXQgaXMgcmVwcm9kdWNpYmxlIGV2ZXJ5IHRpbWU7IGlmIEkgYnVpbGQgYXQgdGhlIHBhcmVu
dCBjb21taXQgCj4gKDNkMzQzMjU4MDkxMSkgdGhlbiB0aGUgZHJpdmVyIHdvcmtzLCBhbmQgaWYg
SSBhZGQgdGhlIGNvbW1pdCBhYm92ZSB0aGVuIAo+IGl0IGZhaWxzLgo+IAo+IEhvd2V2ZXIgaXQn
cyB1bmNsZWFyIHRvIG1lIGhvdyB0aGlzIGlzIGFmZmVjdGluZyBteSBtb2RpZmllZCBlMTAwMGUg
Cj4gZHJpdmVyIGluIHRoaXMgd2F5LCBleGNlcHQgdGhhdCBpdCBpcyBwZXJoYXBzIHBvd2VyIG1h
bmFnZW1lbnQgcmVsYXRlZD8KPiAKPiBTaW5jZSBpdCBhcHBlYXJzIHRvIGJlIGEgcG1fcnVudGlt
ZS1yZWxhdGVkIHRoaW5nLCBqdXN0IGFzIGFuIGV4cGVyaW1lbnQgCj4gSSBkaWQgdHJ5IGNvbW1l
bnRpbmcgb3V0IGV2ZXJ5IHNpbmdsZSBjYWxsIHRvIHBtX3J1bnRpbWUqIGZ1bmN0aW9ucyBpbiAK
PiBuZXRkZXYuYywgYnV0IHRoaXMgZGlkIG5vdCByZXNvbHZlIHRoZSBwcm9ibGVtLsKgIERpdHRv
IGZvciBhbnl0aGluZyB3aXRoIAo+IHRoZSB3b3JkICJzdXNwZW5kIiBpbiBpdC7CoCBJIGFsc28g
dHJpZWQgYWRkaW5nIGVfaW5mbygpIGxvZ2dpbmcgY2FsbHMgdG8gCj4gbW9zdCBwbGFjZXMgdGhh
dCB1c2VkIHBtXyBjYWxscyBvdGhlciB0aGFuIHBtX3J1bnRpbWVfZ2V0L3B1dCAoYW5kIGluIAo+
IHBhcnRpY3VsYXIsIGluIGFsbCBvZiB0aGUgcG1fb3BzIGNhbGxiYWNrcyksIGFuZCBub25lIG9m
IHRoZW0gd2VyZSBoaXQgCj4gZHVyaW5nIHRoZSBwcm9ibGVtIGV2ZW50cy4KPiAKPiBBbmQgZXZl
biB3aGVuIGl0J3Mgbm90IHdvcmtpbmcsIGlmIEkgYGNhdGAgdmFyaW91cyB0aGluZ3MgaW4gCj4g
YC9zeXMvYnVzL3BjaS8uLi4vcG93ZXIvYCBvbiB0aGUgYWRhcHRlciBkZXZpY2UsIGl0IGFwcGVh
cnMgdG8gYWxsIGJlIAo+IG5vbi1zdXNwZW5kZWQsIHdoaWNoIG1ha2VzIG1lIGRvdWJ0IHRoYXQg
aXQgcmVhbGx5IGlzIGEgUE0gaXNzdWUsIHVubGVzcyAKPiBJJ20ganVzdCBsb29raW5nIGluIHRo
ZSB3cm9uZyBwbGFjZXMuCgpJZiB5b3UgZm91bmQgYSBmYXVsdHkgY29tbWl0LCBwbGVhc2UgQ0Mg
dGhlIGNvbW1pdCBhdXRob3JzLCByZXZpZXdlcnMsIAphbmQgc3Vic3lzdGVtIG1haW50YWluZXJz
IGFuZCBtYXliZSBldmVuIHRoZSByZWdyZXNzaW9uIGFkZHJlc3MuCgpJZiB5b3UgaGF2ZSB0aW1l
LCBwbGVhc2UgY2hlY2sgd2l0aCBMaW51eCBtYXN0ZXIgdHJlZSB0byBzZWUgaWYgYSBjb21taXQg
CmZpeGluZyB0aGlzIGhhcyBiZWVuIGFkZGVkIG9yIHlvdSBzdGlsbCBuZWVkIHRvIHJldmVydCBp
dC4KCgpLaW5kIHJlZ2FyZHMsCgpQYXVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQt
bGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtd2lyZWQtbGFuCg==
