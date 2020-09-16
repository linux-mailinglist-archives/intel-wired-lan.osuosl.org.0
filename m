Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 062C326C485
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Sep 2020 17:49:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 86176869F5;
	Wed, 16 Sep 2020 15:49:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i5tr7_PuLXIQ; Wed, 16 Sep 2020 15:49:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CE88286A42;
	Wed, 16 Sep 2020 15:49:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E5CC71BF977
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Sep 2020 15:49:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D6116275A5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Sep 2020 15:49:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cLx7hxE7cc6p for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Sep 2020 15:49:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by silver.osuosl.org (Postfix) with ESMTPS id 756A12750D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Sep 2020 15:49:07 +0000 (UTC)
IronPort-SDR: YtT9qie5Eep3yCzOKTQ1ci7VMjacw57VK2/TGxn0O8ucoVcot/A7fHQI/3Ah2WTNCSDCc5kAY5
 TyENLN8fzi2Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9746"; a="139507442"
X-IronPort-AV: E=Sophos;i="5.76,433,1592895600"; d="scan'208";a="139507442"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2020 08:49:06 -0700
IronPort-SDR: zmPQAMpH5jtg2AZ1GH/TDjJJvGwUpdjEGuumwxOLOSnmgavkpuvZ3guz7OZUTaXYZh5si8FdVF
 aLUHqXu4ab5g==
X-IronPort-AV: E=Sophos;i="5.76,433,1592895600"; d="scan'208";a="483358293"
Received: from annatere-mobl.ger.corp.intel.com (HELO
 btopel-mobl.ger.intel.com) ([10.252.62.158])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2020 08:49:04 -0700
To: Dan Carpenter <dan.carpenter@oracle.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>
References: <20200916143228.GA764370@mwanda>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>
Message-ID: <850c79f4-de8a-1132-0e37-facbc09e4dfb@intel.com>
Date: Wed, 16 Sep 2020 17:49:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200916143228.GA764370@mwanda>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH] i40e,
 xsk: uninitialized variable in i40e_clean_rx_irq_zc()
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
Cc: intel-wired-lan@lists.osuosl.org, kernel-janitors@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMjAyMC0wOS0xNiAxNjozMiwgRGFuIENhcnBlbnRlciB3cm90ZToKPiBUaGUgImZhaWx1cmUi
IHZhcmlhYmxlIGlzIHVzZWQgd2l0aG91dCBiZWluZyBpbml0aWFsaXplZC4gIEl0IHNob3VsZCBi
ZQo+IHNldCB0byBmYWxzZS4KPiAKPiBGaXhlczogOGNiZjc0MTQ5OTAzICgiaTQwZSwgeHNrOiBt
b3ZlIGJ1ZmZlciBhbGxvY2F0aW9uIG91dCBvZiB0aGUgUnggcHJvY2Vzc2luZyBsb29wIikKPiBT
aWduZWQtb2ZmLWJ5OiBEYW4gQ2FycGVudGVyIDxkYW4uY2FycGVudGVyQG9yYWNsZS5jb20+CgpU
aGFua3MgRGFuIQoKQWNrZWQtYnk6IEJqw7ZybiBUw7ZwZWwgPGJqb3JuLnRvcGVsQGludGVsLmNv
bT4KCj4gLS0tCj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfeHNrLmMg
fCAyICstCj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkK
PiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3hz
ay5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3hzay5jCj4gaW5kZXgg
NmFjZWRlMGFjZGNhLi41NjdmZDY3ZTkwMGUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3hzay5jCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaTQwZS9pNDBlX3hzay5jCj4gQEAgLTI4MSw4ICsyODEsOCBAQCBpbnQgaTQwZV9jbGVh
bl9yeF9pcnFfemMoc3RydWN0IGk0MGVfcmluZyAqcnhfcmluZywgaW50IGJ1ZGdldCkKPiAgIAl1
bnNpZ25lZCBpbnQgdG90YWxfcnhfYnl0ZXMgPSAwLCB0b3RhbF9yeF9wYWNrZXRzID0gMDsKPiAg
IAl1MTYgY2xlYW5lZF9jb3VudCA9IEk0MEVfREVTQ19VTlVTRUQocnhfcmluZyk7Cj4gICAJdW5z
aWduZWQgaW50IHhkcF9yZXMsIHhkcF94bWl0ID0gMDsKPiArCWJvb2wgZmFpbHVyZSA9IGZhbHNl
Owo+ICAgCXN0cnVjdCBza19idWZmICpza2I7Cj4gLQlib29sIGZhaWx1cmU7Cj4gICAKPiAgIAl3
aGlsZSAobGlrZWx5KHRvdGFsX3J4X3BhY2tldHMgPCAodW5zaWduZWQgaW50KWJ1ZGdldCkpIHsK
PiAgIAkJdW5pb24gaTQwZV9yeF9kZXNjICpyeF9kZXNjOwo+IApfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0
CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
