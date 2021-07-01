Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70F693B8EE3
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Jul 2021 10:35:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0A74440562;
	Thu,  1 Jul 2021 08:35:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5Lk52OYeTyqy; Thu,  1 Jul 2021 08:35:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F414E4010B;
	Thu,  1 Jul 2021 08:35:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 653111BF29D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jul 2021 08:34:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 49DBD4010B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jul 2021 08:34:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0xMslN_lUHLd for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Jul 2021 08:34:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2EA76400CD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jul 2021 08:34:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10031"; a="195785487"
X-IronPort-AV: E=Sophos;i="5.83,313,1616482800"; d="scan'208";a="195785487"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2021 01:34:55 -0700
X-IronPort-AV: E=Sophos;i="5.83,313,1616482800"; d="scan'208";a="457573732"
Received: from sneftin-mobl.ger.corp.intel.com (HELO [10.251.163.223])
 ([10.251.163.223])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2021 01:34:52 -0700
To: Yee Li <seven.yi.lee@gmail.com>
References: <20210629082128.255988-1-seven.yi.lee@gmail.com>
 <02ff77ef-e802-8e13-d169-1ab2c250405a@intel.com>
 <CALX8JfQymbSmCP0xk0C-=v64__uaH=BR0UZjr2yRyLWVwm9dLQ@mail.gmail.com>
 <0234b97a-f207-47b0-1545-582ee5282824@intel.com>
 <CALX8JfTOG7bXn7gP+4n1_3CfFFk6aL-RJDY03RCOeBSpUeTEPQ@mail.gmail.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <1e15c452-f8be-85fa-e424-b7463cc703eb@intel.com>
Date: Thu, 1 Jul 2021 11:34:49 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CALX8JfTOG7bXn7gP+4n1_3CfFFk6aL-RJDY03RCOeBSpUeTEPQ@mail.gmail.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH] driver core: fix e1000e ltr bug
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
Cc: "Efrati, Nir" <nir.efrati@intel.com>, linux-kernel@vger.kernel.org, "Edri,
 Michael" <michael.edri@intel.com>, intel-wired-lan@lists.osuosl.org,
 kuba@kernel.org, "Ruinskiy, Dima" <dima.ruinskiy@intel.com>,
 davem@davemloft.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gNi8zMC8yMDIxIDA5OjI2LCBZZWUgTGkgd3JvdGU6Cj4gSSBhZ3JlZSB3aXRoIHlvdS4KPiBU
aGF0J3MgYmV0dGVyIGNvZGUuClRoYW5rIFllZS1MaSBmb3IgZGlzY292ZXJpbmcgdGhpcyBwcm9i
bGVtLiBJIHdvdWxkIHN1Z2dlc3Qgd2UgKGludGVsKSAKd2lsbCBwcm9jZXNzIGEgcGF0Y2ggdG8g
YWRkcmVzcyB0aGlzIHByb2JsZW0uIENhbiBJIHB1dCB5b3Uga2luZGx5IGFzIAoiU3VnZ2VzdGVk
LWJ5Ij8KPiAKPiBOZWZ0aW4sIFNhc2hhIDxzYXNoYS5uZWZ0aW5AaW50ZWwuY29tIDxtYWlsdG86
c2FzaGEubmVmdGluQGludGVsLmNvbT4+IAo+IOS6jjIwMjHlubQ25pyIMzDml6XlkajkuIkg5LiL
5Y2IMjoxM+WGmemBk++8mgo+IAo+ICAgICBPbiA2LzI5LzIwMjEgMjA6MzMsIFllZSBMaSB3cm90
ZToKPiAgICAgID4KPiAgICAgID4gWWVzLCAxODg3NDM2OG5zID4gMzE0NTcyOG5zLgo+ICAgICAg
PiBCdXQsIDB4ZTQwIDwgMHgxMDAzLgo+ICAgICBJIGdvdCB5b3UuIEkgd291bGQgYWdyZWUsIGRp
cmVjdCBjb21wYXJpc29uIGlzIGVycm9yLXByb25lLiAoMTBNIGlzCj4gICAgIGltcGFjdGVkKQo+
ICAgICBJIHdvdWxkIHN1Z2dlc3QgZG8gbm90IHVzZSBjb252ZXJ0IGZ1bmN0aW9uLiBsYXRfZW4g
c2hvdWxkIHJhdGhlcgo+ICAgICBwcmVzZW50ZWQgYXMgbGF0X2VuYyA9IHNjYWxlIHggdmFsdWU6
Cj4gICAgIEludHJvZHVjZSB0d28gdTE2IHZhcmlhYmxlcywgdTE2IGxhdF9lbmNfZCBhbmQgdTE2
IG1heF9sdHJfZW5jX2Q7Cj4gCj4gICAgIGxhdF9lbmNfZCA9IChsYXRfZW5jICYgMHgweDNmZikg
eCAoMVUgPDwgNSooKG1heF9sdHJfZW5jICYgMHgxYzAwKQo+ICAgICAgPj4gMTApKQo+IAo+ICAg
ICBtYXhfbHRyX2VuY19kID0gKG1heF9sdHJfZW5jICYgMHgweDNmZikgeCAoMVUgPDwgNSooKG1h
eF9sdHJfZW5jICYKPiAgICAgMHgxYzAwKSA+PiAxMCkpCj4gCj4gICAgIFRoZW46Cj4gICAgIGlm
IChsYXRfZW5jX2QgPiBtYXhfbHRyX2VuY19kKQo+ICAgICAgwqAgwqAgwqAgwqAgbGF0X2VuYyA9
IG1heF9sdHJfZW5jOwo+ICAgICB3aGF0IGRvIHlvdSB0aGluaz8KPiAKPiAgICAgID4KPiAgICAg
ID4gU28sIHRoZSBmaW5hbCBsYXRfZW5jIGlzIDB4ZTQwLgo+ICAgICAgPiAoTGF0ZW5jeSBlbmNv
ZGVkIGlzIGxlc3MgdGhhbiBtYXhpbXVtIExUUiBlbmNvZGVkIGJ5IHBsYXRmb3JtKQo+ICAgICAg
Pgo+ICAgICAgPiBOZWZ0aW4sIFNhc2hhIDxzYXNoYS5uZWZ0aW5AaW50ZWwuY29tCj4gICAgIDxt
YWlsdG86c2FzaGEubmVmdGluQGludGVsLmNvbT4gPG1haWx0bzpzYXNoYS5uZWZ0aW5AaW50ZWwu
Y29tCj4gICAgIDxtYWlsdG86c2FzaGEubmVmdGluQGludGVsLmNvbT4+Pgo+ICAgICAgPiDkuo4g
MjAyMeW5tDbmnIgyOeaXpeWRqOS6jCAyMjo0OeWGmemBk++8mgo+ICAgICAgPgo+ICAgICAgPsKg
IMKgIMKgT24gNi8yOS8yMDIxIDExOjIxLCBZZWVMaSB3cm90ZToKPiAgICAgID7CoCDCoCDCoFll
ZWxpLAo+ICAgICAgPsKgIMKgIMKgID4gSW4gZTEwMDBlIGRyaXZlciwgYSBQQ0llLWxpa2UgZGV2
aWNlLCB0aGUgbWF4Cj4gICAgIHNub29wL25vLXNub29wIGxhdGVuY3kKPiAgICAgID7CoCDCoCDC
oCA+IGlzIHRoZSB1cHBlciBsaW1pdC5TbywgZGlyZWN0bHkgY29tcGFyZSB0aGUgc2l6ZSBvZgo+
ICAgICBsYXRfZW5jIGFuZAo+ICAgICAgPsKgIMKgIMKgID4gbWF4X2x0cl9lbmMgaXMgaW5jb3Jy
ZWN0Lgo+ICAgICAgPsKgIMKgIMKgID4KPiAgICAgID7CoCDCoCDCoHdoeT8KPiAgICAgID7CoCDC
oCDCoCA+wqAgwqAgwqAgSW4gMTAwME1icHMsIDB4OGI5IDwgMHgxMDAzLCAxODk0NDAgbnMgPCAz
MTQ1NzI4IG5zLAo+ICAgICBjb3JyZWN0Lgo+ICAgICAgPsKgIMKgIMKgID4KPiAgICAgID7CoCDC
oCDCoCA+wqAgwqAgwqAgSW4gMTAwTWJwcywgMHhjM2EgPCAweDEwMDMsIDE5MDA1NDQgbnMgPCAz
MTQ1NzI4IG5zLAo+ICAgICBjb3JyZWN0Lgo+ICAgICAgPsKgIMKgIMKgID4KPiAgICAgID7CoCDC
oCDCoCA+wqAgwqAgwqAgSW4gMTBNYnBzLCAweGU0MCA8IDB4MTAwMywgMTg4NzQzNjggPiAzMTQ1
NzI4LCBpbmNvcnJlY3QuCj4gICAgICA+wqAgwqAgwqAgPgo+ICAgICAgPsKgIMKgIMKgUGxhdGZv
cm0gTFRSIGVuY29kZWQgaXMgMHgxMDAzIC0gcmlnaHQuIEl0IGlzIG1lYW50IDEwNDg1NzZucwo+
ICAgICB4IDMgPQo+ICAgICAgPsKgIMKgIMKgMzE0NTczOG5zLgo+ICAgICAgPsKgIMKgIMKgTm93
LAo+ICAgICAgPsKgIMKgIMKgZm9yIDEwMDBNOiAweDA4YjkgPT4gMTg1bnMgeCAxMDI0ID0gMTg5
NDQwbnMgKHlvdSBhcmUgY29ycmVjdCkKPiAgICAgID7CoCDCoCDCoGZvciAxMDBNOiAweDBjM2Eg
PT4gNThucyB4IDMyNzY4ID0gMTkwMDU0NG5zIChjb3JyZWN0KQo+ICAgICAgPsKgIMKgIMKgZm9y
IDEwTTogMHgwZTQxID0+IDU3N25zIHggMzI3NjggPSAxODkwNzEzNm5zIChvaz8pCj4gICAgICA+
wqAgwqAgwqAxODkwNzEzNm5zID4gMzE0NTczOG5zLCAobGF0ZW5jeSBlbmNvZGVkIGlzIGdyZWF0
IHRoYW4KPiAgICAgbWF4aW11bSBMVFIKPiAgICAgID7CoCDCoCDCoGVuY29kZWQgYnkgcGxhdGZv
cm0pIC0gc28sIHRoZXJlIGlzIG5vIHBvaW50IHRvIHdhaXQgbW9yZQo+ICAgICB0aGFuIHBsYXRm
b3JtCj4gICAgICA+wqAgwqAgwqByZXF1aXJlZCwgYW5kIGxhdF9lbmM9bWF4X2x0cl9lbmMuIEl0
IGlzIGV4cGVjdGVkIGFuZCB3ZSBzZW50Cj4gICAgIHJpZ2h0Cj4gICAgICA+wqAgwqAgwqB2YWx1
ZSB0byB0aGUgcG93ZXIgbWFuYWdlbWVudCBjb250cm9sbGVyLgo+ICAgICAgPsKgIMKgIMKgV2hh
dCBpcyB0aGUgcHJvYmxlbSB5b3UgdHJ5IHNvbHZlPwo+ICAgICAgPgo+ICAgICAgPsKgIMKgIMKg
ID4gRGVjb2RlZCB0aGUgbGF0X2VuYyBhbmQgbWF4X2x0cl9lbmMgYmVmb3JlIGNvbXBhcmUgdGhl
bSBpcwo+ICAgICBuZWNlc3NhcnkuCj4gICAgICA+wqAgwqAgwqAgPgo+ICAgICAgPsKgIMKgIMKg
ID4gU2lnbmVkLW9mZi1ieTogWWVlTGkgPHNldmVuLnlpLmxlZUBnbWFpbC5jb20KPiAgICAgPG1h
aWx0bzpzZXZlbi55aS5sZWVAZ21haWwuY29tPgo+ICAgICAgPsKgIMKgIMKgPG1haWx0bzpzZXZl
bi55aS5sZWVAZ21haWwuY29tIDxtYWlsdG86c2V2ZW4ueWkubGVlQGdtYWlsLmNvbT4+Pgo+ICAg
ICAgPsKgIMKgIMKgID4gLS0tCj4gICAgICA+wqAgwqAgwqAgPsKgIMKgZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvZTEwMDBlL2ljaDhsYW4uYyB8IDIzCj4gICAgICA+wqAgwqAgwqArKysrKysr
KysrKysrKysrKysrKy0KPiAgICAgID7CoCDCoCDCoCA+wqAgwqAxIGZpbGUgY2hhbmdlZCwgMjIg
aW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+ICAgICAgPsKgIMKgIMKgID4KPiAgICAgID7C
oCDCoCDCoCA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUv
aWNoOGxhbi5jCj4gICAgICA+wqAgwqAgwqBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2Ux
MDAwZS9pY2g4bGFuLmMKPiAgICAgID7CoCDCoCDCoCA+IGluZGV4IDU5MGFkMTEwZDM4My4uM2Jm
ZjFiNTcwYjc2IDEwMDY0NAo+ICAgICAgPsKgIMKgIMKgID4gLS0tIGEvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvZTEwMDBlL2ljaDhsYW4uYwo+ICAgICAgPsKgIMKgIMKgID4gKysrIGIvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2ljaDhsYW4uYwo+ICAgICAgPsKgIMKgIMKg
ID4gQEAgLTk4Niw2ICs5ODYsMjcgQEAgc3RhdGljIHMzMgo+ICAgICBlMTAwMF9rMV93b3JrYXJv
dW5kX2xwdF9scChzdHJ1Y3QKPiAgICAgID7CoCDCoCDCoGUxMDAwX2h3ICpodywgYm9vbCBsaW5r
KQo+ICAgICAgPsKgIMKgIMKgID7CoCDCoCDCoCDCoHJldHVybiByZXRfdmFsOwo+ICAgICAgPsKg
IMKgIMKgID7CoCDCoH0KPiAgICAgID7CoCDCoCDCoCA+Cj4gICAgICA+wqAgwqAgwqAgPiArc3Rh
dGljIHUzMiBjb252ZXJ0X2UxMDAwZV9sdHJfc2NhbGUodTMyIHZhbCkKPiAgICAgID7CoCDCoCDC
oCA+ICt7Cj4gICAgICA+wqAgwqAgwqAgPiArwqAgwqAgwqBpZiAodmFsID4gNSkKPiAgICAgID7C
oCDCoCDCoCA+ICvCoCDCoCDCoCDCoCDCoCDCoCDCoHJldHVybiAwOwo+ICAgICAgPsKgIMKgIMKg
ID4gKwo+ICAgICAgPsKgIMKgIMKgID4gK8KgIMKgIMKgcmV0dXJuIDFVIDw8ICg1ICogdmFsKTsK
PiAgICAgID7CoCDCoCDCoCA+ICt9Cj4gICAgICA+wqAgwqAgwqAgPiArCj4gICAgICA+wqAgwqAg
wqAgPiArc3RhdGljIHU2NCBkZWNvZGVkX2x0cih1MzIgdmFsKQo+ICAgICAgPsKgIMKgIMKgID4g
K3sKPiAgICAgID7CoCDCoCDCoCA+ICvCoCDCoCDCoHU2NCBkZWNvZGVkX2xhdGVuY3k7Cj4gICAg
ICA+wqAgwqAgwqAgPiArwqAgwqAgwqB1MzIgdmFsdWU7Cj4gICAgICA+wqAgwqAgwqAgPiArwqAg
wqAgwqB1MzIgc2NhbGU7Cj4gICAgICA+wqAgwqAgwqAgPiArCj4gICAgICA+wqAgwqAgwqAgPiAr
wqAgwqAgwqB2YWx1ZSA9IHZhbCAmIDB4MDNGRjsKPiAgICAgID7CoCDCoCDCoCA+ICvCoCDCoCDC
oHNjYWxlID0gKHZhbCAmIDB4MUMwMCkgPj4gMTA7Cj4gICAgICA+wqAgwqAgwqAgPiArwqAgwqAg
wqBkZWNvZGVkX2xhdGVuY3kgPSB2YWx1ZSAqCj4gICAgIGNvbnZlcnRfZTEwMDBlX2x0cl9zY2Fs
ZShzY2FsZSk7Cj4gICAgICA+wqAgwqAgwqAgPiArCj4gICAgICA+wqAgwqAgwqAgPiArwqAgwqAg
wqByZXR1cm4gZGVjb2RlZF9sYXRlbmN5Owo+ICAgICAgPsKgIMKgIMKgID4gK30KPiAgICAgID7C
oCDCoCDCoCA+ICsKPiAgICAgID7CoCDCoCDCoCA+wqAgwqAvKioKPiAgICAgID7CoCDCoCDCoCA+
wqAgwqAgKsKgIGUxMDAwX3BsYXRmb3JtX3BtX3BjaF9scHQgLSBTZXQgcGxhdGZvcm0gcG93ZXIK
PiAgICAgbWFuYWdlbWVudAo+ICAgICAgPsKgIMKgIMKgdmFsdWVzCj4gICAgICA+wqAgwqAgwqAg
PsKgIMKgICrCoCBAaHc6IHBvaW50ZXIgdG8gdGhlIEhXIHN0cnVjdHVyZQo+ICAgICAgPsKgIMKg
IMKgID4gQEAgLTEwNTksNyArMTA4MCw3IEBAIHN0YXRpYyBzMzIKPiAgICAgZTEwMDBfcGxhdGZv
cm1fcG1fcGNoX2xwdChzdHJ1Y3QKPiAgICAgID7CoCDCoCDCoGUxMDAwX2h3ICpodywgYm9vbCBs
aW5rKQo+ICAgICAgPsKgIMKgIMKgID7CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCBFMTAwMF9QQ0lfTFRSX0NBUF9MUFQgKyAyLAo+ICAgICAgPsKg
IMKgIMKgJm1heF9ub3Nub29wKTsKPiAgICAgID7CoCDCoCDCoCA+wqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqBtYXhfbHRyX2VuYyA9IG1heF90KHUxNiwgbWF4X3Nub29wLAo+ICAgICBtYXhfbm9zbm9v
cCk7Cj4gICAgICA+wqAgwqAgwqAgPgo+ICAgICAgPsKgIMKgIMKgID4gLcKgIMKgIMKgIMKgIMKg
IMKgIMKgaWYgKGxhdF9lbmMgPiBtYXhfbHRyX2VuYykKPiAgICAgID7CoCDCoCDCoCA+ICvCoCDC
oCDCoCDCoCDCoCDCoCDCoGlmIChkZWNvZGVkX2x0cihsYXRfZW5jKSA+Cj4gICAgIGRlY29kZWRf
bHRyKG1heF9sdHJfZW5jKSkKPiAgICAgID7CoCDCoCDCoCA+wqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqBsYXRfZW5jID0gbWF4X2x0cl9lbmM7Cj4gICAgICA+wqAgwqAgwqAgPsKg
IMKgIMKgIMKgfQo+ICAgICAgPsKgIMKgIMKgID4KPiAgICAgID7CoCDCoCDCoCA+Cj4gICAgICA+
wqAgwqAgwqBzYXNoYQo+ICAgICAgPgo+IApzYXNoYQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVs
LXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
