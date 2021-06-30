Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DBBA03B7D4A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Jun 2021 08:13:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3E5CB83A7E;
	Wed, 30 Jun 2021 06:13:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fNxCRDNKcXoc; Wed, 30 Jun 2021 06:13:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 36E7783A7B;
	Wed, 30 Jun 2021 06:13:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1C4791BF83C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jun 2021 06:13:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0AACE83A7B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jun 2021 06:13:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8iI8Yp36Xw8O for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Jun 2021 06:13:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D662E83A73
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jun 2021 06:13:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10030"; a="229930285"
X-IronPort-AV: E=Sophos;i="5.83,311,1616482800"; d="scan'208";a="229930285"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2021 23:13:41 -0700
X-IronPort-AV: E=Sophos;i="5.83,311,1616482800"; d="scan'208";a="447342239"
Received: from sneftin-mobl.ger.corp.intel.com (HELO [10.185.169.66])
 ([10.185.169.66])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2021 23:13:38 -0700
To: Yee Li <seven.yi.lee@gmail.com>
References: <20210629082128.255988-1-seven.yi.lee@gmail.com>
 <02ff77ef-e802-8e13-d169-1ab2c250405a@intel.com>
 <CALX8JfQymbSmCP0xk0C-=v64__uaH=BR0UZjr2yRyLWVwm9dLQ@mail.gmail.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <0234b97a-f207-47b0-1545-582ee5282824@intel.com>
Date: Wed, 30 Jun 2021 09:13:36 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CALX8JfQymbSmCP0xk0C-=v64__uaH=BR0UZjr2yRyLWVwm9dLQ@mail.gmail.com>
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

T24gNi8yOS8yMDIxIDIwOjMzLCBZZWUgTGkgd3JvdGU6Cj4gCj4gWWVzLCAxODg3NDM2OG5zID4g
MzE0NTcyOG5zLgo+IEJ1dCwgMHhlNDAgPCAweDEwMDMuCkkgZ290IHlvdS4gSSB3b3VsZCBhZ3Jl
ZSwgZGlyZWN0IGNvbXBhcmlzb24gaXMgZXJyb3ItcHJvbmUuICgxME0gaXMgCmltcGFjdGVkKQpJ
IHdvdWxkIHN1Z2dlc3QgZG8gbm90IHVzZSBjb252ZXJ0IGZ1bmN0aW9uLiBsYXRfZW4gc2hvdWxk
IHJhdGhlciAKcHJlc2VudGVkIGFzIGxhdF9lbmMgPSBzY2FsZSB4IHZhbHVlOgpJbnRyb2R1Y2Ug
dHdvIHUxNiB2YXJpYWJsZXMsIHUxNiBsYXRfZW5jX2QgYW5kIHUxNiBtYXhfbHRyX2VuY19kOwoK
bGF0X2VuY19kID0gKGxhdF9lbmMgJiAweDB4M2ZmKSB4ICgxVSA8PCA1KigobWF4X2x0cl9lbmMg
JiAweDFjMDApID4+IDEwKSkKCm1heF9sdHJfZW5jX2QgPSAobWF4X2x0cl9lbmMgJiAweDB4M2Zm
KSB4ICgxVSA8PCA1KigobWF4X2x0cl9lbmMgJiAKMHgxYzAwKSA+PiAxMCkpCgpUaGVuOgppZiAo
bGF0X2VuY19kID4gbWF4X2x0cl9lbmNfZCkKCWxhdF9lbmMgPSBtYXhfbHRyX2VuYzsKd2hhdCBk
byB5b3UgdGhpbms/Cgo+IAo+IFNvLCB0aGUgZmluYWwgbGF0X2VuYyBpcyAweGU0MC4KPiAoTGF0
ZW5jeSBlbmNvZGVkIGlzIGxlc3MgdGhhbiBtYXhpbXVtIExUUiBlbmNvZGVkIGJ5IHBsYXRmb3Jt
KQo+IAo+IE5lZnRpbiwgU2FzaGEgPHNhc2hhLm5lZnRpbkBpbnRlbC5jb20gPG1haWx0bzpzYXNo
YS5uZWZ0aW5AaW50ZWwuY29tPj4gCj4g5LqOIDIwMjHlubQ25pyIMjnml6XlkajkuowgMjI6NDnl
hpnpgZPvvJoKPiAKPiAgICAgT24gNi8yOS8yMDIxIDExOjIxLCBZZWVMaSB3cm90ZToKPiAgICAg
WWVlbGksCj4gICAgICA+IEluIGUxMDAwZSBkcml2ZXIsIGEgUENJZS1saWtlIGRldmljZSwgdGhl
IG1heCBzbm9vcC9uby1zbm9vcCBsYXRlbmN5Cj4gICAgICA+IGlzIHRoZSB1cHBlciBsaW1pdC5T
bywgZGlyZWN0bHkgY29tcGFyZSB0aGUgc2l6ZSBvZiBsYXRfZW5jIGFuZAo+ICAgICAgPiBtYXhf
bHRyX2VuYyBpcyBpbmNvcnJlY3QuCj4gICAgICA+Cj4gICAgIHdoeT8KPiAgICAgID7CoCDCoCDC
oCBJbiAxMDAwTWJwcywgMHg4YjkgPCAweDEwMDMsIDE4OTQ0MCBucyA8IDMxNDU3MjggbnMsIGNv
cnJlY3QuCj4gICAgICA+Cj4gICAgICA+wqAgwqAgwqAgSW4gMTAwTWJwcywgMHhjM2EgPCAweDEw
MDMsIDE5MDA1NDQgbnMgPCAzMTQ1NzI4IG5zLCBjb3JyZWN0Lgo+ICAgICAgPgo+ICAgICAgPsKg
IMKgIMKgIEluIDEwTWJwcywgMHhlNDAgPCAweDEwMDMsIDE4ODc0MzY4ID4gMzE0NTcyOCwgaW5j
b3JyZWN0Lgo+ICAgICAgPgo+ICAgICBQbGF0Zm9ybSBMVFIgZW5jb2RlZCBpcyAweDEwMDMgLSBy
aWdodC4gSXQgaXMgbWVhbnQgMTA0ODU3Nm5zIHggMyA9Cj4gICAgIDMxNDU3Mzhucy4KPiAgICAg
Tm93LAo+ICAgICBmb3IgMTAwME06IDB4MDhiOSA9PiAxODVucyB4IDEwMjQgPSAxODk0NDBucyAo
eW91IGFyZSBjb3JyZWN0KQo+ICAgICBmb3IgMTAwTTogMHgwYzNhID0+IDU4bnMgeCAzMjc2OCA9
IDE5MDA1NDRucyAoY29ycmVjdCkKPiAgICAgZm9yIDEwTTogMHgwZTQxID0+IDU3N25zIHggMzI3
NjggPSAxODkwNzEzNm5zIChvaz8pCj4gICAgIDE4OTA3MTM2bnMgPiAzMTQ1NzM4bnMsIChsYXRl
bmN5IGVuY29kZWQgaXMgZ3JlYXQgdGhhbiBtYXhpbXVtIExUUgo+ICAgICBlbmNvZGVkIGJ5IHBs
YXRmb3JtKSAtIHNvLCB0aGVyZSBpcyBubyBwb2ludCB0byB3YWl0IG1vcmUgdGhhbiBwbGF0Zm9y
bQo+ICAgICByZXF1aXJlZCwgYW5kIGxhdF9lbmM9bWF4X2x0cl9lbmMuIEl0IGlzIGV4cGVjdGVk
IGFuZCB3ZSBzZW50IHJpZ2h0Cj4gICAgIHZhbHVlIHRvIHRoZSBwb3dlciBtYW5hZ2VtZW50IGNv
bnRyb2xsZXIuCj4gICAgIFdoYXQgaXMgdGhlIHByb2JsZW0geW91IHRyeSBzb2x2ZT8KPiAKPiAg
ICAgID4gRGVjb2RlZCB0aGUgbGF0X2VuYyBhbmQgbWF4X2x0cl9lbmMgYmVmb3JlIGNvbXBhcmUg
dGhlbSBpcyBuZWNlc3NhcnkuCj4gICAgICA+Cj4gICAgICA+IFNpZ25lZC1vZmYtYnk6IFllZUxp
IDxzZXZlbi55aS5sZWVAZ21haWwuY29tCj4gICAgIDxtYWlsdG86c2V2ZW4ueWkubGVlQGdtYWls
LmNvbT4+Cj4gICAgICA+IC0tLQo+ICAgICAgPsKgIMKgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvZTEwMDBlL2ljaDhsYW4uYyB8IDIzCj4gICAgICsrKysrKysrKysrKysrKysrKysrLQo+ICAg
ICAgPsKgIMKgMSBmaWxlIGNoYW5nZWQsIDIyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkK
PiAgICAgID4KPiAgICAgID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2UxMDAwZS9pY2g4bGFuLmMKPiAgICAgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAw
MGUvaWNoOGxhbi5jCj4gICAgICA+IGluZGV4IDU5MGFkMTEwZDM4My4uM2JmZjFiNTcwYjc2IDEw
MDY0NAo+ICAgICAgPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvaWNo
OGxhbi5jCj4gICAgICA+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9p
Y2g4bGFuLmMKPiAgICAgID4gQEAgLTk4Niw2ICs5ODYsMjcgQEAgc3RhdGljIHMzMiBlMTAwMF9r
MV93b3JrYXJvdW5kX2xwdF9scChzdHJ1Y3QKPiAgICAgZTEwMDBfaHcgKmh3LCBib29sIGxpbmsp
Cj4gICAgICA+wqAgwqAgwqAgwqByZXR1cm4gcmV0X3ZhbDsKPiAgICAgID7CoCDCoH0KPiAgICAg
ID4KPiAgICAgID4gK3N0YXRpYyB1MzIgY29udmVydF9lMTAwMGVfbHRyX3NjYWxlKHUzMiB2YWwp
Cj4gICAgICA+ICt7Cj4gICAgICA+ICvCoCDCoCDCoGlmICh2YWwgPiA1KQo+ICAgICAgPiArwqAg
wqAgwqAgwqAgwqAgwqAgwqByZXR1cm4gMDsKPiAgICAgID4gKwo+ICAgICAgPiArwqAgwqAgwqBy
ZXR1cm4gMVUgPDwgKDUgKiB2YWwpOwo+ICAgICAgPiArfQo+ICAgICAgPiArCj4gICAgICA+ICtz
dGF0aWMgdTY0IGRlY29kZWRfbHRyKHUzMiB2YWwpCj4gICAgICA+ICt7Cj4gICAgICA+ICvCoCDC
oCDCoHU2NCBkZWNvZGVkX2xhdGVuY3k7Cj4gICAgICA+ICvCoCDCoCDCoHUzMiB2YWx1ZTsKPiAg
ICAgID4gK8KgIMKgIMKgdTMyIHNjYWxlOwo+ICAgICAgPiArCj4gICAgICA+ICvCoCDCoCDCoHZh
bHVlID0gdmFsICYgMHgwM0ZGOwo+ICAgICAgPiArwqAgwqAgwqBzY2FsZSA9ICh2YWwgJiAweDFD
MDApID4+IDEwOwo+ICAgICAgPiArwqAgwqAgwqBkZWNvZGVkX2xhdGVuY3kgPSB2YWx1ZSAqIGNv
bnZlcnRfZTEwMDBlX2x0cl9zY2FsZShzY2FsZSk7Cj4gICAgICA+ICsKPiAgICAgID4gK8KgIMKg
IMKgcmV0dXJuIGRlY29kZWRfbGF0ZW5jeTsKPiAgICAgID4gK30KPiAgICAgID4gKwo+ICAgICAg
PsKgIMKgLyoqCj4gICAgICA+wqAgwqAgKsKgIGUxMDAwX3BsYXRmb3JtX3BtX3BjaF9scHQgLSBT
ZXQgcGxhdGZvcm0gcG93ZXIgbWFuYWdlbWVudAo+ICAgICB2YWx1ZXMKPiAgICAgID7CoCDCoCAq
wqAgQGh3OiBwb2ludGVyIHRvIHRoZSBIVyBzdHJ1Y3R1cmUKPiAgICAgID4gQEAgLTEwNTksNyAr
MTA4MCw3IEBAIHN0YXRpYyBzMzIgZTEwMDBfcGxhdGZvcm1fcG1fcGNoX2xwdChzdHJ1Y3QKPiAg
ICAgZTEwMDBfaHcgKmh3LCBib29sIGxpbmspCj4gICAgICA+wqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgRTEwMDBfUENJX0xUUl9DQVBfTFBUICsg
MiwKPiAgICAgJm1heF9ub3Nub29wKTsKPiAgICAgID7CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoG1h
eF9sdHJfZW5jID0gbWF4X3QodTE2LCBtYXhfc25vb3AsIG1heF9ub3Nub29wKTsKPiAgICAgID4K
PiAgICAgID4gLcKgIMKgIMKgIMKgIMKgIMKgIMKgaWYgKGxhdF9lbmMgPiBtYXhfbHRyX2VuYykK
PiAgICAgID4gK8KgIMKgIMKgIMKgIMKgIMKgIMKgaWYgKGRlY29kZWRfbHRyKGxhdF9lbmMpID4g
ZGVjb2RlZF9sdHIobWF4X2x0cl9lbmMpKQo+ICAgICAgPsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgbGF0X2VuYyA9IG1heF9sdHJfZW5jOwo+ICAgICAgPsKgIMKgIMKgIMKgfQo+
ICAgICAgPgo+ICAgICAgPgo+ICAgICBzYXNoYQo+Cl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwt
d2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
