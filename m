Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 97191506FCF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Apr 2022 16:09:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 95B6A4190D;
	Tue, 19 Apr 2022 14:09:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id waqXnqjbNrQ5; Tue, 19 Apr 2022 14:09:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3FE1D418BA;
	Tue, 19 Apr 2022 14:09:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2456E1BF293
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Apr 2022 14:09:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0B10B418BA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Apr 2022 14:09:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U7pAldj8irsn for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Apr 2022 14:09:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B6D184092B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Apr 2022 14:09:31 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5ae90d.dynamic.kabel-deutschland.de
 [95.90.233.13])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id DDBDE61CCD785;
 Tue, 19 Apr 2022 16:09:27 +0200 (CEST)
Message-ID: <cb3d32f3-d9f1-f285-bde3-b62b94cb17ec@molgen.mpg.de>
Date: Tue, 19 Apr 2022 16:09:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: Michal Michalik <michal.michalik@intel.com>
References: <20220414102358.13486-1-michal.michalik@intel.com>
 <280c31b8-9f70-a0b5-2450-510903bd0d4e@molgen.mpg.de>
 <BN6PR11MB4177CF618A7FB2654DC9690DE3F29@BN6PR11MB4177.namprd11.prod.outlook.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <BN6PR11MB4177CF618A7FB2654DC9690DE3F29@BN6PR11MB4177.namprd11.prod.outlook.com>
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: fix PTP stale Tx
 timestamps cleanup
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

RGVhciBNaWNoYWwsCgoKQW0gMTkuMDQuMjIgdW0gMTU6Mjcgc2NocmllYiBNaWNoYWxpaywgTWlj
aGFsOgoKW+KApl0KCj4gTXVjaCB0aGFua3MgZm9yIHlvdXIga2luZCByZXZpZXcgb2YgbXkgZmly
c3QgY29tbXVuaXR5IHBhdGNoLgoKSGFoLCBJIGRpZG7igJl0IGtub3cuIENvbmdyYXR1bGF0aW9u
cywgYW5kIEkgaG9wZSwgaXTigJlzIHRoZSBmaXJzdCBvZiBtYW55IAptb3JlIHRvIGNvbWUuIDst
KQoKPiBQbGVhc2UgZXhjdXNlIG1lIGZvciBhIGRlbGF5IGluIGFuc3dlcmluZyAtIE1vbmRheSAx
OHRoIHdhcyBhIFB1YmxpYwo+IEhvbGlkYXkgaGVyZSBpbiBQb2xhbmQuCgpObyBwcm9ibGVtLiBM
dWNraWx5IGVtYWlsIGlzIGFzeW5jLCBhbmQgaXTigJlzIG5vIHByb2JsZW0gaWYgcmVwbGllcyBv
bmx5IApjb21lIGFmdGVyIGRheXMvd2Vla3MuIEJ5IHRoZSB3YXksIEVhc3RlciBNb25kYXkgaXMg
YWxzbyBhIHB1YmxpYyAKaG9saWRheSBpbiBHZXJtYW55LgoKPj4gLS0tLS1PcmlnaW5hbCBNZXNz
YWdlLS0tLS0KPj4gRnJvbTogUGF1bCBNZW56ZWwgPHBtZW56ZWxAbW9sZ2VuLm1wZy5kZT4KPj4g
U2VudDogRnJpZGF5LCBBcHJpbCAxNSwgMjAyMiA2OjM3IFBNCgpb4oCmXQoKPj4gQW0gMTQuMDQu
MjIgdW0gMTI6MjMgc2NocmllYiBNaWNoYWwgTWljaGFsaWs6Cj4+PiBSZWFkIHN0YWxlIFBUUCBU
eCB0aW1lc3RhbXBzIGZyb20gUEhZIG9uIGNsZWFudXAuCj4+Pgo+Pj4gQWZ0ZXIgcnVubmluZyBv
dXQgb2YgVHggdGltZXN0YW1wcyByZXF1ZXN0IGhhbmRsZXJzIGhhcmR3YXJlIChIVykgc3RvcHMK
Pj4+IHJlcG9ydGluZyBmaW5pc2hlZCByZXF1ZXN0cy4gRnVuY3Rpb24gaWNlX3B0cF90eF90c3Rh
bXBfY2xlYW51cCgpIHVzZWQKPj4+IHRvIG9ubHkgY2xlYW51cCBzdGFsZSBoYW5kbGVycyBpbiBk
cml2ZXIgYW5kIHdhcyBsZWF2aW5nIHRoZSBoYXJkd2FyZQo+Pgo+PiBOaXQ6IGNsZWFuIHVwCj4g
Cj4gR29vZCBjYXRjaCAtIEkgc2hvdWxkIGhhdmUgdXNlZCB2ZXJiIGluc3RlYWQgb2Ygbm91bi4g
V2lsbCBmaXggaXQgaW4gdjIuCj4gCj4+Cj4+PiByZWdpc3RlcnMgbm90IHJlYWQuIE5vdCByZWFk
aW5nIHN0YWxlIFBUUCBUeCB0aW1lc3RhbXBzIHByZXZlbnRzIG5leHQKPj4+IGludGVycnVwdHMg
ZnJvbSBhcnJpdmluZyBhbmQgbWFrZXMgdGltZXN0YW1waW5nIG5vdCB1c2FibGUuCj4+Cj4+IE5p
dDogdW51c2FibGUKPiAKPiBUaGFua3MgLSBsZXNzb24gbGVhcm5lZC4gV2lsbCBmaXggaXQgaW4g
djIuCgpCb3RoIHZhcmlhbnRzIHdvcmssIHVudXNhYmxlIGlzIGp1c3QgYSBsaXR0bGUgc2hvcnRl
ci4KCj4+IERvIHlvdSBoYXZlIGEgbWV0aG9kLCBob3cgdG8gZm9yY2UgdGhlIG5ldHdvcmsgZGV2
aWNlIHRvIHJ1biBvdXQgb2YKPj4gdGltZXN0YW1wcyByZXF1ZXN0IGhhbmRsZXJzPwo+IAo+IFVu
bHVja3kgLSBJIGRvbid0IGhhdmUgYW55dGhpbmcgY29udmVuaWVudC4gQm90aCByZXByb2R1Y2lu
ZyB0aGlzIGJ1Zwo+IGFuZCBwcm92aW5nIGZpeCBmb3IgaXQgaXMgd29ya2luZyBjb3JyZWN0bHkg
d2FzIGRvbmUgYnkgcGVyZm9ybWluZwo+IHN0YWJpbGl0eSB0ZXN0cyBmb3IgbXVsdGlwbGUgaG91
cnMgKHVzaW5nIGxpbnV4cHRwIHByb2plY3QpLgoKVW5kZXJzdG9vZC4gTWF5YmUganVzdCBhZGQg
dGhhdCBhcyBhIGNvbW1lbnQgaW4gdGhlIGNvbW1pdCBtZXNzYWdlLgoKPj4+IEZpeGVzOiBlYTli
ODQ3Y2RhNjQgKCJpY2U6IGVuYWJsZSB0cmFuc21pdCB0aW1lc3RhbXBzIGZvciBFODEwIGRldmlj
ZXMiKQo+Pj4gU2lnbmVkLW9mZi1ieTogTWljaGFsIE1pY2hhbGlrIDxtaWNoYWwubWljaGFsaWtA
aW50ZWwuY29tPgo+Pj4gUmV2aWV3ZWQtYnk6IEphY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJA
aW50ZWwuY29tPgo+Pj4gLS0tCj4+PiAgICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2Uv
aWNlX3B0cC5jIHwgOSArKysrKysrLS0KPj4+ICAgIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlv
bnMoKyksIDIgZGVsZXRpb25zKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2ljZS9pY2VfcHRwLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Y2UvaWNlX3B0cC5jCj4+PiBpbmRleCBhMWNkMzMyLi44MjZhNTA4IDEwMDY0NAo+Pj4gLS0tIGEv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHAuYwo+Pj4gKysrIGIvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHAuYwo+Pj4gQEAgLTIyODcsNiArMjI4Nyw3
IEBAIGljZV9wdHBfaW5pdF90eF9lODEwKHN0cnVjdCBpY2VfcGYgKnBmLCBzdHJ1Y3QgaWNlX3B0
cF90eCAqdHgpCj4+PiAgICAKPj4+ICAgIC8qKgo+Pj4gICAgICogaWNlX3B0cF90eF90c3RhbXBf
Y2xlYW51cCAtIENsZWFudXAgb2xkIHRpbWVzdGFtcCByZXF1ZXN0cyB0aGF0IGdvdCBkcm9wcGVk
Cj4+PiArICogQGh3OiBwb2ludGVyIHRvIHRoZSBodyBzdHJ1Y3QKPj4+ICAgICAqIEB0eDogUFRQ
IFR4IHRyYWNrZXIgdG8gY2xlYW4gdXAKPj4+ICAgICAqCj4+PiAgICAgKiBMb29wIHRocm91Z2gg
dGhlIFR4IHRpbWVzdGFtcCByZXF1ZXN0cyBhbmQgc2VlIGlmIGFueSBvZiB0aGVtIGhhdmUgYmVl
bgo+Pj4gQEAgLTIyOTUsNyArMjI5Niw3IEBAIGljZV9wdHBfaW5pdF90eF9lODEwKHN0cnVjdCBp
Y2VfcGYgKnBmLCBzdHJ1Y3QgaWNlX3B0cF90eCAqdHgpCj4+PiAgICAgKiB0aW1lc3RhbXAgd2ls
bCBuZXZlciBiZSBjYXB0dXJlZC4gVGhpcyBtaWdodCBoYXBwZW4gaWYgdGhlIHBhY2tldCBnZXRz
Cj4+PiAgICAgKiBkaXNjYXJkZWQgYmVmb3JlIGl0IHJlYWNoZXMgdGhlIFBIWSB0aW1lc3RhbXBp
bmcgYmxvY2suCj4+PiAgICAgKi8KPj4+IC1zdGF0aWMgdm9pZCBpY2VfcHRwX3R4X3RzdGFtcF9j
bGVhbnVwKHN0cnVjdCBpY2VfcHRwX3R4ICp0eCkKPj4+ICtzdGF0aWMgdm9pZCBpY2VfcHRwX3R4
X3RzdGFtcF9jbGVhbnVwKHN0cnVjdCBpY2VfaHcgKmh3LCBzdHJ1Y3QgaWNlX3B0cF90eCAqdHgp
Cj4+PiAgICB7Cj4+PiAgICAJdTggaWR4Owo+Pj4gICAgCj4+PiBAQCAtMjMwNCwxMSArMjMwNSwx
NSBAQCBzdGF0aWMgdm9pZCBpY2VfcHRwX3R4X3RzdGFtcF9jbGVhbnVwKHN0cnVjdCBpY2VfcHRw
X3R4ICp0eCkKPj4+ICAgIAo+Pj4gICAgCWZvcl9lYWNoX3NldF9iaXQoaWR4LCB0eC0+aW5fdXNl
LCB0eC0+bGVuKSB7Cj4+PiAgICAJCXN0cnVjdCBza19idWZmICpza2I7Cj4+PiArCQl1NjQgcmF3
X3RzdGFtcDsKPj4+ICAgIAo+Pj4gICAgCQkvKiBDaGVjayBpZiB0aGlzIFNLQiBoYXMgYmVlbiB3
YWl0aW5nIGZvciB0b28gbG9uZyAqLwo+Pj4gICAgCQlpZiAodGltZV9pc19hZnRlcl9qaWZmaWVz
KHR4LT50c3RhbXBzW2lkeF0uc3RhcnQgKyAyICogSFopKQo+Pj4gICAgCQkJY29udGludWU7Cj4+
PiAgICAKPj4+ICsJCWljZV9yZWFkX3BoeV90c3RhbXAoaHcsIHR4LT5xdWFkLCBpZHggKyB0eC0+
cXVhZF9vZmZzZXQsCj4+PiArCQkJCSAgICAmcmF3X3RzdGFtcCk7Cj4+PiArCj4+Cj4+IEFyZSBj
b21waWxlcnMgb3IgY29kZSBhbmFseXplciBnb2luZyB0byBjb21wbGFpbiwgdGhhdCBub3RoaW5n
IHdpbGwgYmUKPj4gZG9uZSB3aXRoIGByYXdfdHN0YW1wYD8gSXMgdGhlcmUgc29tZSBhdHRyaWJ1
dGUsIHRoYXQgaXTigJlzIHVudXNlZD8gTWF5YmUKPj4gYWxzbyBhZGQgYSBjb21tZW50LCB0aGlz
IGlzIGp1c3QgdG8gcmVhZCB0aGUgdmFsdWUsIGFuZCBpdOKAmXMgbm90IGdvaW5nCj4+IHRvIGJl
IHVzZWQuCj4+Cj4gCj4gSSBoYXZlbid0IG5vdGljZWQgYW55IGNvbXBsYWludHMgZnJvbSBjb21w
aWxlci4gVGhpcyBmdW5jdGlvbiBpcyB1c2VkCj4gaW4gZGlmZmVyZW50IHBsYWNlcywgd2hlcmUg
YWxsIHBhcmFtZXRlcnMgYXJlIHVzZWQuIERvIHlvdSB0aGluayB3ZQo+IHNob3VsZCBjb25zaWRl
ciBjaGFuZ2luZyBpY2VfcmVhZF9waHlfdHN0YW1wKCkgc28gaXQgd291bGQgYmUgYWJsZSB0bwo+
IGFjY2VwdCB0c3RhbXAgZXF1YWwgdG8gTlVMTCBhbmQgcmVtb3ZlIHRoaXMgdW51c2VkIHJhd190
c3RhbXAgZnJvbQo+IGhlcmU/IElmIHdlIGxlYXZlIGl0IGFzIGlzIEkgd2lsbCBhZGQgYSBjb21t
ZW50LCBhY2NvcmRpbmcgdG8geW91cgo+IHN1Z2dlc3Rpb24uCgpJIGd1ZXNzIHRoZSBjb21tZW50
IGlzIGZpbmUsIGFuZCBsZXTigJlzIHNlZSBpZiBjb21waWxlcnMgb3IgYW5hbHl6ZXJzIGFyZSAK
Z29pbmcgdG8gY29tcGxhaW4uCgo+Pj4gICAgCQlzcGluX2xvY2soJnR4LT5sb2NrKTsKPj4+ICAg
IAkJc2tiID0gdHgtPnRzdGFtcHNbaWR4XS5za2I7Cj4+PiAgICAJCXR4LT50c3RhbXBzW2lkeF0u
c2tiID0gTlVMTDsKPj4+IEBAIC0yMzMwLDcgKzIzMzUsNyBAQCBzdGF0aWMgdm9pZCBpY2VfcHRw
X3BlcmlvZGljX3dvcmsoc3RydWN0IGt0aHJlYWRfd29yayAqd29yaykKPj4+ICAgIAo+Pj4gICAg
CWljZV9wdHBfdXBkYXRlX2NhY2hlZF9waGN0aW1lKHBmKTsKPj4+ICAgIAo+Pj4gLQlpY2VfcHRw
X3R4X3RzdGFtcF9jbGVhbnVwKCZwZi0+cHRwLnBvcnQudHgpOwo+Pj4gKwlpY2VfcHRwX3R4X3Rz
dGFtcF9jbGVhbnVwKCZwZi0+aHcsICZwZi0+cHRwLnBvcnQudHgpOwo+Pj4gICAgCj4+PiAgICAJ
LyogUnVuIHR3aWNlIGEgc2Vjb25kICovCj4+PiAgICAJa3RocmVhZF9xdWV1ZV9kZWxheWVkX3dv
cmsocHRwLT5rd29ya2VyLCAmcHRwLT53b3JrLAo+Pgo+PiBSZXZpZXdlZC1ieTogUGF1bCBNZW56
ZWwgPHBtZW56ZWxAbW9sZ2VuLm1wZy5kZT4KCgpLaW5kIHJlZ2FyZHMsCgpQYXVsCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBt
YWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vv
c2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
