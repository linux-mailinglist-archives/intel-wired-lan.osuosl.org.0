Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F7FD25DDED
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Sep 2020 17:39:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EC94786AA4;
	Fri,  4 Sep 2020 15:39:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AEiv61kyExkA; Fri,  4 Sep 2020 15:39:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 56CD286AB1;
	Fri,  4 Sep 2020 15:39:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D2D571BF4D5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 15:39:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CE47186AA4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 15:39:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2ge8NPhbFBm0 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Sep 2020 15:39:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 02D3F86A5B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 15:39:21 +0000 (UTC)
IronPort-SDR: NhlfZ5trjdr+mMnrAxeZ49qkXH3APbDbWT4E/zQYGd6XMD/4HSfr31Bi1DCmMbX7Dn6vYGwDqB
 1C8Ds9lPJjeA==
X-IronPort-AV: E=McAfee;i="6000,8403,9734"; a="219317616"
X-IronPort-AV: E=Sophos;i="5.76,389,1592895600"; d="scan'208";a="219317616"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2020 08:39:21 -0700
IronPort-SDR: t7x+QaKHtSufFhQd3YkwT+8LxVHUo4SRfHkBSEypptvX6xzHyNfDK00MbUn0O5gqnyu9g8uG07
 CO0nJxWRQUrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,390,1592895600"; d="scan'208";a="332198951"
Received: from andreyfe-mobl2.ccr.corp.intel.com (HELO
 btopel-mobl.ger.intel.com) ([10.252.37.82])
 by orsmga008.jf.intel.com with ESMTP; 04 Sep 2020 08:39:18 -0700
To: Jesper Dangaard Brouer <brouer@redhat.com>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
References: <20200904135332.60259-1-bjorn.topel@gmail.com>
 <20200904135332.60259-4-bjorn.topel@gmail.com>
 <20200904171143.5868999a@carbon>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>
Message-ID: <dfa75afc-ceb7-76ce-6ba3-3b89c53f92f3@intel.com>
Date: Fri, 4 Sep 2020 17:39:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200904171143.5868999a@carbon>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 3/6] xsk: introduce
 xsk_do_redirect_rx_full() helper
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
Cc: hawk@kernel.org, daniel@iogearbox.net, netdev@vger.kernel.org,
 ast@kernel.org, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 bpf@vger.kernel.org, davem@davemloft.net, magnus.karlsson@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMjAyMC0wOS0wNCAxNzoxMSwgSmVzcGVyIERhbmdhYXJkIEJyb3VlciB3cm90ZToKPiBPbiBG
cmksICA0IFNlcCAyMDIwIDE1OjUzOjI4ICswMjAwIEJqw7ZybiBUw7ZwZWwKPiA8Ympvcm4udG9w
ZWxAZ21haWwuY29tPiB3cm90ZToKPiAKPj4gRnJvbTogQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9w
ZWxAaW50ZWwuY29tPgo+PiAKPj4gVGhlIHhza19kb19yZWRpcmVjdF9yeF9mdWxsKCkgaGVscGVy
IGNhbiBiZSB1c2VkIHRvIGNoZWNrIGlmIGEKPj4gZmFpbHVyZSBvZiB4ZHBfZG9fcmVkaXJlY3Qo
KSB3YXMgZHVlIHRvIHRoZSBBRl9YRFAgc29ja2V0IGhhZCBhCj4+IGZ1bGwgUnggcmluZy4KPiAK
PiBUaGlzIGlzIHZlcnkgQUZfWERQIHNwZWNpZmljLiAgSSB0aGluayB0aGF0IHRoZSBjcHVtYXAg
Y291bGQgbGlrZWx5IAo+IGJlbmVmaXQgZnJvbSBzaW1pbGFyIGFwcHJvYWNoPyBlLmcuIGlmIHRo
ZSBjcHVtYXAga3RocmVhZCBpcwo+IHNjaGVkdWxlZCBvbiB0aGUgc2FtZSBDUFUuCj4gCgpBdCBs
ZWFzdCBJIHRob3VnaHQgdGhpcyB3YXMgKnZlcnkqIEFGX1hEUCBzcGVjaWZpYywgc2luY2UgdGhl
IGtlcm5lbCBpcwpkZXBlbmRlbnQgb2YgdGhhdCB1c2VybGFuZCBydW5zLiBBbGxvY2F0aW9uIChz
b3VyY2UpIGFuZCBSeCByaW5nIChzaW5rKS4KTWF5YmUgSSB3YXMgd3JvbmchIDotKQoKVGhlIHRo
aW5nIHdpdGggQUZfWERQIHplcm8tY29weSwgaXMgdGhhdCB3ZSBzb3J0IG9mIGFzc3VtZSB0aGF0
IGlmIGEKdXNlciBlbmFibGVkIHRoYXQgbW9zdCBwYWNrZXRzIHdpbGwgaGF2ZSBYRFBfUkVESVJF
Q1QgdG8gYW4gQUZfWERQIHNvY2tldC4KCgo+IEJ1dCBmb3IgY3B1bWFwIHdlIG9ubHkgd2FudCB0
aGlzIGJlaGF2aW9yIGlmIHNjaGVkIG9uIHRoZSBzYW1lIENQVQo+IGFzIFJYLU5BUEkuICBUaGlz
IGNvdWxkIGJlICJzZWVuIiBieSB0aGUgY3B1bWFwIGNvZGUgaXRzZWxmIGluIHRoZQo+IGNhc2Ug
YnFfZmx1c2hfdG9fcXVldWUoKSBkcm9wcyBwYWNrZXRzLCBjaGVjayBpZiByY3B1LT5jcHUgZXF1
YWwgCj4gc21wX3Byb2Nlc3Nvcl9pZCgpLiAgTWF5YmUgSSdtIHRha2luZyB0aGlzIHRvbyBmYXI/
Cj4gCgpJbnRlcmVzdGluZy4gU28sIGlmIHlvdSdyZSBydW5uaW5nIG9uIHRoZSBzYW1lIGNvcmUs
IGFuZCByZWRpcmVjdCBmYWlsCmZvciBDUFVNQVAsIHlvdSdkIGxpa2UgdG8geWllbGQgdGhlIE5B
UEkgbG9vcD8gSXMgdGhhdCByZWFsbHkgT0sgZnJvbSBhCmZhaXJuZXNzIHBlcnNwZWN0aXZlPyBJ
IG1lYW4sIHdpdGggQUZfWERQIHplcm8tY29weSB3ZSBwcmV0dHkgbXVjaCBrbm93CnRoYXQgYWxs
IGFjdGlvbnMgd2lsbCBiZSByZWRpcmVjdCB0byBzb2NrZXQuIEZvciBDUFVNQVAgdHlwZSBvZgph
cHBsaWNhdGlvbnMsIGNhbiB0aGF0IGFzc3VtcHRpb24gYmUgbWFkZT8KCgpCasO2cm4KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxh
biBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5v
c3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
