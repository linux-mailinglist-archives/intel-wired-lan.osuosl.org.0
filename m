Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5082C3A2122
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Jun 2021 02:04:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E469E4025D;
	Thu, 10 Jun 2021 00:04:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ugOhwbaOdMZB; Thu, 10 Jun 2021 00:04:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 03F5D401FB;
	Thu, 10 Jun 2021 00:04:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7A6371BF424
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Jun 2021 00:04:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 75564401FE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Jun 2021 00:04:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DajU2fqovtJQ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Jun 2021 00:04:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4C2CB401FB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Jun 2021 00:04:12 +0000 (UTC)
IronPort-SDR: mwgBDXyrWGotvkGfqxCJ/xl9JTpvCQF3Bvf1Y5F7WEtSPhGUAXYbS5+CoBr1OXB54+JD0QTZAB
 hgMhi/mnqOdg==
X-IronPort-AV: E=McAfee;i="6200,9189,10010"; a="266349935"
X-IronPort-AV: E=Sophos;i="5.83,262,1616482800"; d="scan'208";a="266349935"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 17:04:11 -0700
IronPort-SDR: 4MnFHB+M+vjtoiMy13HteGof5hFGFs5FhkQtRFaWT8DG7SvgqidkUIAFAPs7b9eR1TNZy9DFRs
 PB0vo/OgQdgg==
X-IronPort-AV: E=Sophos;i="5.83,262,1616482800"; d="scan'208";a="552848525"
Received: from kotikala-mobl1.amr.corp.intel.com (HELO
 vcostago-mobl2.amr.corp.intel.com) ([10.209.25.177])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 17:04:10 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Bjorn Helgaas <helgaas@kernel.org>
In-Reply-To: <20210609232034.GA2681266@bjorn-Precision-5520>
References: <20210609232034.GA2681266@bjorn-Precision-5520>
Date: Wed, 09 Jun 2021 17:04:09 -0700
Message-ID: <87eedavb46.fsf@vcostago-mobl2.amr.corp.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH next-queue v5 3/4] igc: Enable PCIe PTM
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, netdev@vger.kernel.org,
 richardcochran@gmail.com, hch@infradead.org, intel-wired-lan@lists.osuosl.org,
 linux-pci@vger.kernel.org, bhelgaas@google.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Qmpvcm4gSGVsZ2FhcyA8aGVsZ2Fhc0BrZXJuZWwub3JnPiB3cml0ZXM6Cgo+IE9uIFdlZCwgSnVu
IDA5LCAyMDIxIGF0IDA0OjA3OjIwUE0gLTA3MDAsIFZpbmljaXVzIENvc3RhIEdvbWVzIHdyb3Rl
Ogo+PiBIaSBQYXVsLAo+PiAKPj4gPj4gCj4+ID4+PiBSZWdhcmRpbmcgbXkgY29tbWVudCwgSSBk
aWQgbm90IG1lYW4gcmV0dXJuaW5nIGFuIGVycm9yIGJ1dCB0aGUgbG9nCj4+ID4+PiAqbGV2ZWwq
IG9mIHRoZSBtZXNzYWdlLiBTbywgYGRtZXNnIC0tbGV2ZWwgZXJyYCB3b3VsZCBzaG93IHRoYXQg
bWVzc2FnZS4KPj4gPj4+IEJ1dCBpZiB0aGVyZSBhcmUgUENJIGNvbnRyb2xsZXJzIG5vdCBzdXBw
b3J0aW5nIHRoYXQsIGl04oCZcyBub3QgYW4gZXJyb3IsCj4+ID4+PiBidXQgYSB3YXJuaW5nIGF0
IG1vc3QuIFNvLCBJ4oCZZCB1c2U6Cj4+ID4+Pgo+PiA+Pj4gCWRldl93YXJuKCZwZGV2LT5kZXYs
ICJQVE0gbm90IHN1cHBvcnRlZCBieSBQQ0kgYnVzL2NvbnRyb2xsZXIKPj4gPj4+IChwY2lfZW5h
YmxlX3B0bSgpIGZhaWxlZClcbiIpOwo+PiA+PiAKPj4gPj4gSSB3aWxsIHVzZSB5b3Ugc3VnZ2Vz
dGlvbiBmb3IgdGhlIG1lc3NhZ2UsIGJ1dCBJIHRoaW5rIHRoYXQgd2FybiBpcyBhCj4+ID4+IGJp
dCB0b28gbXVjaCwgaW5mbyBvciBub3RpY2Ugc2VlbSB0byBiZSBiZXR0ZXIuCj4+ID4KPj4gPiBJ
IGRvIG5vdCBrbm93LCBpZiBtb2Rlcm4gUENJKGUpKD8pIGNvbnRyb2xsZXJzIG5vcm1hbGx5IHN1
cHBvcnQgUFRNIG9yIAo+PiA+IG5vdC4gSWYgcmVjZW50IGNvbnRyb2xsZXJzIHNob3VsZCBzdXBw
b3J0IGl0LCB0aGVuIGEgd2FybmluZyB3b3VsZCBiZSAKPj4gPiB3YXJyYW50ZWQsIG90aGVyd2lz
ZSBhIG5vdGljZS4KPj4gCj4+IEZyb20gdGhlIEludGVsIHNpZGUsIGl0IHNlZW1zIHRoYXQgaXQn
cyBiZWVuIHN1cHBvcnRlZCBmb3IgYSBmZXcgeWVhcnMuCj4+IFNvLCBmYWlyIGVub3VnaCwgbGV0
J3MgZ28gd2l0aCBhIHdhcm4uCj4KPiBJJ20gbm90IHN1cmUgYWJvdXQgdGhpcy4gIEkgdGhpbmsg
Indhcm5pbmciIG1lc3NhZ2VzIGludGVycnVwdCBkaXN0cm8KPiBncmFwaGljYWwgYm9vdCBzY2Vu
YXJpb3MgYW5kIGNhdXNlIHVzZXIgY29tcGxhaW50cy4gIEluIHRoaXMgY2FzZSwKPiB0aGVyZSBp
cyBub3RoaW5nIGJyb2tlbiBhbmQgdGhlIHVzZXIgY2FuIGRvIG5vdGhpbmcgYWJvdXQgaXQ7IGl0
J3MKPiBtZXJlbHkgYSBwaWVjZSBvZiBtaXNzaW5nIG9wdGlvbmFsIGZ1bmN0aW9uYWxpdHkuICBT
byBJIHRoaW5rICJpbmZvIgo+IGlzIGEgbW9yZSBhcHByb3ByaWF0ZSBsZXZlbC4KCkdvb2QgcG9p
bnQuICJpbmZvIiBpdCBpcywgdGhlbi4gCgoKQ2hlZXJzLAotLSAKVmluaWNpdXMKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1h
aWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9z
bC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
