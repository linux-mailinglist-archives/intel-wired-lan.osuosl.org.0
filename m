Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A8642515E4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Aug 2020 12:00:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 78A588823B;
	Tue, 25 Aug 2020 10:00:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hWs48O7xM1bQ; Tue, 25 Aug 2020 10:00:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 000AA88271;
	Tue, 25 Aug 2020 10:00:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7F6EC1BF2B0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 10:00:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7854F88236
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 10:00:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iJIgoAzbAEPp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Aug 2020 10:00:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D428A8817F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 10:00:36 +0000 (UTC)
IronPort-SDR: 9lkdOApwlK7BxXdwkH1g9pnje4MJHAVhMNKv4eao/9VdWF4PZDLnpQT6n/X1RyAkuZCnmaV0RK
 UV+P1dC8ZrPg==
X-IronPort-AV: E=McAfee;i="6000,8403,9723"; a="217629340"
X-IronPort-AV: E=Sophos;i="5.76,352,1592895600"; d="scan'208";a="217629340"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2020 03:00:36 -0700
IronPort-SDR: rmCS+IO+rzIF5+XaxL7hi7XQ6WJHcd2MLKNILaBSE/S82lcaxaU5zRxsqqW5s67Q20UjmpsP6P
 6E6o0sXJ4B1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,352,1592895600"; d="scan'208";a="279941503"
Received: from zzombora-mobl1.ti.intel.com (HELO btopel-mobl.ger.intel.com)
 ([10.252.53.19])
 by fmsmga007.fm.intel.com with ESMTP; 25 Aug 2020 03:00:33 -0700
To: "Li,Rongqing" <lirongqing@baidu.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?=
 <bjorn.topel@gmail.com>,
 "jeffrey.t.kirsher@intel.com" <jeffrey.t.kirsher@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
References: <20200825091629.12949-1-bjorn.topel@gmail.com>
 <20200825091629.12949-3-bjorn.topel@gmail.com>
 <6356c0ddbdbd4f8fb4927f3ee96c4c33@baidu.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>
Message-ID: <43f838aa-b12b-63d3-400b-ef92081b355d@intel.com>
Date: Tue, 25 Aug 2020 12:00:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <6356c0ddbdbd4f8fb4927f3ee96c4c33@baidu.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net 2/3] ixgbe: avoid premature Rx
 buffer reuse
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
Cc: "maciej.fijalkowski@intel.com" <maciej.fijalkowski@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "maciej.machnikowski@intel.com" <maciej.machnikowski@intel.com>,
 "magnus.karlsson@intel.com" <magnus.karlsson@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMjAyMC0wOC0yNSAxMTo1NSwgTGksUm9uZ3Fpbmcgd3JvdGU6Cj4gCj4gCj4+IC0tLS0tT3Jp
Z2luYWwgTWVzc2FnZS0tLS0tCj4+IEZyb206IEJqw7ZybiBUw7ZwZWwgW21haWx0bzpiam9ybi50
b3BlbEBnbWFpbC5jb21dCj4+IFNlbnQ6IFR1ZXNkYXksIEF1Z3VzdCAyNSwgMjAyMCA1OjE2IFBN
Cj4+IFRvOiBqZWZmcmV5LnQua2lyc2hlckBpbnRlbC5jb207IGludGVsLXdpcmVkLWxhbkBsaXN0
cy5vc3Vvc2wub3JnCj4+IENjOiBCasO2cm4gVMO2cGVsIDxiam9ybi50b3BlbEBpbnRlbC5jb20+
OyBtYWdudXMua2FybHNzb25AaW50ZWwuY29tOwo+PiBtYWdudXMua2FybHNzb25AZ21haWwuY29t
OyBuZXRkZXZAdmdlci5rZXJuZWwub3JnOwo+PiBtYWNpZWouZmlqYWxrb3dza2lAaW50ZWwuY29t
OyBwaW90ci5yYWN6eW5za2lAaW50ZWwuY29tOwo+PiBtYWNpZWoubWFjaG5pa293c2tpQGludGVs
LmNvbTsgTGksUm9uZ3FpbmcgPGxpcm9uZ3FpbmdAYmFpZHUuY29tPgo+PiBTdWJqZWN0OiBbUEFU
Q0ggbmV0IDIvM10gaXhnYmU6IGF2b2lkIHByZW1hdHVyZSBSeCBidWZmZXIgcmV1c2UKPj4KPj4g
RnJvbTogQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9wZWxAaW50ZWwuY29tPgo+Pgo+PiBUaGUgcGFn
ZSByZWN5Y2xlIGNvZGUsIGluY29ycmVjdGx5LCByZWxpZWQgb24gdGhhdCBhIHBhZ2UgZnJhZ21l
bnQgY291bGQgbm90IGJlCj4+IGZyZWVkIGluc2lkZSB4ZHBfZG9fcmVkaXJlY3QoKS4gVGhpcyBh
c3N1bXB0aW9uIGxlYWRzIHRvIHRoYXQgcGFnZSBmcmFnbWVudHMKPj4gdGhhdCBhcmUgdXNlZCBi
eSB0aGUgc3RhY2svWERQIHJlZGlyZWN0IGNhbiBiZSByZXVzZWQgYW5kIG92ZXJ3cml0dGVuLgo+
Pgo+PiBUbyBhdm9pZCB0aGlzLCBzdG9yZSB0aGUgcGFnZSBjb3VudCBwcmlvciBpbnZva2luZyB4
ZHBfZG9fcmVkaXJlY3QoKS4KPj4KPj4gRml4ZXM6IDY0NTMwNzM5ODdiYSAoIml4Z2JlOiBhZGQg
aW5pdGlhbCBzdXBwb3J0IGZvciB4ZHAgcmVkaXJlY3QiKQo+PiBTaWduZWQtb2ZmLWJ5OiBCasO2
cm4gVMO2cGVsIDxiam9ybi50b3BlbEBpbnRlbC5jb20+Cj4gCj4gUmVwb3J0ZWQtYW5kLWFuYWx5
emVkLWJ5OiBMaSBSb25nUWluZyA8bGlyb25ncWluZ0BiYWlkdS5jb20+Cj4KClRoYW5rcyBMaSEg
SSBzaG91bGQgaGF2ZSBhZGRlZCB0aGF0LiBJbnRlbC1mb2xrcywgcGxlYXNlIG1ha2Ugc3VyZSBM
aSdzIAp0YWdzIGZvciBpeGdiZS9pY2UgYXJlIGFkZGVkLgoKCkJqw7ZybgoKCj4gVGhhbmtzCj4g
Cj4gLUxpCj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcK
aHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFu
Cg==
