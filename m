Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 435A556251
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jun 2019 08:27:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C209D21514;
	Wed, 26 Jun 2019 06:26:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fmnBVg9lRVXe; Wed, 26 Jun 2019 06:26:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A4EDB2151F;
	Wed, 26 Jun 2019 06:26:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5C18D1BF3CC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2019 06:26:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5830385FE4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2019 06:26:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DftaTS_dNJMp for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Jun 2019 06:26:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B8FDD85E25
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2019 06:26:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jun 2019 23:26:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,418,1557212400"; d="scan'208";a="188550973"
Received: from sneftin-mobl1.ger.corp.intel.com (HELO [10.185.23.132])
 ([10.185.23.132])
 by fmsmga002.fm.intel.com with ESMTP; 25 Jun 2019 23:26:53 -0700
To: Kai Heng Feng <kai.heng.feng@canonical.com>
References: <C4036C54-EEEB-47F3-9200-4DD1B22B4280@canonical.com>
 <3975473C-B117-4DC6-809A-6623A5A478BF@canonical.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <ed4eca8e-d393-91d7-5d2f-97d42e0b75cb@intel.com>
Date: Wed, 26 Jun 2019 09:26:53 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <3975473C-B117-4DC6-809A-6623A5A478BF@canonical.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] RX CRC errors on I219-V (6) 8086:15be
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
Cc: linux-kernel <linux-kernel@vger.kernel.org>,
 intel-wired-lan@lists.osuosl.org, Anthony Wong <anthony.wong@canonical.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gNi8yNi8yMDE5IDA5OjE0LCBLYWkgSGVuZyBGZW5nIHdyb3RlOgo+IEhpIFNhc2hhCj4gCj4g
YXQgNTowOSBQTSwgS2FpLUhlbmcgRmVuZyA8a2FpLmhlbmcuZmVuZ0BjYW5vbmljYWwuY29tPiB3
cm90ZToKPiAKPj4gSGkgSmVmZnJleSwKPj4KPj4gV2XigJl2ZSBlbmNvdW50ZXJlZCBhbm90aGVy
IGlzc3VlLCB3aGljaCBjYXVzZXMgbXVsdGlwbGUgQ1JDIGVycm9ycyBhbmQgCj4+IHJlbmRlcnMg
ZXRoZXJuZXQgY29tcGxldGVseSB1c2VsZXNzLCBoZXJl4oCZcyB0aGUgbmV0d29yayBzdGF0czoK
PiAKPiBJIGFsc28gdHJpZWQgaWdub3JlX2x0ciBmb3IgdGhpcyBpc3N1ZSwgc2VlbXMgbGlrZSBp
dCBhbGxldmlhdGVzIHRoZSAKPiBzeW1wdG9tIGEgYml0IGZvciBhIHdoaWxlLCB0aGVuIHRoZSBu
ZXR3b3JrIHN0aWxsIGJlY29tZXMgdXNlbGVzcyBhZnRlciAKPiBzb21lIHVzYWdlLgo+IAo+IEFu
ZCB5ZXMsIGl04oCZcyBhbHNvIGEgV2hpc2tleSBMYWtlIHBsYXRmb3JtLiBXaGF04oCZcyB0aGUg
bmV4dCBzdGVwIHRvIAo+IGRlYnVnIHRoaXMgcHJvYmxlbT8KPiAKPiBLYWktSGVuZwpDUkMgZXJy
b3JzIG5vdCByZWxhdGVkIHRvIHRoZSBMVFIuIFBsZWFzZSwgdHJ5IHRvIGRpc2FibGUgdGhlIE1F
IG9uIHlvdXIgCnBsYXRmb3JtLiBIb3BlIHlvdSBoYXZlIHRoaXMgb3B0aW9uIGluIEJJT1MuIEFu
b3RoZXIgd2F5IGlzIHRvIGNvbnRhY3QgCnlvdXIgUEMgdmVuZG9yIGFuZCBhc2sgdG8gcHJvdmlk
ZSBOVk0gd2l0aG91dCBNRS4gTGV0J3Mgc3RhcnQgZGVidWdnaW5nIAp3aXRoIHRoZXNlIHN0ZXBz
Lgo+IAo+Pgo+PiAvc3lzL2NsYXNzL25ldC9lbm8xL3N0YXRpc3RpY3MkIGdyZXAgLiAqCj4+IGNv
bGxpc2lvbnM6MAo+PiBtdWx0aWNhc3Q6OTUKPj4gcnhfYnl0ZXM6MTQ5OTg1MQo+PiByeF9jb21w
cmVzc2VkOjAKPj4gcnhfY3JjX2Vycm9yczoxMTY1Cj4+IHJ4X2Ryb3BwZWQ6MAo+PiByeF9lcnJv
cnM6MjMzMAo+PiByeF9maWZvX2Vycm9yczowCj4+IHJ4X2ZyYW1lX2Vycm9yczowCj4+IHJ4X2xl
bmd0aF9lcnJvcnM6MAo+PiByeF9taXNzZWRfZXJyb3JzOjAKPj4gcnhfbm9oYW5kbGVyOjAKPj4g
cnhfb3Zlcl9lcnJvcnM6MAo+PiByeF9wYWNrZXRzOjQ3ODkKPj4gdHhfYWJvcnRlZF9lcnJvcnM6
MAo+PiB0eF9ieXRlczo4NjQzMTIKPj4gdHhfY2Fycmllcl9lcnJvcnM6MAo+PiB0eF9jb21wcmVz
c2VkOjAKPj4gdHhfZHJvcHBlZDowCj4+IHR4X2Vycm9yczowCj4+IHR4X2ZpZm9fZXJyb3JzOjAK
Pj4gdHhfaGVhcnRiZWF0X2Vycm9yczowCj4+IHR4X3BhY2tldHM6NzM3MAo+PiB0eF93aW5kb3df
ZXJyb3JzOjAKPj4KPj4gU2FtZSBiZWhhdmlvciBjYW4gYmUgb2JzZXJ2ZWQgb24gYm90aCBtYWlu
bGluZSBrZXJuZWwgYW5kIG9uIHlvdXIgCj4+IGRldi1xdWV1ZSBicmFuY2guCj4+IE9UT0gsIHRo
ZSBzYW1lIGlzc3VlIGNhbuKAmXQgYmUgb2JzZXJ2ZWQgb24gb3V0LW9mLXRyZWUgZTEwMDBlLgo+
Pgo+PiBJcyB0aGVyZSBhbnkgcGxhbiB0byBjbG9zZSB0aGUgZ2FwIGJldHdlZW4gdXBzdHJlYW0g
YW5kIG91dC1vZi10cmVlIAo+PiB2ZXJzaW9uPwo+Pgo+PiBLYWktSGVuZwo+IAo+IAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFu
IG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9z
dW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
