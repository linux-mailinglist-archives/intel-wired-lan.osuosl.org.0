Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D3834FE777
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Apr 2022 19:50:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 506FE610BA;
	Tue, 12 Apr 2022 17:50:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eoCI9ylO01Pz; Tue, 12 Apr 2022 17:50:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 50716610B4;
	Tue, 12 Apr 2022 17:50:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 20B571BF3C6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Apr 2022 17:50:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0E1FB83E4D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Apr 2022 17:50:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zLN7J5RzKli0 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Apr 2022 17:50:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 02D2D83E1C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Apr 2022 17:50:26 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5ae911.dynamic.kabel-deutschland.de
 [95.90.233.17])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 827E761EA1923;
 Tue, 12 Apr 2022 19:50:23 +0200 (CEST)
Message-ID: <d9142a13-1b0f-6a01-c69d-727f4c76cb04@molgen.mpg.de>
Date: Tue, 12 Apr 2022 19:50:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: Jacob Keller <jacob.e.keller@intel.com>
References: <20220411232907.1022602-1-jacob.e.keller@intel.com>
 <20220411232907.1022602-3-jacob.e.keller@intel.com>
 <e079ab74-48fc-65d1-4d3f-2c0cdd4ffcb9@molgen.mpg.de>
 <987480f6-9fc1-bd67-8803-9b88645b514c@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <987480f6-9fc1-bd67-8803-9b88645b514c@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/6] ice: always check VF VSI
 pointer values
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

RGVhciBKYWNvYiwKCgpBbSAxMi4wNC4yMiB1bSAxOTozNSBzY2hyaWViIEphY29iIEtlbGxlcjoK
Cj4gT24gNC8xMS8yMDIyIDEwOjM4IFBNLCBQYXVsIE1lbnplbCB3cm90ZToKCj4+IEFtIDEyLjA0
LjIyIHVtIDAxOjI5IHNjaHJpZWIgSmFjb2IgS2VsbGVyOgo+Pj4gVGhlIGljZV9nZXRfdmZfdnNp
IGZ1bmN0aW9uIGNhbiByZXR1cm4gTlVMTCBpbiBzb21lIGNhc2VzLCBzdWNoIGFzIGlmCj4+PiBo
YW5kbGluZyBtZXNzYWdlcyBkdXJpbmcgYSByZXNldCB3aGVyZSB0aGUgVlNJIGlzIGJlaW5nIHJl
bW92ZWQgYW5kCj4+PiByZWNyZWF0ZWQuCj4+Pgo+Pj4gU2V2ZXJhbCBwbGFjZXMgdGhyb3VnaG91
dCB0aGUgZHJpdmVyIGRvIG5vdCBib3RoZXIgdG8gY2hlY2sgd2hldGhlciB0aGlzCj4+PiBWU0kg
cG9pbnRlciBpcyB2YWxpZC4gU3RhdGljIGFuYWx5c2lzIHRvb2xzIG1heWJlIHJlcG9ydCBpc3N1
ZXMgYmVjYXVzZQo+Pj4gdGhleSBkZXRlY3QgcGF0aHMgd2hlcmUgYSBwb3RlbnRpYWxseSBOVUxM
IHBvaW50ZXIgY291bGQgYmUKPj4+IGRlcmVmZXJlbmNlZC4KPj4KPj4gKHNpZGUgbm90ZTogc2Ny
aXB0cy9jaGVja3BhdGNoLnBsIGNoZWNrcyBmb3IgNzUgY2hhcmFjdGVycyBwZXIgbGluZSwgYW5k
Cj4+IHlvdSBzZWVtIHRvIHVzZSA3MiBjaGFyYWN0ZXJzIHBlciBsaW5lLikKPiAKPiBGb3IgY29t
bWl0IG1lc3NhZ2Ugd3JhcHBpbmc/IEkgdXNlIHNvbWUgZGVmYXVsdCBmcm9tIGEgdmltIHBsdWdp
biB3aGljaAo+IEkgZ3Vlc3MgZGVjaWRlZCB0aGF0IDcyIHdhcyBhIGdvb2QgY2hvaWNlLiBUZWNo
bmljYWxseSB0aGF0cyA4Cj4gY2hhcmFjdGVycyBsZXNzIHRoYW4gODAgd2hpY2ggaXMgb25lIGZ1
bGwgdGFic3RvcCBpZiB5b3UgcmVuZGVyIHRhYnMgYXMKPiA4IHNwYWNlcywgd2hpY2ggaXMgc29t
ZXRpbWVzIHVzZWQgYXMgYSBtZXRob2Qgb2YgaW5kZW50aW5nIGNvbW1pdHMgZnJvbQo+IGdpdCB0
b29scy4uCgpZZXMsIGJ1dCB0aGUgZ2l0IHRvb2xzIGluZGVudCB3aXRoIGZvdXIgc3BhY2VzLiBT
ZWUgY29tbWl0IDJhMDc2ZjQwZDhjOSAKKGNoZWNrcGF0Y2gsIFN1Ym1pdHRpbmdQYXRjaGVzOiBz
dWdnZXN0IGxpbmUgd3JhcHBpbmcgY29tbWl0IG1lc3NhZ2VzIGF0IAo3NSBjb2x1bW5zKSBbMV06
Cgo+IENvbW1pdCBtZXNzYWdlcyBsaW5lcyBhcmUgc29tZXRpbWVzIG92ZXJseSBsb25nLgo+IAo+
IFN1Z2dlc3QgbGluZSB3cmFwcGluZyBhdCA3NSBjb2x1bW5zIHNvIHRoZSBkZWZhdWx0IGdpdCBj
b21taXQgbG9nCj4gaW5kZW50YXRpb24gb2YgNCBwbHVzIHRoZSBjb21taXQgbWVzc2FnZSB0ZXh0
IHN0aWxsIGZpdHMgb24gYW4gODAgY29sdW1uCj4gc2NyZWVuLgo+IAo+IEFkZCBhIGNoZWNrcGF0
Y2ggdGVzdCBmb3IgbG9uZyBjb21taXQgbWVzc2FnZXMgbGluZXMgdG9vLgoKCj4+PiBGaXggdGhp
cyBieSBjaGVja2luZyB0aGUgcmV0dXJuIHZhbHVlIG9mIGljZV9nZXRfdmZfdnNpIGV2ZXJ5d2hl
cmUuCj4+Cj4+IEkgZGlkbuKAmXQgdW5kZXJzdGFuZCwgd2hlbiBXQVJOX09OKCkgaXMgbmVjZXNz
YXJ5LCBhbmQgd2hlbiBub3QsIGJ1dAo+PiBsb29rcyBmaW5lLgo+Pgo+IAo+IEkgdHJpZWQgbXkg
YmVzdCB0byB1c2UgV0FSTl9PTiBpbiBwbGFjZXMgd2hpY2ggaGF2ZSBubyBzdWl0YWJsZSB3YXkg
dG8KPiByZXBvcnQgYW4gZXJyb3IgYmFjayBvdXQsIGJ1dCBmb3IgcGxhY2VzIHdoZXJlIHdlIGNh
biBzaW1wbHkgZmFpbCB0aGUKPiBvcGVyYXRpb24gSSBhdm9pZGVkIGl0Lgo+IAo+IFRoaXMgd2Fz
IHNpbWlsYXIgdG8gaG93IHdlIGhhbmRsZWQgaW52YWxpZCBWRiBwb2ludGVycyBpbiBjZXJ0YWlu
IHBsYWNlcy4KPiAKPiBUaGUgV0FSTl9PTnMgYXJlbid0IHN0cmljdGx5IG5lZWRlZCwgYnV0IGdl
bmVyYWxseSBzcGVha2luZyB0aG9zZSBmbG93cwo+IHNob3VsZG4ndCBiZSBoaXR0aW5nIGFuIGlu
dmFsaWQgcG9pbnRlci4gKEluZGVlZCwgcHJpb3IgdG8gdGhpcyBwYXRjaAo+IHRoZXkgd291bGQg
aGF2ZSBiZWVuIEJVR3MgaW5zdGVhZCEpCj4gCj4gSG9wZSB0aGF0IGV4cGxhaW5zIHdoeSBub3Qg
ZXZlcnkgcGxhY2UgaGFzIHRoZSBXQVJOX09OLgoKWWVzLCB0aGFuayB5b3UgZm9yIGNsYXJpZnlp
bmcgdGhpcy4KCj4+PiBTaWduZWQtb2ZmLWJ5OiBKYWNvYiBLZWxsZXIgPGphY29iLmUua2VsbGVy
QGludGVsLmNvbT4KPj4+IC0tLQo+Pj4gICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNl
L2ljZV9kZXZsaW5rLmMgIHwgIDUgKystCj4+PiAgICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pY2UvaWNlX3JlcHIuYyAgICAgfCAgNyArKystCj4+PiAgICBkcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pY2UvaWNlX3NyaW92LmMgICAgfCAzMiArKysrKysrKysrKysrKysrKy0tCj4+PiAg
ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3ZmX2xpYi5jICAgfCAyOCArKysr
KysrKysrKysrKystCj4+PiAgICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3Zp
cnRjaG5sLmMgfCAgNSArKysKPj4+ICAgIC4uLi9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3ZpcnRj
aG5sX2ZkaXIuYyAgICB8ICA3ICsrKy0KPj4+ICAgIDYgZmlsZXMgY2hhbmdlZCwgNzcgaW5zZXJ0
aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKPj4KPj4gW+KApl0KPj4KPj4gUmV2aWV3ZWQtYnk6IFBh
dWwgTWVuemVsIDxwbWVuemVsQG1vbGdlbi5tcGcuZGU+CgoKS2luZCByZWdhcmRzLAoKUGF1bAoK
ClsxXTogCmh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3Rv
cnZhbGRzL2xpbnV4LmdpdC9jb21taXQvP2lkPTJhMDc2ZjQwZDhjOWJlOTViZWU3YmNmMTg0MzY2
NTVlMTE0MDQ0N2YKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9y
ZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1s
YW4K
