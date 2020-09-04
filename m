Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AC5325DBC8
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Sep 2020 16:33:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AE7AF8740F;
	Fri,  4 Sep 2020 14:33:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AvBW1COBQRwT; Fri,  4 Sep 2020 14:33:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 29011873FF;
	Fri,  4 Sep 2020 14:33:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 081231BF599
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 14:33:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 038B0858F5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 14:33:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oafiCsE8ZfWn for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Sep 2020 14:33:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 67FBC857FB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 14:33:03 +0000 (UTC)
IronPort-SDR: JrFIiFVFrh0RHK13Ey/zX9Xm4wjVCSySa6gAtDHbpag/iFP2OPs+el8nepZbXOHAZIeZF7QSqD
 CYJf9j6jcwhw==
X-IronPort-AV: E=McAfee;i="6000,8403,9734"; a="145451131"
X-IronPort-AV: E=Sophos;i="5.76,389,1592895600"; d="scan'208";a="145451131"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2020 07:33:02 -0700
IronPort-SDR: 0fQmUyCZwuWDeyZqTifDwD//sGCxUDtTpl0ayOdXn4hYYfPD01xG/YbSufAPCUvfyhHmrjAMqG
 zewbQoeohDWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,389,1592895600"; d="scan'208";a="332178816"
Received: from andreyfe-mobl2.ccr.corp.intel.com (HELO
 btopel-mobl.ger.intel.com) ([10.252.37.82])
 by orsmga008.jf.intel.com with ESMTP; 04 Sep 2020 07:32:58 -0700
To: Jesper Dangaard Brouer <brouer@redhat.com>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>,
 Eric Dumazet <eric.dumazet@gmail.com>
References: <20200904135332.60259-1-bjorn.topel@gmail.com>
 <20200904162751.632c4443@carbon>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>
Message-ID: <27e05518-99c6-15e2-b801-cbc0310630ef@intel.com>
Date: Fri, 4 Sep 2020 16:32:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200904162751.632c4443@carbon>
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
Cc: daniel@iogearbox.net, netdev@vger.kernel.org, ast@kernel.org,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, bpf@vger.kernel.org,
 davem@davemloft.net, magnus.karlsson@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMjAyMC0wOS0wNCAxNjoyNywgSmVzcGVyIERhbmdhYXJkIEJyb3VlciB3cm90ZToKPiBPbiBG
cmksICA0IFNlcCAyMDIwIDE1OjUzOjI1ICswMjAwCj4gQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9w
ZWxAZ21haWwuY29tPiB3cm90ZToKPiAKPj4gT24gbXkgbWFjaGluZSB0aGUgIm9uZSBjb3JlIHNj
ZW5hcmlvIFJ4IGRyb3AiIHBlcmZvcm1hbmNlIHdlbnQgZnJvbQo+PiB+NjVLcHBzIHRvIDIxTXBw
cy4gSW4gb3RoZXIgd29yZHMsIGZyb20gIm5vdCB1c2FibGUiIHRvCj4+ICJ1c2FibGUiLiBZTU1W
Lgo+IAo+IFdlIGhhdmUgb2JzZXJ2ZWQgdGhpcyBraW5kIG9mIGRyb3BwaW5nIG9mZiBhbiBlZGdl
IGJlZm9yZSB3aXRoIHNvZnRpcnEKPiAod2hlbiB1c2Vyc3BhY2UgcHJvY2VzcyBydW5zIG9uIHNh
bWUgUlgtQ1BVKSwgYnV0IEkgdGhvdWdodCB0aGF0IEVyaWMKPiBEdW1hemV0IHNvbHZlZCBpdCBp
biA0Y2QxM2MyMWIyMDcgKCJzb2Z0aXJxOiBMZXQga3NvZnRpcnFkIGRvIGl0cyBqb2IiKS4KPiAK
PiBJIHdvbmRlciB3aGF0IG1ha2VzIEFGX1hEUCBkaWZmZXJlbnQgb3IgaWYgdGhlIHByb2JsZW0g
aGF2ZSBjb21lIGJhY2s/Cj4gCgpJIHdvdWxkIHNheSB0aGlzIGlzIG5vdCB0aGUgc2FtZSBpc3N1
ZS4gVGhlIHByb2JsZW0gaXMgdGhhdCB0aGUgc29mdGlycSAKaXMgYnVzeSBkcm9wcGluZyBwYWNr
ZXRzIHNpbmNlIHRoZSBBRl9YRFAgUnggaXMgZnVsbC4gU28sIHRoZSBjeWNsZXMgCiphcmUqIHNw
bGl0IDUwLzUwLCB3aGljaCBpcyBub3Qgd2hhdCB3ZSB3YW50IGluIHRoaXMgY2FzZS4gOi0pCgpU
aGlzIGlzc3VlIGlzIG1vcmUgb2YgYSAiSW50ZWwgQUZfWERQIFpDIGRyaXZlcnMgZG9lcyBzdHVw
aWQgd29yayIsIHRoYW4gCmZhaXJuZXNzLiBJZiB0aGUgUnggcmluZyBpcyBmdWxsLCB0aGVuIHRo
ZXJlIGlzIHJlYWxseSBubyB1c2UgdG8gbGV0IHRoZSAKTkFQSSBsb29wIGNvbnRpbnVlLgoKV291
bGQgeW91IGFncmVlLCBvciBhbSBJIHJhbWJsaW5nPyA6LVAKCgpCasO2cm4KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxp
bmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
