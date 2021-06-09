Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6C2A3A207E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Jun 2021 01:07:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 47BC040343;
	Wed,  9 Jun 2021 23:07:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hyaRH0V9hfyO; Wed,  9 Jun 2021 23:07:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6167D40164;
	Wed,  9 Jun 2021 23:07:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 764991BF424
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jun 2021 23:07:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 63E8F83BD3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jun 2021 23:07:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8ZAPXvnfAB3N for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Jun 2021 23:07:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 093B382A0E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jun 2021 23:07:23 +0000 (UTC)
IronPort-SDR: wjf3mxzzxAjfhb7maVQt4yfHkoYBXT0iDUybSAquelwamqHE5A7Qqgs0FOQAyTH+6KPF6MoMlq
 l/m03OS9RGVA==
X-IronPort-AV: E=McAfee;i="6200,9189,10010"; a="205151854"
X-IronPort-AV: E=Sophos;i="5.83,261,1616482800"; d="scan'208";a="205151854"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 16:07:21 -0700
IronPort-SDR: P/zAnFMRxkHYkPVyckGYtiL+CcCx3i/lhg0ZrOVLqO5MMEF3VSQAyGpnCX8KLBQEXSglRpHT8P
 rqX7GWtWdN1g==
X-IronPort-AV: E=Sophos;i="5.83,261,1616482800"; d="scan'208";a="448476024"
Received: from kotikala-mobl1.amr.corp.intel.com (HELO
 vcostago-mobl2.amr.corp.intel.com) ([10.209.25.177])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 16:07:21 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <d8740484-3879-1c13-65ce-82d3e71cb96c@molgen.mpg.de>
References: <20210605002356.3996853-1-vinicius.gomes@intel.com>
 <20210605002356.3996853-4-vinicius.gomes@intel.com>
 <70d32740-eb4b-f7bf-146e-8dc06199d6c9@molgen.mpg.de>
 <87sg1sw56h.fsf@vcostago-mobl2.amr.corp.intel.com>
 <939b8042-a313-47db-43d9-ea37e95b724b@molgen.mpg.de>
 <87r1havm15.fsf@vcostago-mobl2.amr.corp.intel.com>
 <d8740484-3879-1c13-65ce-82d3e71cb96c@molgen.mpg.de>
Date: Wed, 09 Jun 2021 16:07:20 -0700
Message-ID: <87k0n2vdqv.fsf@vcostago-mobl2.amr.corp.intel.com>
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
Cc: linux-pci@vger.kernel.org, richardcochran@gmail.com, hch@infradead.org,
 helgaas@kernel.org, netdev@vger.kernel.org, bhelgaas@google.com,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGkgUGF1bCwKCj4+IAo+Pj4gUmVnYXJkaW5nIG15IGNvbW1lbnQsIEkgZGlkIG5vdCBtZWFuIHJl
dHVybmluZyBhbiBlcnJvciBidXQgdGhlIGxvZwo+Pj4gKmxldmVsKiBvZiB0aGUgbWVzc2FnZS4g
U28sIGBkbWVzZyAtLWxldmVsIGVycmAgd291bGQgc2hvdyB0aGF0IG1lc3NhZ2UuCj4+PiBCdXQg
aWYgdGhlcmUgYXJlIFBDSSBjb250cm9sbGVycyBub3Qgc3VwcG9ydGluZyB0aGF0LCBpdOKAmXMg
bm90IGFuIGVycm9yLAo+Pj4gYnV0IGEgd2FybmluZyBhdCBtb3N0LiBTbywgSeKAmWQgdXNlOgo+
Pj4KPj4+IAlkZXZfd2FybigmcGRldi0+ZGV2LCAiUFRNIG5vdCBzdXBwb3J0ZWQgYnkgUENJIGJ1
cy9jb250cm9sbGVyCj4+PiAocGNpX2VuYWJsZV9wdG0oKSBmYWlsZWQpXG4iKTsKPj4gCj4+IEkg
d2lsbCB1c2UgeW91IHN1Z2dlc3Rpb24gZm9yIHRoZSBtZXNzYWdlLCBidXQgSSB0aGluayB0aGF0
IHdhcm4gaXMgYQo+PiBiaXQgdG9vIG11Y2gsIGluZm8gb3Igbm90aWNlIHNlZW0gdG8gYmUgYmV0
dGVyLgo+Cj4gSSBkbyBub3Qga25vdywgaWYgbW9kZXJuIFBDSShlKSg/KSBjb250cm9sbGVycyBu
b3JtYWxseSBzdXBwb3J0IFBUTSBvciAKPiBub3QuIElmIHJlY2VudCBjb250cm9sbGVycyBzaG91
bGQgc3VwcG9ydCBpdCwgdGhlbiBhIHdhcm5pbmcgd291bGQgYmUgCj4gd2FycmFudGVkLCBvdGhl
cndpc2UgYSBub3RpY2UuCj4KCkZyb20gdGhlIEludGVsIHNpZGUsIGl0IHNlZW1zIHRoYXQgaXQn
cyBiZWVuIHN1cHBvcnRlZCBmb3IgYSBmZXcgeWVhcnMuClNvLCBmYWlyIGVub3VnaCwgbGV0J3Mg
Z28gd2l0aCBhIHdhcm4uCgoKQ2hlZXJzLAotLSAKVmluaWNpdXMKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlz
dApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
