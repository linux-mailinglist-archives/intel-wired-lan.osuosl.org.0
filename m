Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 784102610E4
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Sep 2020 13:43:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2B88787292;
	Tue,  8 Sep 2020 11:43:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IA8K+r7JX-VO; Tue,  8 Sep 2020 11:43:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A85258729A;
	Tue,  8 Sep 2020 11:43:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 84F8C1BF82B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Sep 2020 11:43:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 807A287292
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Sep 2020 11:43:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b0isa6xl8X9e for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Sep 2020 11:43:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 92B5487291
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Sep 2020 11:43:26 +0000 (UTC)
IronPort-SDR: iHA98MF5cZDLL2+Ai6L67ItD8ijvwbDtCK/KnUM57Nj9EQ3BXgb5lvG175DNPgX254HFbpB8r/
 9kxIEezAJtwA==
X-IronPort-AV: E=McAfee;i="6000,8403,9737"; a="159085161"
X-IronPort-AV: E=Sophos;i="5.76,405,1592895600"; d="scan'208";a="159085161"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2020 04:43:25 -0700
IronPort-SDR: /KW5xN9tmU+/VP+yjJ+PMtZ4bqPvEQwsINO0yacB5Yo53ixbt1zCcyaO1/L/qDpSkx+PrqXyl6
 dIVPtvcrIJmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,405,1592895600"; d="scan'208";a="284485960"
Received: from pgierasi-mobl.ger.corp.intel.com (HELO
 btopel-mobl.ger.intel.com) ([10.252.39.2])
 by fmsmga007.fm.intel.com with ESMTP; 08 Sep 2020 04:43:23 -0700
To: Paul Menzel <pmenzel@molgen.mpg.de>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?=
 <bjorn.topel@gmail.com>, ast@kernel.org, daniel@iogearbox.net,
 netdev@vger.kernel.org, bpf@vger.kernel.org
References: <20200907150217.30888-1-bjorn.topel@gmail.com>
 <20200907150217.30888-5-bjorn.topel@gmail.com>
 <82901368-8e17-a63d-0e46-2434b5777c04@molgen.mpg.de>
 <0fb03a39-d098-8fc9-ba70-e919ef8e091e@intel.com>
 <0b927a07-6fbb-0e5b-e791-9558c9ea8e63@molgen.mpg.de>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>
Message-ID: <9d488b02-b03f-e1ee-d4c5-12e330d567b1@intel.com>
Date: Tue, 8 Sep 2020 13:43:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <0b927a07-6fbb-0e5b-e791-9558c9ea8e63@molgen.mpg.de>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 4/4] ixgbe,
 xsk: use XSK_NAPI_WEIGHT as NAPI poll budget
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
Cc: kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 magnus.karlsson@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMjAyMC0wOS0wOCAxMzoyMCwgUGF1bCBNZW56ZWwgd3JvdGU6ClsuLi5dPj4gUGF1bCwgdGhh
bmtzIGZvciB0aGUgaW5wdXQhIFRoZSBuZXRkZXYvYnBmIHRyZWVzIGFsd2F5cyBpbmNsdWRlIHRo
ZQo+PiBjb3ZlciBsZXR0ZXIgaW4gdGhlIG1lcmdlIGNvbW1pdC4KPiAKPiBZZXMsIGZvciBwdWxs
L21lcmdlIHJlcXVlc3RzLiBCdXQgeW91IHBvc3RlZCB0aGVtIHRvIHRoZSBsaXN0LCBzbyBJ4oCZ
ZCAKPiBhc3N1bWUgdGhleSB3aWxsIGJlIGFwcGxpZWQgd2l0aCBgZ2l0IGFtYCBhbmQgbm90IG1l
cmdlZCwgb3IgYW0gSSAKPiBtaXNzaW5nIHNvbWV0aGluZy4gQ291bGQgeW91IHBsZWFzZSBwb2lu
dCBtZSB0byBhIG1lcmdlIGNvbW1pdCB3aGVyZSB0aGUgCj4gcGF0Y2hlcyB3ZXJlIHBvc3RlZCB0
byB0aGUgbGlzdD8KPiAKCkFuIGV4YW1wbGU6IEEgc2VyaWVzIGlzIHBvc3RlZCB0byB0aGUgbGlz
dCBbMV0sIGFuZCB3aGVuIG1lcmdlZCB0aGUgCm1lcmdlIGNvbW1pdCBsb29rIGxpa2UgWzJdLgoK
ClRoYW5rcywKQmrDtnJuCgoKWzFdIApodHRwczovL2xvcmUua2VybmVsLm9yZy9icGYvMjAyMDA1
MjAxOTIxMDMuMzU1MjMzLTEtYmpvcm4udG9wZWxAZ21haWwuY29tLwpbMl0gCmh0dHBzOi8vZ2l0
Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC9j
b21taXQvP2lkPTc5OTE3YjI0MmMzZmUwZDg5ZTQ3NTJiYzI1ZmZlZjQ1NzRjMjE5NGIKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFu
IG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9z
dW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
