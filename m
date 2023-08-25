Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F16A789214
	for <lists+intel-wired-lan@lfdr.de>; Sat, 26 Aug 2023 00:56:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C8FED41F8C;
	Fri, 25 Aug 2023 22:56:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C8FED41F8C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693004177;
	bh=XmvPLBBP2k9139xljEIqOdQIPY5V2Dcb+E5KQWW+0yI=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1qdjsIJMcZDd0m3AOjUZtvF4gJYRy7Zq9fn79iDqa072ZRNTvgz3nz/n88o8vHzRX
	 JuI+1GOCF03xKYHLbaqxj7BSlG4SKLTZ446mHnB6shS510cZ0jiHN+fr5uUbI5emu/
	 kv4x2+IPHsLn2xW3bTSFTk6F2q32w6y0Hx7TgXH0VuAiX5rNwWhuDdRvqWpjXabTEd
	 WZr9bs4RWcVYya7MsindRFcwmUJk2b7LqxowdunkAEvdN9TAJLY4ERhrw4ETnQrBV/
	 xqkzjcbE4dG7irtRuAxS5hJw8T2yBL0NoEjzj9pdEcC4vcLmgkeOZ6OWg78Nx6EhEi
	 xROtYX42pOSfg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VnyEx9Rufxvd; Fri, 25 Aug 2023 22:56:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5EBB641F8B;
	Fri, 25 Aug 2023 22:56:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5EBB641F8B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1CCA51BF276
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Aug 2023 22:56:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DE60741F8B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Aug 2023 22:56:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DE60741F8B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NfPbNHKsDklp for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Aug 2023 22:56:05 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8E9E141F87
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Aug 2023 22:56:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8E9E141F87
X-IronPort-AV: E=McAfee;i="6600,9927,10813"; a="441165850"
X-IronPort-AV: E=Sophos;i="6.02,202,1688454000"; d="scan'208";a="441165850"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2023 15:56:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10813"; a="803109867"
X-IronPort-AV: E=Sophos;i="6.02,202,1688454000"; d="scan'208";a="803109867"
Received: from rtallon-mobl.amr.corp.intel.com (HELO vcostago-mobl3)
 ([10.212.111.120])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2023 15:56:03 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Ferenc Fejes <ferenc.fejes@ericsson.com>, "jesse.brandeburg@intel.com"
 <jesse.brandeburg@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "sasha.neftin@intel.com"
 <sasha.neftin@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "anthony.l.nguyen@intel.com"
 <anthony.l.nguyen@intel.com>
In-Reply-To: <0caf33cf6adb3a5bf137eeaa20e89b167c9986d5.camel@ericsson.com>
References: <0caf33cf6adb3a5bf137eeaa20e89b167c9986d5.camel@ericsson.com>
Date: Fri, 25 Aug 2023 15:56:01 -0700
Message-ID: <87ttsmohoe.fsf@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693004165; x=1724540165;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=AM7Wr8GMP/Lwm+AcnMkKhXcNzAIBo/oiIO65fhZLqXo=;
 b=FOhnrJNTeFhfjb1lZvvAPD93LdRgVZyWdZZO5a3IJ1kfxbnSMjXwLFsR
 eqPUOQyacG/dbi6ansOoSqkjSL77rPpOdLm8STFpECkAjnoafcGXsliWs
 Fklbx2HKzqwM1X1aJJ3k73kHVf7Tk7u1fEIVXg/P/n11CGm751yPAQz5j
 1ttNKiPnhBPGbfMLN/iR6PsRgdAL+OxR08gGpcq3nUl+mlEQVNXXyp2oo
 jRnB7wNAAQLLRwKMc3Gvo7hkA5vxeu9qAwLXzYmMoztg1bV0eetHIjeCR
 rOzr6wV+Oyk9CxHsOQJVhQYCbdNbukwPtoAx8NdIpUCqzu/APdmWJzvnJ
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FOhnrJNT
Subject: Re: [Intel-wired-lan] BUG(?): igc link up and XDP program init fails
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
Cc: "hawk@kernel.org" <hawk@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGkgRmVyZW5jLAoKRmVyZW5jIEZlamVzIDxmZXJlbmMuZmVqZXNAZXJpY3Nzb24uY29tPiB3cml0
ZXM6Cgo+IERlYXIgaWdjIE1haW50YWluZXJzIQo+Cj4gSSBub3RpY2VkIHRoYXQgaXAgbGluayBz
ZXQgZGV2IHVwIGZhaWxzIHdpdGggaWdjIChJbnRlbCBpMjI1KSBkcml2ZXIKPiB3aGVuIFhEUCBw
cm9ncmFtIGlzIGF0dGFjaGVkIHRvIGl0LiBNb3JlIHByZWNpc2VseSwgb25seSB3aGVuIHdlIGhh
dmUKPiBpbmNvbWluZyB0cmFmZmljIGFuZCB0aGUgaW5jb21pbmcgcGFja2V0IHJhdGUgaXMgdG9v
IGZhc3QgKGxpa2UgMTAwCj4gcGFja2V0cyBwZXItc2VjKS4KPgo+IEkgZG9uJ3QgaGF2ZSBhIHZl
cnkgc21hcnQgcmVwcm9kdWNlciwgc28gNCBpMjI1IGNhcmRzIGFyZSBuZWVkZWQgdG8KPiB0cmln
Z2VyIGl0LiBNeSBzZXR1cCAoZW5wM3MwIGFuZCBlbnA0czAgZGlyZWN0bHkgY29ubmVjdGVkIHdp
dGggYQo+IGNhYmxlLCBzaW1pbGFybHkgZW5wNnMwIGFuZCBlbnA3czApLgo+Cj4gdmV0aDAgLS0t
LT4gdmV0aDEgLS1yZWRpci0tLT4gZW5wM3MwIH5+fn5+fn4gZW5wNHMwCj4gCQkJwqAgfAo+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICstPiBlbnA2
czAgfn5+fn5+fiBlbnA3czAKPgo+IGlwIGxpbmsgYWRkIGRldiB0eXBlIHZldGgKPiBpcCBuZWkg
Y2hhbmdlIDEuMi4zLjQgbGxhZGRyIGFhOmFhOmFhOmFhOmFhOmFhIGRldiB2ZXRoMAo+IHhkcC1i
ZW5jaCByZWRpcmVjdC1tdWx0aSB2ZXRoMSBlbnAzczAgZW5wNnMwCSNpbiB0ZXJtaW5hbCAxCj4g
eGRwZHVtcCAtaSBlbnA0czAJCQkJI2luIHRlcm1pbmFsIDIKPiBwaW5nIC1JIHZldGgwIDEuMi4z
LjQgLWkgMC41ICNzbG93IHBhY2tldCByYXRlwqAgI2luIHRlcm1pbmFsIDMKPgoKSSB3YXMganVz
dCBhYmxlIHRvIHJlcHJvZHVjZSB0aGlzIGlzc3VlLCB3aXRoIGEgZGlmZmVyZW50IHNldHVwOiAK
CnwgICAgICAgICAgICAgU3lzdGVtIEEgICAgICAgICAgICAgICAgIHwgICBTeXN0ZW0gQiAgIHwg
CnZldGgwIC0tLS0+IHZldGgxIC0tcmVkaXItLS0+ICJlbnAzczAiIH5+fn5+fn4gImVucDRzMCIK
CkFuZCBydW5uaW5nIHhkcC1iZW5jaCBsaWtlIHRoaXM6CgokIHhkcC1iZW5jaCByZWRpcmVjdC1t
dWx0aSB2ZXRoMSBlbnAzczAKCkFsc28gSSBhbSBydW5uaW5nIGEgZGlmZmVyZW50IHRyYWZmaWMg
Z2VuZXJhdG9yLgoKPiBOb3cgaW4gYSBzZXBhcmF0ZSB0ZXJtaW5hbCBkbyBhICJpcCBsaW5rIHNl
dCBkZXYgZW5wNHMwIGRvd24iIGFuZCAiaXAKPiBsaW5rIHNldCBkZXYgZW5wNHMwIHVwIi4gQWZ0
ZXIgYSB3aGlsZSwgeGRwZHVtcCB3aWxsIHNlZSB0aGUgaW5jb21pbmcKPiBwYWNrZXRzLgo+CgpJ
dCBzZWVtcyB0aGF0IGFueXRoaW5nIHRoYXQgdHJpZ2dlcnMgYSByZXNldCBvZiB0aGUgYWRhcHRl
ciB3b3VsZAp0cmlnZ2VyIHRoZSBidWc6IEkgYW0gYWJsZSB0byB0cmlnZ2VyIHRoZSBidWcgd2hl
biBJIHJ1biAneGRwLWJlbmNoJwpsYXN0IChhZnRlciAicGluZyIvdHJhZmZpYyBnZW5lcmF0b3Ip
LCBubyBuZWVkIGZvciAnbGluayBkb3duL2xpbmsgdXAnLgoKPiBOb3cgaW4gdGVybWluYWwgMywg
Y2hhbmdlIHRoZSBwaW5nIHRvIGEgZmFzdGVyIHJhdGU6Cj4gcGluZyAtSSB2ZXRoMCAxLjIuMy40
IC1pIDAuMDEKPgo+IEFuZCBkbyB0aGUgaXAgbGluayBkb3duL3VwIGFnYWluLiBJbiBteSBzZXR1
cCwgSSBubyBsb25nZXIgc2VlIGluY29taW5nCj4gcGFja2V0cy4gV2l0aCBicGZ0cmFjZSBJIHNl
ZSB0aGUgZHJpdmVyIGtlZXAgdHJ5aW5nIHRvIGluaXRpYWxpemUKPiBpdHNlbGYgaW4gYW4gZW5k
bGVzcyBsb29wLgo+Cj4gTm93IHN0b3AgdGhlIHBpbmcsIHdhaXQgYWJvdXQgNC01IHNlY29uZHMs
IGFuZCBzdGFydCB0aGUgcGluZyBhZ2Fpbi4KPiBUaGlzIGlzIGVub3VnaCB0aW1lIGZvciB0aGUg
ZHJpdmVyIHRvIGluaXRpYWxpemUgcHJvcGVybHksIGFuZCBwYWNrZXRzCj4gYXJlIHZpc2libGUg
aW4geGRwZHVtcCBhZ2Fpbi4KPgo+IElmIGFueW9uZSBoYXMgYW4gaWRlYSB3aGF0IGlzIHdyb25n
IHdpdGggbXkgc2V0dXAgSSB3b3VsZCBiZSBoYXBweSB0bwo+IGhlYXIgaXQsIGFuZCBJIGNhbiBo
ZWxwIHdpdGggdGVzdGluZyBmaXhlcyBpZiB0aGlzIGlzIGluZGVlZCBhIGJ1Zy4KPiBJIGhhdmUg
cmVwbGljYXRlZCB0aGUgc2V0dXAgd2l0aCB2ZXRocyBhbmQgaXQgbG9va3MgZmluZS4KPgoKSSBk
b24ndCB0aGluayB0aGVyZSdzIGFueXRoaW5nIHdyb25nIHdpdGggeW91ciBzZXR1cC4KCkkgYW0g
Y29uc2lkZXJpbmcgdGhpcyBhIGJ1ZywgSSBkb24ndCBoYXZlIGFueSBwYXRjaGVzIGZyb20gdGhl
IHRvcCBvZiBteQpoZWFkIGZvciB5b3UgdG8gdHJ5LCBidXQgdGFraW5nIGEgbG9vay4KCkFueXdh
eSwgdGhhbmtzIGZvciB0aGUgcmVwb3J0LgoKCkNoZWVycywKLS0gClZpbmljaXVzCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBt
YWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vv
c2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
