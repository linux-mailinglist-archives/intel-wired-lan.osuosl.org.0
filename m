Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4235047D398
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Dec 2021 15:22:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6B22460D7B;
	Wed, 22 Dec 2021 14:21:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iZouKLJ7dJak; Wed, 22 Dec 2021 14:21:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3A22E60D77;
	Wed, 22 Dec 2021 14:21:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 862EE1BF9AF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Dec 2021 14:21:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7B7DB81A29
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Dec 2021 14:21:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hyUnCDVYgD78 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Dec 2021 14:21:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8F64A81340
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Dec 2021 14:21:51 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5aeac8.dynamic.kabel-deutschland.de
 [95.90.234.200])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 1611861EA1932;
 Wed, 22 Dec 2021 15:21:48 +0100 (CET)
Message-ID: <f4173e86-97c3-602f-4365-24fa13443822@molgen.mpg.de>
Date: Wed, 22 Dec 2021 15:21:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
Content-Language: en-US
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Dawid Lukwinski <dawid.lukwinski@intel.com>
References: <20211116131329.626045-1-jedrzej.jagielski@intel.com>
 <ecdb8ef3-ccce-d17c-86d6-56f7e1e85606@molgen.mpg.de>
 <DM6PR11MB27317207BB69160027B04FEFF07D9@DM6PR11MB2731.namprd11.prod.outlook.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <DM6PR11MB27317207BB69160027B04FEFF07D9@DM6PR11MB2731.namprd11.prod.outlook.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] i40e: Minimize amount of
 busy-waiting during AQ send
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

RGVhciBKZWRyemVqLAoKClRoYW5rIHlvdSBmb3IgeW91ciBhbnN3ZXIuCgoKQW0gMjIuMTIuMjEg
dW0gMTM6MDEgc2NocmllYiBKYWdpZWxza2ksIEplZHJ6ZWo6Cgpb4oCmXQoKPj4gQW0gMTYuMTEu
MjEgdW0gMTQ6MTMgc2NocmllYiBKZWRyemVqIEphZ2llbHNraToKPj4+IFRoZSBpNDBlX2FzcV9z
ZW5kX2NvbW1hbmQgd2lsbCBub3cgdXNlIGEgbm9uIGJsb2NraW5nCj4+PiB1c2xlZXBfcmFuZ2Ug
aWYgcG9zc2libGUgKG5vbi1hdG9taWMgY29udGV4dCksIGluc3RlYWQgb2YgYnVzeS13YWl0aW5n
Cj4+PiB1ZGVsYXkuIFRoZSB1c2xlZXBfcmFuZ2UgZnVuY3Rpb24gdXNlcyBocnRpbWVycyB0byBw
cm92aWRlIGJldHRlcgo+Pj4gcGVyZm9ybWFuY2UgYW5kIHJlbW92ZSB0aGUgbmVnYXRpdmUgaW1w
YWN0IG9mIGJ1c3ktd2FpdGluZyBpbgo+Pgo+PiByZW1vdmUqcyoKPj4KPj4+IHRpbWUtY3JpdGlj
YWwgZW52aXJvbm1lbnRzLgo+Pgo+PiBQbGVhc2UgcmUtZmxvdyB0aGUgcGFyYWdyYXBoIGZvciA3
NSBjaGFyYWN0ZXJzIHBlciBsaW5lLgo+IAo+IFN1cmUsIGl0IHdpbGwgYmUgZml4ZWQuCgpUaGFu
a3MuCgo+Pj4gMS4gUmVuYW1lIGk0MGVfYXNxX3NlbmRfY29tbWFuZCB0byBpNDBlX2FzcV9zZW5k
X2NvbW1hbmRfYXRvbWljCj4+PiAgICAgIGFuZCBhZGQgNXRoIHBhcmFtZXRlciB0byBpbmZvcm0g
aWYgY2FsbGVkIGZyb20gYW4gYXRvbWljIGNvbnRleHQuCj4+PiAgICAgIENhbGwgaW5zaWRlIHVz
bGVlcF9yYW5nZSAoaWYgbm9uLWF0b21pYykgb3IgdWRlbGF5IChpZiBhdG9taWMpLgo+Pgo+PiBJ
IHByZWZlciBpZiBgaTQwZV9hc3Ffc2VuZF9jb21tYW5kX2F0b21pYygpYCBpbXBsaWNpdGx5IGFz
c3VtZXMgaXTigJlzIGFuCj4+IGF0b21pYyBjb250ZXh0IHdpdGhvdXQgYSBmaWZ0aCBhIHBhcmFt
ZXRlci4gVG8gbWFrZSBpdCBtb3JlIGNsZWFyLCBtYXliZQo+PiBldmVuIGludHJvZHVjZSBgaTQw
ZV9hc3Ffc2VuZF9jb21tYW5kX25vbmF0b21pYygpYC4KPiAKPiBUaGlzIGZ1bmN0aW9uIGhhcyBi
ZWVuIGFkZGVkIGluIG9yZGVyIHRvIGFkZCBwb3NzaWJpbGl0eQo+IHRvIHNlbmQgY29tbWFuZHMg
aW4gYXRvbWljIGNvbnRleHQgYW5kIHJldXNlIGFscmVhZHkgZXhpc3RpbmcKPiBmdW5jdGlvbiAn
aTQwZV9hc3Ffc2VuZF9jb21tYW5kJyB3aXRoIHByZXZpb3VzIHNpZ25hdHVyZQo+IHRvIGF2b2lk
IG1vZGlmeWluZyBhbGwgZXhpc3RpbmcgY2FsbHMKPiB0byBpdC4gUGFyYW1ldGVyICdpc19hdG9t
aWMiIGFsc28KPiBjbGVhcmx5IHByb3ZpZGVzIGluZm9ybWF0aW9uIGlmIGZ1bmN0aW9uIGlzIGJl
aW5nCj4gaW52b2tlZCBpbiBhdG9taWMgY29udGV4dCBvciBub3QuCgpJIGRpc2FncmVlLiBIYXZp
bmcgYSBzaXh0aCBmdW5jdGlvbiBhcmd1bWVudCBtYWtlcyBpdCBtb3JlIGNvbXBsaWNhdGVkLCAK
YW5kIGEgZnVuY3Rpb24gbmFtZSBjb250YWluaW5nIGBfYXRvbWljYCBkb2VzIG5vdCBuZWVkIGEg
cGFyYW1ldGVyIHRvIAp0ZWxsIHRoYXQgaXTigJlzIHJlYWxseSBhdG9taWMuCgpJZiBjYWxsZXJz
IGhhdmUgdG8gYmUgdXBkYXRlZCwgcGxlYXNlIHVwZGF0ZSB0aGVtLgoKPj4+IDIuIENoYW5nZSBp
NDBlX2FzcV9zZW5kX2NvbW1hbmQgdG8gaW52b2tlCj4+PiAgICAgIGk0MGVfYXNxX3NlbmRfY29t
bWFuZF9hdG9taWMoLi4uLCBmYWxzZSkuCj4+Pgo+Pj4gMy4gQ2hhbmdlIHR3byBmdW5jdGlvbnM6
Cj4+PiAgICAgICAtIGk0MGVfYXFfc2V0X3ZzaV91Y19wcm9taXNjX29uX3ZsYW4KPj4+ICAgICAg
IC0gaTQwZV9hcV9zZXRfdnNpX21jX3Byb21pc2Nfb25fdmxhbgo+Pj4gICAgICB0byBleHBsaWNp
dGx5IHVzZSBpNDBlX2FzcV9zZW5kX2NvbW1hbmRfYXRvbWljKC4uLiwgdHJ1ZSkKPj4+ICAgICAg
aW5zdGVhZCBvZiBpNDBlX2FzcV9zZW5kX2NvbW1hbmQsIGFzIHRoZXkgdXNlIHNwaW5sb2NrcyBh
bmQgZG8gc29tZQo+Pj4gICAgICB3b3JrIGluIGFuIGF0b21pYyBjb250ZXh0Lgo+Pj4gICAgICBB
bGwgb3RoZXIgY2FsbHMgdG8gaTQwZV9hc3Ffc2VuZF9jb21tYW5kIHJlbWFpbiB1bmNoYW5nZWQu
Cj4+Cj4+IEhvdyBjYW4gaXQgYmUgdGVzdGVkLCB0aGF0IHRoZSBidXN5LXdhaXRpbmcgaXMgcmVk
dWNlZD8gV2hhdCBwZXJmKD8pCj4+IGNvbW1hbmRzIG5lZWQgdG8gYmUgZXhlY3V0ZWQ/Cj4gCj4g
VGhpcyBwYXRjaCBmaW5kcyBpdHMgdXNlIGR1cmluZyBhbiBoaWdoLXBlcmZvcm1hbmNlIG9wZXJh
dGlvbnMuCj4gVGhlIGdvYWwgb2YgdGhpcyBwYXRjaCBpcyB0byByZWR1Y2UgZGVsYXkgY29ubmVj
dGVkIHRvCj4gQVNRIHNlbmRpbmcgY29tbWFuZHMuIEhvbmVzdGx5IEkgZG9uJ3Qga25vdyBpbiB3
aGljaCB0ZXN0IGNhc2UKPiBpdCBjYW4gYmUgY2hlY2tlZC4KCkZ1cnRoZXIgYmVsb3csIHlvdSB3
cml0ZSBpdCBoYXMgYmVlbiBjaGVja2VkLiBQbGVhc2UgYWRkIHRoZSBiZW5jaG1hcmsgCmZpZ3Vy
ZXMgdG8gdGhlIGNvbW1pdCBtZXNzYWdlLgoKPj4+IFRpdGxlOiBNaW5pbWl6ZSBhbW91bnQgb2Yg
YnVzeS13YWl0aW5nIGR1cmluZyBBUSBzZW5kCj4+Cj4+IFRhZyBub3QgbmVlZGVkLgo+IAo+IFN1
cmUsIGl0IHdpbGwgYmUgcmVtb3ZlZC4KPj4KPj4+IFNpZ25lZC1vZmYtYnk6IERhd2lkIEx1a3dp
bnNraSA8ZGF3aWQubHVrd2luc2tpQGludGVsLmNvbT4KPj4+IFNpZ25lZC1vZmYtYnk6IEplZHJ6
ZWogSmFnaWVsc2tpIDxqZWRyemVqLmphZ2llbHNraUBpbnRlbC5jb20+Cj4+PiAtLS0KPj4+ICAg
IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9hZG1pbnEuYyB8IDI5ICsrKysr
KysrKysrKysrLS0tLS0KPj4+ICAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQw
ZV9jb21tb24uYyB8ICA2ICsrLS0KPj4+ICAgIC4uLi9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9p
NDBlX3Byb3RvdHlwZS5oICB8IDE0ICsrKysrLS0tLQo+Pj4gICAgMyBmaWxlcyBjaGFuZ2VkLCAz
NSBpbnNlcnRpb25zKCspLCAxNCBkZWxldGlvbnMoLSkKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2FkbWlucS5jIGIvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2FkbWlucS5jCj4+PiBpbmRleCA1OTM5MTJiMTc2MDku
LjdhYmVmODg4MDFmYiAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2k0MGUvaTQwZV9hZG1pbnEuYwo+Pj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aTQwZS9pNDBlX2FkbWlucS5jCj4+PiBAQCAtNzY5LDIxICs3NjksMjIgQEAgc3RhdGljIGJvb2wg
aTQwZV9hc3FfZG9uZShzdHJ1Y3QgaTQwZV9odyAqaHcpCj4+PiAgICB9Cj4+PiAgICAKPj4+ICAg
IC8qKgo+Pj4gLSAqICBpNDBlX2FzcV9zZW5kX2NvbW1hbmQgLSBzZW5kIGNvbW1hbmQgdG8gQWRt
aW4gUXVldWUKPj4+ICsgKiAgaTQwZV9hc3Ffc2VuZF9jb21tYW5kX2F0b21pYyAtIHNlbmQgY29t
bWFuZCB0byBBZG1pbiBRdWV1ZQo+Pj4gICAgICogIEBodzogcG9pbnRlciB0byB0aGUgaHcgc3Ry
dWN0Cj4+PiAgICAgKiAgQGRlc2M6IHByZWZpbGxlZCBkZXNjcmlwdG9yIGRlc2NyaWJpbmcgdGhl
IGNvbW1hbmQgKG5vbiBETUEgbWVtKQo+Pj4gICAgICogIEBidWZmOiBidWZmZXIgdG8gdXNlIGZv
ciBpbmRpcmVjdCBjb21tYW5kcwo+Pj4gICAgICogIEBidWZmX3NpemU6IHNpemUgb2YgYnVmZmVy
IGZvciBpbmRpcmVjdCBjb21tYW5kcwo+Pj4gICAgICogIEBjbWRfZGV0YWlsczogcG9pbnRlciB0
byBjb21tYW5kIGRldGFpbHMgc3RydWN0dXJlCj4+PiArICogIEBpc19hdG9taWNfY29udGV4dDog
aXMgdGhlIGZ1bmN0aW9uIGNhbGxlZCBpbiBhbiBhdG9taWMgY29udGV4dD8KPj4+ICAgICAqCj4+
PiAgICAgKiAgVGhpcyBpcyB0aGUgbWFpbiBzZW5kIGNvbW1hbmQgZHJpdmVyIHJvdXRpbmUgZm9y
IHRoZSBBZG1pbiBRdWV1ZSBzZW5kCj4+PiAgICAgKiAgcXVldWUuICBJdCBydW5zIHRoZSBxdWV1
ZSwgY2xlYW5zIHRoZSBxdWV1ZSwgZXRjCj4+PiAgICAgKiovCj4+PiAtaTQwZV9zdGF0dXMgaTQw
ZV9hc3Ffc2VuZF9jb21tYW5kKHN0cnVjdCBpNDBlX2h3ICpodywKPj4+IC0JCQkJc3RydWN0IGk0
MGVfYXFfZGVzYyAqZGVzYywKPj4+IC0JCQkJdm9pZCAqYnVmZiwgLyogY2FuIGJlIE5VTEwgKi8K
Pj4+IC0JCQkJdTE2ICBidWZmX3NpemUsCj4+PiAtCQkJCXN0cnVjdCBpNDBlX2FzcV9jbWRfZGV0
YWlscyAqY21kX2RldGFpbHMpCj4+PiAraTQwZV9zdGF0dXMKPj4+ICtpNDBlX2FzcV9zZW5kX2Nv
bW1hbmRfYXRvbWljKHN0cnVjdCBpNDBlX2h3ICpodywgc3RydWN0IGk0MGVfYXFfZGVzYyAqZGVz
YywKPj4+ICsJCQkgICAgIHZvaWQgKmJ1ZmYsIC8qIGNhbiBiZSBOVUxMICovIHUxNiAgYnVmZl9z
aXplLAo+Pj4gKwkJCSAgICAgc3RydWN0IGk0MGVfYXNxX2NtZF9kZXRhaWxzICpjbWRfZGV0YWls
cywKPj4+ICsJCQkgICAgIGJvb2wgaXNfYXRvbWljX2NvbnRleHQpCj4+PiAgICB7Cj4+PiAgICAJ
aTQwZV9zdGF0dXMgc3RhdHVzID0gMDsKPj4+ICAgIAlzdHJ1Y3QgaTQwZV9kbWFfbWVtICpkbWFf
YnVmZiA9IE5VTEw7Cj4+PiBAQCAtOTEwLDcgKzkxMSwxMiBAQCBpNDBlX3N0YXR1cyBpNDBlX2Fz
cV9zZW5kX2NvbW1hbmQoc3RydWN0IGk0MGVfaHcgKmh3LAo+Pj4gICAgCQkJICovCj4+PiAgICAJ
CQlpZiAoaTQwZV9hc3FfZG9uZShodykpCj4+PiAgICAJCQkJYnJlYWs7Cj4+PiAtCQkJdWRlbGF5
KDUwKTsKPj4+ICsKPj4+ICsJCQlpZiAoaXNfYXRvbWljX2NvbnRleHQpCj4+PiArCQkJCXVkZWxh
eSg1MCk7Cj4+PiArCQkJZWxzZQo+Pj4gKwkJCQl1c2xlZXBfcmFuZ2UoNDAsIDYwKTsKPj4+ICsK
Pj4KPj4gUGxlYXNlIG1lbnRpb24gaW4gdGhlIGNvbW1pdCBtZXNzYWdlLCB3aHkgdGhlIHJhbmdl
IGlzIDQwIHRvIDYwIGFuZCBub3QKPj4gMTAgdG8gNTAgZm9yIGV4YW1wbGU/IEkgd291bGQgaGF2
ZSBleHBlY3RlZCB0aGUgdXBwZXIgYm91bmQgdG8gcmVtYWluIDUwLgo+IAo+IFRoaXMgcmFuZ2Ug
d2FzIGNob3NlbiBzbyB0aGF0IHRoZSB2YWx1ZSBpbiB0aGUgbWlkZGxlIGlzIHRvIGJlIDUwbXMu
Cj4gVGhlIGF1ZGliaWxpdHkgb2YgdGhpcyBhc3N1bXB0aW9uIHdhcyBjb25maXJtZWQgZHVyaW5n
IHRlc3RzOyB0aGUgY2hhbmdlIGhhZAo+IGEgcG9zaXRpdmUgZWZmZWN0IG9uIGhpZ2gtcGVyZiBv
cGVyYXRpb25zLiBBbnl3YXkgaXQgd2lsbCBiZSBtZW50aW9uZWQgaW4gdGhlCj4gY29tbWl0IG1z
Zy4KCkRpZCB5b3UgdGVzdCB3aXRoIGFuIHVwcGVyIGJvdW5kIG9mIDUwLCBzbyBgdXNsZWVwX3Jh
bmdlKDQwLCA2MCk7YD8gV2hhdCAKbG93ZXIgYm91bmQgZG9lcyB0aGUgZGF0YXNoZWV0IHJlcXVp
cmU/CgoKS2luZCByZWdhcmRzLAoKUGF1bAoKCj4+PiAgICAJCQl0b3RhbF9kZWxheSArPSA1MDsK
Pj4+ICAgIAkJfSB3aGlsZSAodG90YWxfZGVsYXkgPCBody0+YXEuYXNxX2NtZF90aW1lb3V0KTsK
Pj4+ICAgIAl9Cj4+PiBAQCAtOTY3LDYgKzk3MywxNSBAQCBpNDBlX3N0YXR1cyBpNDBlX2FzcV9z
ZW5kX2NvbW1hbmQoc3RydWN0IGk0MGVfaHcgKmh3LAo+Pj4gICAgCXJldHVybiBzdGF0dXM7Cj4+
PiAgICB9Cj4+PiAgICAKPj4+ICtpNDBlX3N0YXR1cwo+Pj4gK2k0MGVfYXNxX3NlbmRfY29tbWFu
ZChzdHJ1Y3QgaTQwZV9odyAqaHcsIHN0cnVjdCBpNDBlX2FxX2Rlc2MgKmRlc2MsCj4+PiArCQkg
ICAgICB2b2lkICpidWZmLCAvKiBjYW4gYmUgTlVMTCAqLyB1MTYgIGJ1ZmZfc2l6ZSwKPj4+ICsJ
CSAgICAgIHN0cnVjdCBpNDBlX2FzcV9jbWRfZGV0YWlscyAqY21kX2RldGFpbHMpCj4+PiArewo+
Pj4gKwlyZXR1cm4gaTQwZV9hc3Ffc2VuZF9jb21tYW5kX2F0b21pYyhodywgZGVzYywgYnVmZiwg
YnVmZl9zaXplLAo+Pj4gKwkJCQkJICAgIGNtZF9kZXRhaWxzLCBmYWxzZSk7Cj4+PiArfQo+Pj4g
Kwo+Pj4gICAgLyoqCj4+PiAgICAgKiAgaTQwZV9maWxsX2RlZmF1bHRfZGlyZWN0X2NtZF9kZXNj
IC0gQVEgZGVzY3JpcHRvciBoZWxwZXIgZnVuY3Rpb24KPj4+ICAgICAqICBAZGVzYzogICAgIHBv
aW50ZXIgdG8gdGhlIHRlbXAgZGVzY3JpcHRvciAobm9uIERNQSBtZW0pCj4+PiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2NvbW1vbi5jIGIvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2NvbW1vbi5jCj4+PiBpbmRleCBiNGQzZmVk
MGQyZjIuLmY4MWE2NzRjOGQ0MCAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2k0MGUvaTQwZV9jb21tb24uYwo+Pj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaTQwZS9pNDBlX2NvbW1vbi5jCj4+PiBAQCAtMjA3Myw3ICsyMDczLDggQEAgZW51bSBp
NDBlX3N0YXR1c19jb2RlIGk0MGVfYXFfc2V0X3ZzaV9tY19wcm9taXNjX29uX3ZsYW4oc3RydWN0
IGk0MGVfaHcgKmh3LAo+Pj4gICAgCWNtZC0+c2VpZCA9IGNwdV90b19sZTE2KHNlaWQpOwo+Pj4g
ICAgCWNtZC0+dmxhbl90YWcgPSBjcHVfdG9fbGUxNih2aWQgfCBJNDBFX0FRQ19TRVRfVlNJX1ZM
QU5fVkFMSUQpOwo+Pj4gICAgCj4+PiAtCXN0YXR1cyA9IGk0MGVfYXNxX3NlbmRfY29tbWFuZCho
dywgJmRlc2MsIE5VTEwsIDAsIGNtZF9kZXRhaWxzKTsKPj4+ICsJc3RhdHVzID0gaTQwZV9hc3Ff
c2VuZF9jb21tYW5kX2F0b21pYyhodywgJmRlc2MsIE5VTEwsIDAsCj4+PiArCQkJCQkgICAgICBj
bWRfZGV0YWlscywgdHJ1ZSk7Cj4+PiAgICAKPj4+ICAgIAlyZXR1cm4gc3RhdHVzOwo+Pj4gICAg
fQo+Pj4gQEAgLTIxMTQsNyArMjExNSw4IEBAIGVudW0gaTQwZV9zdGF0dXNfY29kZSBpNDBlX2Fx
X3NldF92c2lfdWNfcHJvbWlzY19vbl92bGFuKHN0cnVjdCBpNDBlX2h3ICpodywKPj4+ICAgIAlj
bWQtPnNlaWQgPSBjcHVfdG9fbGUxNihzZWlkKTsKPj4+ICAgIAljbWQtPnZsYW5fdGFnID0gY3B1
X3RvX2xlMTYodmlkIHwgSTQwRV9BUUNfU0VUX1ZTSV9WTEFOX1ZBTElEKTsKPj4+ICAgIAo+Pj4g
LQlzdGF0dXMgPSBpNDBlX2FzcV9zZW5kX2NvbW1hbmQoaHcsICZkZXNjLCBOVUxMLCAwLCBjbWRf
ZGV0YWlscyk7Cj4+PiArCXN0YXR1cyA9IGk0MGVfYXNxX3NlbmRfY29tbWFuZF9hdG9taWMoaHcs
ICZkZXNjLCBOVUxMLCAwLAo+Pj4gKwkJCQkJICAgICAgY21kX2RldGFpbHMsIHRydWUpOwo+Pj4g
ICAgCj4+PiAgICAJcmV0dXJuIHN0YXR1czsKPj4+ICAgIH0KPj4+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfcHJvdG90eXBlLmggYi9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfcHJvdG90eXBlLmgKPj4+IGluZGV4IGFhZWEyOTc2
NDBlMC4uOTI0MWI2MDA1YWQzIDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaTQwZS9pNDBlX3Byb3RvdHlwZS5oCj4+PiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pNDBlL2k0MGVfcHJvdG90eXBlLmgKPj4+IEBAIC0yMiwxMSArMjIsMTUgQEAgdm9p
ZCBpNDBlX2FkbWlucV9pbml0X3JpbmdfZGF0YShzdHJ1Y3QgaTQwZV9odyAqaHcpOwo+Pj4gICAg
aTQwZV9zdGF0dXMgaTQwZV9jbGVhbl9hcnFfZWxlbWVudChzdHJ1Y3QgaTQwZV9odyAqaHcsCj4+
PiAgICAJCQkJCSAgICAgc3RydWN0IGk0MGVfYXJxX2V2ZW50X2luZm8gKmUsCj4+PiAgICAJCQkJ
CSAgICAgdTE2ICpldmVudHNfcGVuZGluZyk7Cj4+PiAtaTQwZV9zdGF0dXMgaTQwZV9hc3Ffc2Vu
ZF9jb21tYW5kKHN0cnVjdCBpNDBlX2h3ICpodywKPj4+IC0JCQkJc3RydWN0IGk0MGVfYXFfZGVz
YyAqZGVzYywKPj4+IC0JCQkJdm9pZCAqYnVmZiwgLyogY2FuIGJlIE5VTEwgKi8KPj4+IC0JCQkJ
dTE2ICBidWZmX3NpemUsCj4+PiAtCQkJCXN0cnVjdCBpNDBlX2FzcV9jbWRfZGV0YWlscyAqY21k
X2RldGFpbHMpOwo+Pj4gK2k0MGVfc3RhdHVzCj4+PiAraTQwZV9hc3Ffc2VuZF9jb21tYW5kKHN0
cnVjdCBpNDBlX2h3ICpodywgc3RydWN0IGk0MGVfYXFfZGVzYyAqZGVzYywKPj4+ICsJCSAgICAg
IHZvaWQgKmJ1ZmYsIC8qIGNhbiBiZSBOVUxMICovIHUxNiAgYnVmZl9zaXplLAo+Pj4gKwkJICAg
ICAgc3RydWN0IGk0MGVfYXNxX2NtZF9kZXRhaWxzICpjbWRfZGV0YWlscyk7Cj4+PiAraTQwZV9z
dGF0dXMKPj4+ICtpNDBlX2FzcV9zZW5kX2NvbW1hbmRfYXRvbWljKHN0cnVjdCBpNDBlX2h3ICpo
dywgc3RydWN0IGk0MGVfYXFfZGVzYyAqZGVzYywKPj4+ICsJCQkgICAgIHZvaWQgKmJ1ZmYsIC8q
IGNhbiBiZSBOVUxMICovIHUxNiAgYnVmZl9zaXplLAo+Pj4gKwkJCSAgICAgc3RydWN0IGk0MGVf
YXNxX2NtZF9kZXRhaWxzICpjbWRfZGV0YWlscywKPj4+ICsJCQkgICAgIGJvb2wgaXNfYXRvbWlj
X2NvbnRleHQpOwo+Pj4gICAgCj4+PiAgICAvKiBkZWJ1ZyBmdW5jdGlvbiBmb3IgYWRtaW5xICov
Cj4+PiAgICB2b2lkIGk0MGVfZGVidWdfYXEoc3RydWN0IGk0MGVfaHcgKmh3LCBlbnVtIGk0MGVf
ZGVidWdfbWFzayBtYXNrLAo+Pj4KPj4+IGJhc2UtY29tbWl0OiAxMmQ5Y2QwMGYxMDMxN2FiNGUz
NGUxNTBmMjEzN2YzMDYxZWNhYThmCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFu
QG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtd2lyZWQtbGFuCg==
