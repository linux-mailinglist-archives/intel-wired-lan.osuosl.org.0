Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D358A25DACA
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Sep 2020 15:59:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 377FB87507;
	Fri,  4 Sep 2020 13:59:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aJ0eOToIfwB4; Fri,  4 Sep 2020 13:59:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 924A987313;
	Fri,  4 Sep 2020 13:59:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0516F1BF28F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 13:59:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 005EA847F9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 13:59:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o0QhxPQ5uv1O for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Sep 2020 13:59:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B7975845D6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 13:59:53 +0000 (UTC)
IronPort-SDR: m5r/6OyfZu2um6uSla20ZCjkFUy9mM0du8Cu4wcTyZX/ScysAQxVEw4nyrGKMnjzgIoa2U5jM9
 1+dtzuVsiYuQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9733"; a="145475170"
X-IronPort-AV: E=Sophos;i="5.76,389,1592895600"; d="scan'208";a="145475170"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2020 06:59:47 -0700
IronPort-SDR: j93R8aZlSJKjGofhcd7+Qe56JKeSs7yvFb/NB1UsFzWZbhr5n8bouR1ytzk9K1Y3p2HjqwK59S
 HoiGUNFCbCDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,389,1592895600"; d="scan'208";a="332171253"
Received: from andreyfe-mobl2.ccr.corp.intel.com (HELO
 btopel-mobl.ger.intel.com) ([10.252.37.82])
 by orsmga008.jf.intel.com with ESMTP; 04 Sep 2020 06:59:43 -0700
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>, ast@kernel.org, 
 daniel@iogearbox.net, netdev@vger.kernel.org, bpf@vger.kernel.org,
 Maxim Mikityanskiy <maximmi@mellanox.com>
References: <20200904135332.60259-1-bjorn.topel@gmail.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>
Message-ID: <0257f769-0f43-a5b7-176d-7c5ff8eaac3a@intel.com>
Date: Fri, 4 Sep 2020 15:59:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200904135332.60259-1-bjorn.topel@gmail.com>
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
Cc: hawk@kernel.org, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 davem@davemloft.net, magnus.karlsson@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMjAyMC0wOS0wNCAxNTo1MywgQmrDtnJuIFTDtnBlbCB3cm90ZToKPiBUaGlzIHNlcmllcyBh
ZGRyZXNzZXMgYSBwcm9ibGVtIHRoYXQgYXJpc2VzIHdoZW4gQUZfWERQIHplcm8tY29weSBpcyAK
PiBlbmFibGVkLCBhbmQgdGhlIGtlcm5lbCBzb2Z0aXJxIFJ4IHByb2Nlc3NpbmcgYW5kIHVzZXJs
YW5kIHByb2Nlc3MKPiBpcyBydW5uaW5nIG9uIHRoZSBzYW1lIGNvcmUuCj4gClsuLi5dCj4gCgpA
TWF4aW0gSSdtIG5vdCB3ZWxsIHZlcnNlZCBpbiBNZWxsYW5veCBkcml2ZXJzLiBXb3VsZCB0aGlz
IGJlIHJlbGV2YW50IAp0byBtbHg1IGFzIHdlbGw/CgoKQ2hlZXJzLApCasO2cm4KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1h
aWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9z
bC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
