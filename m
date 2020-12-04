Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CFFF12CF4AC
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Dec 2020 20:23:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F3DA887CEC;
	Fri,  4 Dec 2020 19:23:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F5KBpwFcvrGi; Fri,  4 Dec 2020 19:23:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 33ED087CF8;
	Fri,  4 Dec 2020 19:23:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5152A1BF2C4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 19:23:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4C93087D82
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 19:23:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CgPO+WNz1NDN for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Dec 2020 19:23:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D348487D7F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 19:23:01 +0000 (UTC)
Date: Fri, 4 Dec 2020 11:22:59 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1607109781;
 bh=NBvueAlFsmQHzL0lTxjCKAaV+65o5qYn02pI6Wbz6SI=;
 h=From:To:Cc:Subject:In-Reply-To:References:From;
 b=upayJwBaQGoo3NxPo/MIVgAn8JYwWqG22c9tTgDGBCigX25cpiuYapo4BsHbflb+s
 sw2nNGlSsmYPA1EulvoASDW7jW5RDcs0X33ck3OfbQlL0fVIogq8pXVf/+L4epUvqA
 KJJlz0jXc42/w5mAdPZ/IH1VH/2fKE6nyvgp4/uLsSm3beE4ryY6BG4ggTCmmjfXay
 sxd2+m8dWDZQh4yaBORtrKeTqHgrsZ44mK3WBhuNDJRmzXwDVbGypN16mb6qWsk/iw
 wQXPYESwlAFKEP88L6bbJE9LLaryDbRaBXVNAzzi2p7/Xs4rOjqRuV8QfKNgb41ntV
 Q1d+1pQj/uUhA==
From: Jakub Kicinski <kuba@kernel.org>
To: Toke =?UTF-8?B?SMO4aWxhbmQtSsO4cmdlbnNlbg==?= <toke@redhat.com>
Message-ID: <20201204112259.7f769952@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
In-Reply-To: <87k0tx7aa5.fsf@toke.dk>
References: <20201204102901.109709-1-marekx.majtyka@intel.com>
 <20201204092012.720b53bf@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
 <87k0tx7aa5.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v2 bpf 0/5] New netdev feature flags
 for XDP
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
Cc: maciejromanfijalkowski@gmail.com, andrii.nakryiko@gmail.com,
 hawk@kernel.org, daniel@iogearbox.net, netdev@vger.kernel.org, ast@kernel.org,
 Marek Majtyka <marekx.majtyka@intel.com>, alardam@gmail.com,
 intel-wired-lan@lists.osuosl.org, jonathan.lemon@gmail.com,
 bpf@vger.kernel.org, bjorn.topel@intel.com, davem@davemloft.net,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gRnJpLCAwNCBEZWMgMjAyMCAxODoyNjoxMCArMDEwMCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5z
ZW4gd3JvdGU6Cj4gSmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz4gd3JpdGVzOgo+IAo+
ID4gT24gRnJpLCAgNCBEZWMgMjAyMCAxMToyODo1NiArMDEwMCBhbGFyZGFtQGdtYWlsLmNvbSB3
cm90ZTogIAo+ID4+ICAqIEV4dGVuZCBldGh0b29sIG5ldGxpbmsgaW50ZXJmYWNlIGluIG9yZGVy
IHRvIGdldCBhY2Nlc3MgdG8gdGhlIFhEUAo+ID4+ICAgIGJpdG1hcCAoWERQX1BST1BFUlRJRVNf
R0VUKS4gW1Rva2VdICAKPiA+Cj4gPiBUaGF0J3MgYSBnb29kIGRpcmVjdGlvbiwgYnV0IEkgZG9u
J3Qgc2VlIHdoeSBYRFAgY2FwcyBiZWxvbmcgaW4gZXRodG9vbAo+ID4gYXQgYWxsPyBXZSB1c2Ug
cnRuZXRsaW5rIHRvIG1hbmFnZSB0aGUgcHJvZ3MuLi4gIAo+IAo+IFlvdSBub3JtYWxseSB1c2Ug
ZXRodG9vbCB0byBnZXQgYWxsIHRoZSBvdGhlciBmZWF0dXJlcyBhIGRldmljZSBzdXBwb3J0LAo+
IGRvbid0IHlvdT8KCk5vdCByZWFsbHksIHBsZWFzZSB0YWtlIGEgbG9vayBhdCBhbGwgdGhlIElG
TEEgYXR0cmlidXRlcy4gVGhlcmUncyAKYSBidW5jaCBvZiBjYXBhYmlsaXRpZXMgdGhlcmUuCgo+
IEFuZCBmb3IgWERQIHlvdSBldmVuIHVzZSBpdCB0byBjb25maWd1cmUgdGhlIG51bWJlciBvZiBU
WFFzLgo+IAo+IEkgbWVhbiwgaXQgY291bGQgYmUgYW4gcnRuZXRsaW5rIGludGVyZmFjZSBhcyB3
ZWxsLCBvZiBjb3Vyc2UsIGJ1dCBJCj4gZG9uJ3QgdGhpbmsgaXQncyBjb21wbGV0ZWx5IHdlaXJk
IGlmIHRoaXMgZ29lcyBpbnRvIGV0aHRvb2wuLi4KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwt
d2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
