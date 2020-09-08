Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A8BB9261136
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Sep 2020 14:22:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 319742D9B5;
	Tue,  8 Sep 2020 12:22:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5-xD1nV+CCIR; Tue,  8 Sep 2020 12:22:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CD5EF20551;
	Tue,  8 Sep 2020 12:22:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7D4AB1BF330
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Sep 2020 12:22:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 76AD78698C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Sep 2020 12:22:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V03PqVny9VwJ for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Sep 2020 12:21:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6077A86970
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Sep 2020 12:21:59 +0000 (UTC)
IronPort-SDR: Ez5t/fRgkDzLDtREpBDo1iL90qaTtPOQvdTP+dy1HkRSK06xhixHBQHOHgSlLxmjJL9N0BLNiy
 by1/viarPnJQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9737"; a="242933153"
X-IronPort-AV: E=Sophos;i="5.76,405,1592895600"; d="scan'208";a="242933153"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2020 05:21:58 -0700
IronPort-SDR: QUZMhhRD1HWIh4p0bJnRJT+K3mq14UH3G2hgwzsaSFMld+41gAv2OcrN7ze0CMMigaojXbm5/+
 kDmRxJyMxlPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,405,1592895600"; d="scan'208";a="284495341"
Received: from pgierasi-mobl.ger.corp.intel.com (HELO
 btopel-mobl.ger.intel.com) ([10.252.39.2])
 by fmsmga007.fm.intel.com with ESMTP; 08 Sep 2020 05:21:55 -0700
To: Magnus Karlsson <magnus.karlsson@gmail.com>,
 Maxim Mikityanskiy <maximmi@nvidia.com>
References: <20200904135332.60259-1-bjorn.topel@gmail.com>
 <0257f769-0f43-a5b7-176d-7c5ff8eaac3a@intel.com>
 <11f663ec-5ea7-926c-370d-0b67d3052583@nvidia.com>
 <CAJ8uoz3WbS7E1OiC5p8x+o48vwkN43R9JxMwvRvgVk4n3SNiZg@mail.gmail.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>
Message-ID: <75146564-2774-47ac-cc75-40d74bea50d8@intel.com>
Date: Tue, 8 Sep 2020 14:21:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAJ8uoz3WbS7E1OiC5p8x+o48vwkN43R9JxMwvRvgVk4n3SNiZg@mail.gmail.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 0/6] xsk: exit NAPI loop when
 AF_XDP Rx ring is full
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
Cc: Maxim Mikityanskiy <maximmi@mellanox.com>, hawk@kernel.org,
 Daniel Borkmann <daniel@iogearbox.net>, Alexei Starovoitov <ast@kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Network Development <netdev@vger.kernel.org>, kuba@kernel.org,
 bpf <bpf@vger.kernel.org>, "David S. Miller" <davem@davemloft.net>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMjAyMC0wOS0wOCAxMzozNywgTWFnbnVzIEthcmxzc29uIHdyb3RlOgo+IE9uIFR1ZSwgU2Vw
IDgsIDIwMjAgYXQgMTI6MzMgUE0gTWF4aW0gTWlraXR5YW5za2l5IDxtYXhpbW1pQG52aWRpYS5j
b20+IHdyb3RlOgo+Pgo+PiBPbiAyMDIwLTA5LTA0IDE2OjU5LCBCasO2cm4gVMO2cGVsIHdyb3Rl
Ogo+Pj4gT24gMjAyMC0wOS0wNCAxNTo1MywgQmrDtnJuIFTDtnBlbCB3cm90ZToKPj4+PiBUaGlz
IHNlcmllcyBhZGRyZXNzZXMgYSBwcm9ibGVtIHRoYXQgYXJpc2VzIHdoZW4gQUZfWERQIHplcm8t
Y29weSBpcwo+Pj4+IGVuYWJsZWQsIGFuZCB0aGUga2VybmVsIHNvZnRpcnEgUnggcHJvY2Vzc2lu
ZyBhbmQgdXNlcmxhbmQgcHJvY2Vzcwo+Pj4+IGlzIHJ1bm5pbmcgb24gdGhlIHNhbWUgY29yZS4K
Pj4+Pgo+Pj4gWy4uLl0KPj4+Pgo+Pj4KPj4+IEBNYXhpbSBJJ20gbm90IHdlbGwgdmVyc2VkIGlu
IE1lbGxhbm94IGRyaXZlcnMuIFdvdWxkIHRoaXMgYmUgcmVsZXZhbnQKPj4+IHRvIG1seDUgYXMg
d2VsbD8KPj4KPj4gVGhhbmtzIGZvciBsZXR0aW5nIG1lIGtub3cgYWJvdXQgdGhpcyBzZXJpZXMh
IFNvIHRoZSBiYXNpYyBpZGVhIGlzIHRvCj4+IHN0b3AgcHJvY2Vzc2luZyBoYXJkd2FyZSBjb21w
bGV0aW9ucyBpZiB0aGUgUlggcmluZyBnZXRzIGZ1bGwsIGJlY2F1c2UKPj4gdGhlIGFwcGxpY2F0
aW9uIGRpZG4ndCBoYXZlIGNoYW5jZSB0byBydW4/IFllcywgSSB0aGluayBpdCdzIGFsc28KPj4g
cmVsZXZhbnQgdG8gbWx4NSwgdGhlIGlzc3VlIGlzIG5vdCBkcml2ZXItc3BlY2lmaWMsIGFuZCBh
IHNpbWlsYXIgZml4IGlzCj4+IGFwcGxpY2FibGUuIEhvd2V2ZXIsIGl0IG1heSBsZWFkIHRvIGNv
bXBsZXRpb24gcXVldWUgb3ZlcmZsb3dzIC0gc29tZQo+PiBhbmFseXNpcyBpcyBuZWVkZWQgdG8g
dW5kZXJzdGFuZCB3aGF0IGhhcHBlbnMgdGhlbiBhbmQgaG93IHRvIGhhbmRsZSBpdC4KPj4KPj4g
UmVnYXJkaW5nIHRoZSBmZWF0dXJlLCBJIHRoaW5rIGl0IHNob3VsZCBiZSBvcHQtaW4gKGRpc2Fi
bGVkIGJ5Cj4+IGRlZmF1bHQpLCBiZWNhdXNlIG9sZCBhcHBsaWNhdGlvbnMgbWF5IG5vdCB3YWtl
dXAgUlggYWZ0ZXIgdGhleSBwcm9jZXNzCj4+IHBhY2tldHMgaW4gdGhlIFJYIHJpbmcuCj4KCkZp
cnN0IG9mIGFsbDsgTWF4LCB0aGFua3MgZm9yIHNvbWUgcmVhbGx5IGdvb2QgaW5wdXQgYXMgdXN1
YWwhCgoKPiBIb3cgYWJvdXQgbmVlZF93YWtldXAgZW5hYmxlL2Rpc2FibGUgYXQgYmluZCB0aW1l
IGJlaW5nIHRoYXQgb3B0LWluLAo+IGluc3RlYWQgb2YgYSBuZXcgb3B0aW9uPyBJdCBpcyBvZmYg
YnkgZGVmYXVsdCwgYW5kIHdoZW4gaXQgaXMgb2ZmLCB0aGUKPiBkcml2ZXIgYnVzeS1zcGlucyBv
biB0aGUgUnggcmluZyB1bnRpbCBpdCBjYW4gcHV0IGFuIGVudHJ5IHRoZXJlLiBJdAo+IHdpbGwg
bm90IHlpZWxkIHRvIHRoZSBhcHBsaWNhdGlvbiBieSByZXR1cm5pbmcgc29tZXRoaW5nIGxlc3Mg
dGhhbgo+IGJ1ZGdldC4gQXBwbGljYXRpb25zIG5lZWQgbm90IGNoZWNrIHRoZSBuZWVkX3dha2V1
cCBmbGFnLiBJZgo+IG5lZWRfd2FrZXVwIGlzIGVuYWJsZWQgYnkgdGhlIHVzZXIsIHRoZSBjb250
cmFjdCBpcyB0aGF0IHVzZXItc3BhY2UKPiBuZWVkcyB0byBjaGVjayB0aGUgbmVlZF93YWtldXAg
ZmxhZyBhbmQgYWN0IG9uIGl0LiBJZiBpdCBkb2VzIG5vdCwKPiB0aGVuIHRoYXQgaXMgYSBwcm9n
cmFtbWluZyBlcnJvciBhbmQgaXQgY2FuIGJlIHNldCBmb3IgYW55IHVuc3BlY2lmaWVkCj4gcmVh
c29uLiBObyByZWFzb24gdG8gbW9kaWZ5IHRoZSBhcHBsaWNhdGlvbiwgaWYgaXQgY2hlY2tzIG5l
ZWRfd2FrZXVwLgo+IEJ1dCBpZiB0aGlzIHBhdGNoIGJlaGF2ZXMgbGlrZSB0aGF0IEkgaGF2ZSBu
b3QgY2hlY2tlZC4KPgoKSXQgZG9lcyBub3QgYmVoYXZlIGV4YWN0bHkgbGlrZSB0aGlzLiBJZiBu
ZWVkX3dha2V1cCBpcyBlbmFibGVkLCB0aGUgCm5hcGkgbG9vayBleGlzdHMsIGJ1dCBpZiBub3Qg
dGhlIG5hcGkgaXMgcmVhcm1lZCAtLSBzbyB3ZSdsbCBnZXQgYSBsZXNzIAplZmZpY2llbnQgbG9v
cC4gSSdsbCBuZWVkIGFkZHJlc3MgdGhpcy4KCkknbSBsZWFuaW5nIHRvd2FyZHMgYSBtb3JlIGV4
cGxpY2l0IG9wdC1pbiBsaWtlIE1heCBzdWdnZXN0ZWQuIEFzIE1heCAKcG9pbnRlZCBvdXQsIEFG
X1hEUC9YRFBfVFggaXMgYWN0dWFsbHkgYSBub24taW5zYW5lKCEpIHdheSBvZiB1c2luZyAKQUZf
WERQIHplcm8tY29weSwgd2hpY2ggd2lsbCBzdWZmZXIgZnJvbSB0aGUgZWFybHkgZXhpdC4KCgo+
IEdvb2QgcG9pbnRzIGluIHRoZSByZXN0IG9mIHRoZSBtYWlsLCB0aGF0IEkgdGhpbmsgc2hvdWxk
IGJlIGFkZHJlc3NlZC4KPgoKWWVhaCwgSSBhZ3JlZS4gSSB3aWxsIHRha2UgYSBzdGVwIGJhY2sg
YW4gcmV0aGluay4gSSdsbCBleHBlcmltZW50IHdpdGgKdGhlIGJ1c3ktcG9sbGluZyBzdWdnZXN0
ZWQgYnkgSmFrdWIsIGFuZCBhbHNvIGFuIG9wdC1pbiBlYXJseSBleGl0LgoKVGhhbmtzIGZvciBh
bGwgdGhlIHN1Z2dlc3Rpb25zIGZvbGtzIQoKCkNoZWVycywKQmrDtnJuCgoKPiAvTWFnbnVzCj4g
Cj4+IElzIGl0IHJlcXVpcmVkIHRvIGNoYW5nZSB4ZHBzb2NrIGFjY29yZGluZ2x5Pwo+PiBBbHNv
LCB3aGVuIG5lZWRfd2FrZXVwIGlzIGRpc2FibGVkLCB5b3VyIGRyaXZlciBpbXBsZW1lbnRhdGlv
biBzZWVtcyB0bwo+PiBxdWl0IE5BUEkgYW55d2F5LCBidXQgaXQgc2hvdWxkbid0IGhhcHBlbiwg
YmVjYXVzZSBubyBvbmUgd2lsbCBzZW5kIGEKPj4gd2FrZXVwLgo+Pgo+PiBXYWl0aW5nIHVudGls
IHRoZSBSWCByaW5nIGZpbGxzIHVwLCB0aGVuIHBhc3NpbmcgY29udHJvbCB0byB0aGUKPj4gYXBw
bGljYXRpb24gYW5kIHdhaXRpbmcgdW50aWwgdGhlIGhhcmR3YXJlIGNvbXBsZXRpb24gcXVldWUg
ZmlsbHMgdXAsCj4+IGFuZCBzbyBvbiBpbmNyZWFzZXMgbGF0ZW5jeSAtIHRoZSBidXN5IHBvbGxp
bmcgYXBwcm9hY2ggc291bmRzIG1vcmUKPj4gbGVnaXQgaGVyZS4KPj4KPj4gVGhlIGJlaGF2aW9y
IG1heSBiZSBkaWZmZXJlbnQgZGVwZW5kaW5nIG9uIHRoZSBkcml2ZXIgaW1wbGVtZW50YXRpb246
Cj4+Cj4+IDEuIElmIHlvdSBhcm0gdGhlIGNvbXBsZXRpb24gcXVldWUgYW5kIGxlYXZlIGludGVy
cnVwdHMgZW5hYmxlZCBvbiBlYXJseQo+PiBleGl0IHRvbywgdGhlIGFwcGxpY2F0aW9uIHdpbGwg
c29vbiBiZSBpbnRlcnJ1cHRlZCBhbnl3YXkgYW5kIHdvbid0IGhhdmUKPj4gbXVjaCB0aW1lIHRv
IHByb2Nlc3MgbWFueSBwYWNrZXRzLCBsZWFkaW5nIHRvIGFwcCA8LT4gTkFQSSBwaW5nLXBvbmcg
b25lCj4+IHBhY2tldCBhdCBhIHRpbWUsIG1ha2luZyBOQVBJIGluZWZmaWNpZW50Lgo+Pgo+PiAy
LiBJZiB5b3UgZG9uJ3QgYXJtIHRoZSBjb21wbGV0aW9uIHF1ZXVlIG9uIGVhcmx5IGV4aXQgYW5k
IHdhaXQgZm9yIHRoZQo+PiBleHBsaWNpdCB3YWtldXAgZnJvbSB0aGUgYXBwbGljYXRpb24sIGl0
IHdpbGwgZWFzaWx5IG92ZXJmbG93IHRoZQo+PiBoYXJkd2FyZSBjb21wbGV0aW9uIHF1ZXVlLCBi
ZWNhdXNlIHdlIGRvbid0IGhhdmUgYSBzeW1tZXRyaWMgbWVjaGFuaXNtCj4+IHRvIHN0b3AgdGhl
IGFwcGxpY2F0aW9uIG9uIGltbWluZW50IGhhcmR3YXJlIHF1ZXVlIG92ZXJmbG93LiBJdCBkb2Vz
bid0Cj4+IGZlZWwgY29ycmVjdCBhbmQgbWF5IGJlIHRyaWNraWVyIHRvIGhhbmRsZTogaWYgdGhl
IGFwcGxpY2F0aW9uIGlzIHRvbwo+PiBzbG93LCBzdWNoIGRyb3BzIHNob3VsZCBoYXBwZW4gb24g
ZHJpdmVyL2tlcm5lbCBsZXZlbCwgbm90IGluIGhhcmR3YXJlLgo+Pgo+PiBXaGljaCBiZWhhdmlv
ciBpcyB1c2VkIGluIHlvdXIgZHJpdmVycz8gT3IgYW0gSSBtaXNzaW5nIHNvbWUgbW9yZSBvcHRp
b25zPwo+Pgo+PiBCVFcsIGl0IHNob3VsZCBiZSBiZXR0ZXIgdG8gcGFzcyBjb250cm9sIHRvIHRo
ZSBhcHBsaWNhdGlvbiBiZWZvcmUgdGhlCj4+IGZpcnN0IGRyb3BwZWQgcGFja2V0LCBub3QgYWZ0
ZXIgaXQgaGFzIGJlZW4gZHJvcHBlZC4KPj4KPj4gU29tZSB3b3JrbG9hZHMgZGlmZmVyZW50IGZy
b20gcHVyZSBBRl9YRFAsIGZvciBleGFtcGxlLCA1MC81MCBBRl9YRFAgYW5kCj4+IFhEUF9UWCBt
YXkgc3VmZmVyIGZyb20gc3VjaCBiZWhhdmlvciwgc28gaXQncyBhbm90aGVyIHBvaW50IHRvIG1h
a2UgYQo+PiBrbm9iIG9uIHRoZSBhcHBsaWNhdGlvbiBsYXllciB0byBlbmFibGUvZGlzYWJsZSBp
dC4KPj4KPj4gICBGcm9tIHRoZSBkcml2ZXIgQVBJIHBlcnNwZWN0aXZlLCBJIHdvdWxkIHByZWZl
ciB0byBzZWUgYSBzaW1wbGVyIEFQSSBpZgo+PiBwb3NzaWJsZS4gVGhlIGN1cnJlbnQgQVBJIGV4
cG9zZXMgdGhpbmdzIHRoYXQgdGhlIGRyaXZlciBzaG91bGRuJ3Qga25vdwo+PiAoQlBGIG1hcCB0
eXBlKSwgYW5kIHJlcXVpcmVzIFhTSy1zcGVjaWZpYyBoYW5kbGluZy4gSXQgd291bGQgYmUgYmV0
dGVyCj4+IGlmIHNvbWUgc3BlY2lmaWMgZXJyb3IgY29kZSByZXR1cm5lZCBmcm9tIHhkcF9kb19y
ZWRpcmVjdCB3YXMgcmVzZXJ2ZWQKPj4gdG8gbWVhbiAiZXhpdCBOQVBJIGVhcmx5IGlmIHlvdSBz
dXBwb3J0IGl0Ii4gVGhpcyB3YXkgd2Ugd291bGRuJ3QgbmVlZAo+PiB0d28gbmV3IGhlbHBlcnMs
IHR3byB4ZHBfZG9fcmVkaXJlY3QgZnVuY3Rpb25zLCBhbmQgdGhpcyBhcHByb2FjaCB3b3VsZAo+
PiBiZSBleHRlbnNpYmxlIHRvIG90aGVyIG5vbi1YU0sgdXNlIGNhc2VzIHdpdGhvdXQgZnVydGhl
ciBjaGFuZ2VzIGluIHRoZQo+PiBkcml2ZXIsIGFuZCBhbHNvIHRoZSBsb2dpYyB0byBvcHQtaW4g
dGhlIGZlYXR1cmUgY291bGQgYmUgcHV0IGluc2lkZSB0aGUKPj4ga2VybmVsLgo+Pgo+PiBUaGFu
a3MsCj4+IE1heAo+Pgo+Pj4KPj4+IENoZWVycywKPj4+IEJqw7Zybgo+PgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGlu
ZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
