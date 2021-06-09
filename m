Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D01D3A20A9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Jun 2021 01:20:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8597F40537;
	Wed,  9 Jun 2021 23:20:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VN3wFd6zBMzV; Wed,  9 Jun 2021 23:20:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6358B40530;
	Wed,  9 Jun 2021 23:20:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 655AB1BF424
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jun 2021 23:20:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5242340530
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jun 2021 23:20:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZXRp6eKW55Zv for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Jun 2021 23:20:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 34A3A40528
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jun 2021 23:20:37 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 351DA613EA;
 Wed,  9 Jun 2021 23:20:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1623280836;
 bh=Iqdd5M4M7EtRVepzlnqCfEtpxl5wcylP1LowaP5LcOY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=HaHU4Kuq+35kCUGf97dmvchdiFfXdaF7NfwycGu1Ywj6X44jLHG3s6etLZVFLMPji
 PQPetFAnL11kfEQk1T10Ar7KFs6+TDvtgQM0oiBONNSKj2XTV6UQAKe/6fe2DNY3Yh
 KDvhxCunDUXJerQPMqTbTL2j9WpJvf7u8r95zqkMAYGDLumBH+czs0i7FAOQB/7pY5
 ImOwAPBiGBiSVRmLHTiZ2FEO7EdHA+XulNyljOPsooErjVXvly42j3HrYXqbmRONVi
 sjznhZswIRDAbBt9CCXvYZkeiGgk5fTInZRLaRyZiOzGgAACGwoIdI5jTrHg+JPrTK
 xhJyEaDlC5Zfg==
Date: Wed, 9 Jun 2021 18:20:34 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <20210609232034.GA2681266@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87k0n2vdqv.fsf@vcostago-mobl2.amr.corp.intel.com>
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

T24gV2VkLCBKdW4gMDksIDIwMjEgYXQgMDQ6MDc6MjBQTSAtMDcwMCwgVmluaWNpdXMgQ29zdGEg
R29tZXMgd3JvdGU6Cj4gSGkgUGF1bCwKPiAKPiA+PiAKPiA+Pj4gUmVnYXJkaW5nIG15IGNvbW1l
bnQsIEkgZGlkIG5vdCBtZWFuIHJldHVybmluZyBhbiBlcnJvciBidXQgdGhlIGxvZwo+ID4+PiAq
bGV2ZWwqIG9mIHRoZSBtZXNzYWdlLiBTbywgYGRtZXNnIC0tbGV2ZWwgZXJyYCB3b3VsZCBzaG93
IHRoYXQgbWVzc2FnZS4KPiA+Pj4gQnV0IGlmIHRoZXJlIGFyZSBQQ0kgY29udHJvbGxlcnMgbm90
IHN1cHBvcnRpbmcgdGhhdCwgaXTigJlzIG5vdCBhbiBlcnJvciwKPiA+Pj4gYnV0IGEgd2Fybmlu
ZyBhdCBtb3N0LiBTbywgSeKAmWQgdXNlOgo+ID4+Pgo+ID4+PiAJZGV2X3dhcm4oJnBkZXYtPmRl
diwgIlBUTSBub3Qgc3VwcG9ydGVkIGJ5IFBDSSBidXMvY29udHJvbGxlcgo+ID4+PiAocGNpX2Vu
YWJsZV9wdG0oKSBmYWlsZWQpXG4iKTsKPiA+PiAKPiA+PiBJIHdpbGwgdXNlIHlvdSBzdWdnZXN0
aW9uIGZvciB0aGUgbWVzc2FnZSwgYnV0IEkgdGhpbmsgdGhhdCB3YXJuIGlzIGEKPiA+PiBiaXQg
dG9vIG11Y2gsIGluZm8gb3Igbm90aWNlIHNlZW0gdG8gYmUgYmV0dGVyLgo+ID4KPiA+IEkgZG8g
bm90IGtub3csIGlmIG1vZGVybiBQQ0koZSkoPykgY29udHJvbGxlcnMgbm9ybWFsbHkgc3VwcG9y
dCBQVE0gb3IgCj4gPiBub3QuIElmIHJlY2VudCBjb250cm9sbGVycyBzaG91bGQgc3VwcG9ydCBp
dCwgdGhlbiBhIHdhcm5pbmcgd291bGQgYmUgCj4gPiB3YXJyYW50ZWQsIG90aGVyd2lzZSBhIG5v
dGljZS4KPiAKPiBGcm9tIHRoZSBJbnRlbCBzaWRlLCBpdCBzZWVtcyB0aGF0IGl0J3MgYmVlbiBz
dXBwb3J0ZWQgZm9yIGEgZmV3IHllYXJzLgo+IFNvLCBmYWlyIGVub3VnaCwgbGV0J3MgZ28gd2l0
aCBhIHdhcm4uCgpJJ20gbm90IHN1cmUgYWJvdXQgdGhpcy4gIEkgdGhpbmsgIndhcm5pbmciIG1l
c3NhZ2VzIGludGVycnVwdCBkaXN0cm8KZ3JhcGhpY2FsIGJvb3Qgc2NlbmFyaW9zIGFuZCBjYXVz
ZSB1c2VyIGNvbXBsYWludHMuICBJbiB0aGlzIGNhc2UsCnRoZXJlIGlzIG5vdGhpbmcgYnJva2Vu
IGFuZCB0aGUgdXNlciBjYW4gZG8gbm90aGluZyBhYm91dCBpdDsgaXQncwptZXJlbHkgYSBwaWVj
ZSBvZiBtaXNzaW5nIG9wdGlvbmFsIGZ1bmN0aW9uYWxpdHkuICBTbyBJIHRoaW5rICJpbmZvIgpp
cyBhIG1vcmUgYXBwcm9wcmlhdGUgbGV2ZWwuCgpCam9ybgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0Cklu
dGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
