Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AE31A9B105
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Aug 2019 15:35:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1B20687C94;
	Fri, 23 Aug 2019 13:35:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uKu0b6Xepug7; Fri, 23 Aug 2019 13:35:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2915687D93;
	Fri, 23 Aug 2019 13:35:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3964D1BF5EA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2019 13:35:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 332AA233B9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2019 13:35:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pim9jwvUcYMG for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Aug 2019 13:35:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by silver.osuosl.org (Postfix) with ESMTPS id 50D23233A6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2019 13:35:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Aug 2019 06:35:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,421,1559545200"; d="scan'208";a="330723926"
Received: from klaatz-mobl1.ger.corp.intel.com (HELO [10.237.221.61])
 ([10.237.221.61])
 by orsmga004.jf.intel.com with ESMTP; 23 Aug 2019 06:35:41 -0700
To: Jonathan Lemon <jonathan.lemon@gmail.com>
References: <20190730085400.10376-1-kevin.laatz@intel.com>
 <20190822014427.49800-1-kevin.laatz@intel.com>
 <20190822014427.49800-4-kevin.laatz@intel.com>
 <3AEEC88E-8D45-41C5-AFBF-51512826B1A7@gmail.com>
From: "Laatz, Kevin" <kevin.laatz@intel.com>
Message-ID: <e549e399-089e-f423-169f-81ac9f831cad@intel.com>
Date: Fri, 23 Aug 2019 14:35:40 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <3AEEC88E-8D45-41C5-AFBF-51512826B1A7@gmail.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v5 03/11] xsk: add support to
 allow unaligned chunk placement
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
Cc: maximmi@mellanox.com, jakub.kicinski@netronome.com, daniel@iogearbox.net,
 netdev@vger.kernel.org, ciara.loftus@intel.com, ast@kernel.org,
 stephen@networkplumber.org, saeedm@mellanox.com,
 intel-wired-lan@lists.osuosl.org, bruce.richardson@intel.com,
 bpf@vger.kernel.org, bjorn.topel@intel.com, magnus.karlsson@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMjIvMDgvMjAxOSAxOTo0MywgSm9uYXRoYW4gTGVtb24gd3JvdGU6Cj4gT24gMjEgQXVnIDIw
MTksIGF0IDE4OjQ0LCBLZXZpbiBMYWF0eiB3cm90ZToKPj4gQ3VycmVudGx5LCBhZGRyZXNzZXMg
YXJlIGNodW5rIHNpemUgYWxpZ25lZC4gVGhpcyBtZWFucywgd2UgYXJlIHZlcnkKPj4gcmVzdHJp
Y3RlZCBpbiB0ZXJtcyBvZiB3aGVyZSB3ZSBjYW4gcGxhY2UgY2h1bmsgd2l0aGluIHRoZSB1bWVt
LiBGb3IKPj4gZXhhbXBsZSwgaWYgd2UgaGF2ZSBhIGNodW5rIHNpemUgb2YgMmssIHRoZW4gb3Vy
IGNodW5rcyBjYW4gb25seSBiZSAKPj4gcGxhY2VkCj4+IGF0IDAsMmssNGssNmssOGsuLi4gYW5k
IHNvIG9uIChpZS4gZXZlcnkgMmsgc3RhcnRpbmcgZnJvbSAwKS4KPj4KPj4gVGhpcyBwYXRjaCBp
bnRyb2R1Y2VzIHRoZSBhYmlsaXR5IHRvIHVzZSB1bmFsaWduZWQgY2h1bmtzLiBXaXRoIHRoZXNl
Cj4+IGNoYW5nZXMsIHdlIGFyZSBubyBsb25nZXIgYm91bmQgdG8gaGF2aW5nIHRvIHBsYWNlIGNo
dW5rcyBhdCBhIDJrIChvcgo+PiB3aGF0ZXZlciB5b3VyIGNodW5rIHNpemUgaXMpIGludGVydmFs
LiBTaW5jZSB3ZSBhcmUgbm8gbG9uZ2VyIGRlYWxpbmcgCj4+IHdpdGgKPj4gYWxpZ25lZCBjaHVu
a3MsIHRoZXkgY2FuIG5vdyBjcm9zcyBwYWdlIGJvdW5kYXJpZXMuIENoZWNrcyBmb3IgcGFnZQo+
PiBjb250aWd1aXR5IGhhdmUgYmVlbiBhZGRlZCBpbiBvcmRlciB0byBrZWVwIHRyYWNrIG9mIHdo
aWNoIHBhZ2VzIGFyZQo+PiBmb2xsb3dlZCBieSBhIHBoeXNpY2FsbHkgY29udGlndW91cyBwYWdl
Lgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBLZXZpbiBMYWF0eiA8a2V2aW4ubGFhdHpAaW50ZWwuY29t
Pgo+PiBTaWduZWQtb2ZmLWJ5OiBDaWFyYSBMb2Z0dXMgPGNpYXJhLmxvZnR1c0BpbnRlbC5jb20+
Cj4+IFNpZ25lZC1vZmYtYnk6IEJydWNlIFJpY2hhcmRzb24gPGJydWNlLnJpY2hhcmRzb25AaW50
ZWwuY29tPgo+Pgo+PiAtLS0KPj4gdjI6Cj4+IMKgIC0gQWRkIGNoZWNrcyBmb3IgdGhlIGZsYWdz
IGNvbWluZyBmcm9tIHVzZXJzcGFjZQo+PiDCoCAtIEZpeCBob3cgd2UgZ2V0IGNodW5rX3NpemUg
aW4geHNrX2RpYWcuYwo+PiDCoCAtIEFkZCBkZWZpbmVzIGZvciBtYXNraW5nIHRoZSBuZXcgZGVz
Y3JpcHRvciBmb3JtYXQKPj4gwqAgLSBNb2RpZmllZCB0aGUgcnggZnVuY3Rpb25zIHRvIHVzZSBu
ZXcgZGVzY3JpcHRvciBmb3JtYXQKPj4gwqAgLSBNb2RpZmllZCB0aGUgdHggZnVuY3Rpb25zIHRv
IHVzZSBuZXcgZGVzY3JpcHRvciBmb3JtYXQKPj4KPj4gdjM6Cj4+IMKgIC0gQWRkIGhlbHBlciBm
dW5jdGlvbiB0byBkbyBhZGRyZXNzL29mZnNldCBtYXNraW5nL2FkZGl0aW9uCj4+Cj4+IHY0Ogo+
PiDCoCAtIGZpeGVkIHBhZ2Vfc3RhcnQgY2FsY3VsYXRpb24gaW4gX194c2tfcmN2X21lbWNweSgp
Lgo+PiDCoCAtIG1vdmUgb2Zmc2V0IGhhbmRsaW5nIHRvIHRoZSB4ZHBfdW1lbV9nZXRfKiBmdW5j
dGlvbnMKPj4gwqAgLSBtb2RpZmllZCB0aGUgbGVuIGZpZWxkIGluIHhkcF91bWVtX3JlZyBzdHJ1
Y3QuIFdlIG5vdyB1c2UgMTYgYml0cyAKPj4gZnJvbQo+PiDCoMKgwqAgdGhpcyBmb3IgdGhlIGZs
YWdzIGZpZWxkLgo+PiDCoCAtIHJlbW92ZWQgbmV4dF9wZ19jb250aWcgZmllbGQgZnJvbSB4ZHBf
dW1lbV9wYWdlIHN0cnVjdC4gVXNpbmcgbG93IDEyCj4+IMKgwqDCoCBiaXRzIG9mIGFkZHIgdG8g
c3RvcmUgZmxhZ3MgaW5zdGVhZC4KPj4gwqAgLSBvdGhlciBtaW5vciBjaGFuZ2VzIGJhc2VkIG9u
IHJldmlldyBjb21tZW50cwo+Pgo+PiB2NToKPj4gwqAgLSBBZGRlZCBhY2Nlc3NvcnMgZm9yIGdl
dHRpbmcgYWRkciBhbmQgb2Zmc2V0Cj4+IMKgIC0gQWRkZWQgaGVscGVyIGZ1bmN0aW9uIHRvIGFk
ZCBvZmZzZXQgdG8gYWRkcgo+PiDCoCAtIEZpeGVkIG9mZnNldCBoYW5kbGluZyBpbiB4c2tfcmN2
Cj4+IMKgIC0gUmVtb3ZlZCBiaXRmaWVsZHMgZnJvbSB4ZHBfdW1lbV9yZWcKPj4gwqAgLSBBZGRl
ZCBzdHJ1Y3Qgc2l6ZSBjaGVja2luZyBmb3IgeGRwX3VtZW1fcmVnIGluIHhza19zZXRzb2Nrb3B0
IHRvIAo+PiBoYW5kbGUKPj4gwqDCoMKgIGRpZmZlcmVudCB2ZXJzaW9ucyBvZiB0aGUgc3RydWN0
Lgo+PiDCoCAtIGZpeCBjb25mbGljdHMgYWZ0ZXIgJ2JwZi1hZi14ZHAtd2FrZXVwJyB3YXMgbWVy
Z2VkLgo+PiAtLS0KPj4gwqBpbmNsdWRlL25ldC94ZHBfc29jay5owqDCoMKgwqDCoCB8IDc1ICsr
KysrKysrKysrKysrKysrKysrKysrKysrKy0tCj4+IMKgaW5jbHVkZS91YXBpL2xpbnV4L2lmX3hk
cC5oIHzCoCA5ICsrKysKPj4gwqBuZXQveGRwL3hkcF91bWVtLmPCoMKgwqDCoMKgwqDCoMKgwqAg
fCAxOSArKysrKystLQo+PiDCoG5ldC94ZHAveHNrLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHwgOTYgKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLQo+PiDCoG5ldC94
ZHAveHNrX2RpYWcuY8KgwqDCoMKgwqDCoMKgwqDCoCB8wqAgMiArLQo+PiDCoG5ldC94ZHAveHNr
X3F1ZXVlLmjCoMKgwqDCoMKgwqDCoMKgIHwgNjggKysrKysrKysrKysrKysrKysrKysrKy0tLS0K
Pj4gwqA2IGZpbGVzIGNoYW5nZWQsIDIzMiBpbnNlcnRpb25zKCspLCAzNyBkZWxldGlvbnMoLSkK
Pj4KPj4KWy4uLl0KCj4+IEBAIC0xOTYsMTcgKzIyMSwxNyBAQCBpbnQgeHNrX2dlbmVyaWNfcmN2
KHN0cnVjdCB4ZHBfc29jayAqeHMsIHN0cnVjdCAKPj4geGRwX2J1ZmYgKnhkcCkKPj4gwqDCoMKg
wqDCoMKgwqDCoCBnb3RvIG91dF91bmxvY2s7Cj4+IMKgwqDCoMKgIH0KPj4KPj4gLcKgwqDCoCBp
ZiAoIXhza3FfcGVla19hZGRyKHhzLT51bWVtLT5mcSwgJmFkZHIpIHx8Cj4+ICvCoMKgwqAgaWYg
KCF4c2txX3BlZWtfYWRkcih4cy0+dW1lbS0+ZnEsICZhZGRyLCB4cy0+dW1lbSkgfHwKPj4gwqDC
oMKgwqDCoMKgwqDCoCBsZW4gPiB4cy0+dW1lbS0+Y2h1bmtfc2l6ZV9ub2hyIC0gWERQX1BBQ0tF
VF9IRUFEUk9PTSkgewo+PiDCoMKgwqDCoMKgwqDCoMKgIGVyciA9IC1FTk9TUEM7Cj4+IMKgwqDC
oMKgwqDCoMKgwqAgZ290byBvdXRfZHJvcDsKPj4gwqDCoMKgwqAgfQo+Pgo+PiAtwqDCoMKgIGFk
ZHIgKz0geHMtPnVtZW0tPmhlYWRyb29tOwo+PiAtCj4+IC3CoMKgwqAgYnVmZmVyID0geGRwX3Vt
ZW1fZ2V0X2RhdGEoeHMtPnVtZW0sIGFkZHIpOwo+PiArwqDCoMKgIGJ1ZmZlciA9IHhkcF91bWVt
X2dldF9kYXRhKHhzLT51bWVtLCBhZGRyICsgb2Zmc2V0KTsKPj4gwqDCoMKgwqAgbWVtY3B5KGJ1
ZmZlciwgeGRwLT5kYXRhX21ldGEsIGxlbiArIG1ldGFsZW4pOwo+PiAtwqDCoMKgIGFkZHIgKz0g
bWV0YWxlbjsKPj4gK8KgwqDCoCBvZmZzZXQgKz0gbWV0YWxlbjsKPj4gKwo+PiArwqDCoMKgIGFk
ZHIgPSB4c2tfdW1lbV9hZGp1c3Rfb2Zmc2V0KHhzLT51bWVtLCBhZGRyLCBvZmZzZXQpOwo+PiDC
oMKgwqDCoCBlcnIgPSB4c2txX3Byb2R1Y2VfYmF0Y2hfZGVzYyh4cy0+cngsIGFkZHIsIGxlbik7
Cj4+IMKgwqDCoMKgIGlmIChlcnIpCj4+IMKgwqDCoMKgwqDCoMKgwqAgZ290byBvdXRfZHJvcDsK
Pgo+IENhbid0IGp1c3QgYWRkIGFkZHJlc3MgYW5kIG9mZnNldCBhbnkgbG9uZ2VyLsKgIFRoaXMg
c2hvdWxkIHJlYWQ6Cj4KPiDCoMKgwqDCoGFkZHIgPSB4c2tfdW1lbV9hZGp1c3Rfb2Zmc2V0KHhz
LT51bWVtLCBhZGRyLCBvZmZzZXQpOwo+IMKgwqDCoMKgYnVmZmVyID0geGRwX3VtZW1fZ2V0X2Rh
dGEoeHMtPnVtZW0sIGFkZHIpOwo+Cj4gwqDCoMKgwqBhZGRyID0geHNrX3VtZW1fYWRqdXN0X29m
ZnNldCh4cy0+dW1lbSwgYWRkciwgbWV0YWxlbik7Cj4KPgo+IHNvIHRoYXQgb2Zmc2V0IGFuZCB0
aGVuIG1ldGFsZW4gYXJlIGFkZGVkLsKgIChvciBwcmVzZXJ2ZSB0aGUKPiBhZGRyZXNzIGFjcm9z
cyB0aGUgY2FsbHMgbGlrZSBtZW1jcHlfYWRkciBlYXJsaWVyKS4KCgpXaWxsIGZpeCB0aGlzLCB0
aGFua3MhCgotS2V2aW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9z
bC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2ly
ZWQtbGFuCg==
