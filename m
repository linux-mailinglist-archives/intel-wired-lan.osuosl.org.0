Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 133CE730337
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jun 2023 17:14:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A2C3461356;
	Wed, 14 Jun 2023 15:14:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A2C3461356
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686755690;
	bh=N92UoKk8SOrFgizRoiZDlQAuVayMv//d2NZnrjyqI88=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IRiResyOSWk+J8Vdo6dBr5WmMUjtv9vsWowt5TxlMViaDiWzQiizsnHqvM/FWMv+i
	 GyOZoTZe/9ja/pA4e1/UJv9FqCtrqtKTt3HNb8kxmBwU0AzDWCMbLy2mPE6ZqNFJrN
	 jGrajpQT1buoYGUW+aOz9b9VpDlF44CSZVOAFhTpYEStTNJboe1R1l5CGi0ZePy1hc
	 iVY8TEYremCDb4nE13NCq2LjnXx3dZYPTfxMsNGf3SpSrZrSGdgHBAAjc3GhMBfZ3H
	 oVsG2L8OD8Juke48uMM1E+ifamgl/bBj7DWLcfEQFKOoyYuV+yIpknAKPFvV2mY2r8
	 W8HbzNb7fXvhQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qVMWQEqFNVkZ; Wed, 14 Jun 2023 15:14:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F3CDE61342;
	Wed, 14 Jun 2023 15:14:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F3CDE61342
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BDA141BF2BA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 13:47:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 90CEF61303
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 13:47:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 90CEF61303
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D7hA0HQGH2Aw for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jun 2023 13:47:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E3F4B612DE
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E3F4B612DE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 13:47:07 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 2CBD0641ED;
 Wed, 14 Jun 2023 13:47:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6DF82C433C0;
 Wed, 14 Jun 2023 13:47:06 +0000 (UTC)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id BEE71BBEBC1; Wed, 14 Jun 2023 15:47:02 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@kernel.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>, Maciej Fijalkowski
 <maciej.fijalkowski@intel.com>
In-Reply-To: <b3f96eb9-25c7-eeaf-3e0d-7c055939168b@intel.com>
References: <20230613151005.337462-1-maciej.fijalkowski@intel.com>
 <9eee635f-0898-f9d3-f3ba-f6da662c90cc@intel.com> <ZIiJOVMs4qK+PDsp@boxer>
 <874jnbxmye.fsf@toke.dk> <16f10691-3339-0a18-402a-dc54df5a2e21@intel.com>
 <ZIm3lHaa3Rjl2xRe@boxer> <b3f96eb9-25c7-eeaf-3e0d-7c055939168b@intel.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Wed, 14 Jun 2023 15:47:02 +0200
Message-ID: <87sfaujgvd.fsf@toke.dk>
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 14 Jun 2023 15:14:34 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1686750426;
 bh=l5n/L5NHjNAUQ1q3ufBr1NoPvkev3JAl2SGy6BnnzGU=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=k6kMpmx6XivSeaiPRuwbUD99PRsLTH6oD2s30Cm2DFNMisgGsqfob7OVR7eLuvosP
 FUbtHWrs66D1t85rZ9Rj72nnnl9xxX0ojxqAx1cpAIKcrI1SAziW9MO9XNbSCIqYt8
 NU76sV7E6h3GZz9lfU8nBAKk/zeVWo1iFHvP7zi3bHdj9kI7I0fcXjqnRD4NHCvFXK
 zfFI596NxDeilaDIGuhudsNoPudhE/vYooZN7zf67RI9bzmdQVIfZ/MxkWEi/ELy6r
 T2JRPyxk/IfAuQiQHymcYrdGGVRu8mgT+FSSRHd2rBLPQp78KZ8uBXBtyvZTgn5ElB
 RwjVXQgzzzuEg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=k6kMpmx6
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: allow hot-swapping XDP
 programs
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, fred@cloudflare.com, magnus.karlsson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

QWxleGFuZGVyIExvYmFraW4gPGFsZWtzYW5kZXIubG9iYWtpbkBpbnRlbC5jb20+IHdyaXRlczoK
Cj4gRnJvbTogTWFjaWVqIEZpamFsa293c2tpIDxtYWNpZWouZmlqYWxrb3dza2lAaW50ZWwuY29t
Pgo+IERhdGU6IFdlZCwgMTQgSnVuIDIwMjMgMTQ6NTA6MjggKzAyMDAKPgo+PiBPbiBXZWQsIEp1
biAxNCwgMjAyMyBhdCAwMjo0MDowN1BNICswMjAwLCBBbGV4YW5kZXIgTG9iYWtpbiB3cm90ZToK
Pj4+IEZyb206IFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8dG9rZUBrZXJuZWwub3JnPgo+Pj4g
RGF0ZTogVHVlLCAxMyBKdW4gMjAyMyAxOTo1OTozNyArMDIwMAo+Cj4gWy4uLl0KPgo+Pj4gV2hh
dCBpZiBhIE5BUEkgcG9sbGluZyBjeWNsZSBpcyBiZWluZyBydW4gb24gb25lIGNvcmUgd2hpbGUg
YXQgdGhlIHZlcnkKPj4+IHNhbWUgbW9tZW50IEknbSByZXBsYWNpbmcgdGhlIFhEUCBwcm9nIG9u
IGFub3RoZXIgY29yZT8gTm90IGluIHRlcm1zIG9mCj4+PiBwb2ludGVyIHRlYXJpbmcsIEkgc2Vl
IG5vdyB0aGF0IHRoaXMgaXMgaGFuZGxlZCBjb3JyZWN0bHksIGJ1dCBpbiB0ZXJtcwo+Pj4gb2Yg
cmVmY291bnRzPyBDYW4ndCBicGZfcHJvZ19wdXQoKSBmcmVlIGl0IHdoaWxlIHRoZSBwb2xsaW5n
IGlzIHN0aWxsCj4+PiBhY3RpdmU/Cj4+IAo+PiBIbW0geW91IG1lYW4gd2Ugc2hvdWxkIGRvIGJw
Zl9wcm9nX3B1dCgpICphZnRlciogd2UgdXBkYXRlIGJwZl9wcm9nIG9uCj4+IGljZV9yeF9yaW5n
PyBJIHRoaW5rIHRoaXMgaXMgYSBmYWlyIHBvaW50IGFzIHdlIGRvbid0IGJ1bXAgdGhlIHJlZmNv
dW50Cj4+IHBlciBlYWNoIFJ4IHJpbmcgdGhhdCBob2xkcyB0aGUgcHRyIHRvIGJwZl9wcm9nLCB3
ZSBqdXN0IHJlbHkgb24gdGhlIG1haW4KPj4gb25lIGZyb20gVlNJLgo+Cj4gTm90IGV2ZW4gYWZ0
ZXIgd2UgdXBkYXRlIGl0IHRoZXJlLiBJIGJlbGlldmUgd2Ugc2hvdWxkIHN5bmNocm9uaXplIE5B
UEkKPiBjeWNsZXMgd2l0aCBCUEYgcHJvZyB1cGRhdGUgKGhhdmUgc3luY2hyb25pemVfcmN1KCkg
YmVmb3JlIHB1dCBvciBzbyB0bwo+IG1ha2UgdGhlIGNvbmZpZyBwYXRoIHdhaXQgdW50aWwgdGhl
cmUncyBubyBwb2xsaW5nIGFuZCBvbnN0YWNrIHBvaW50ZXJzLAo+IHdvdWxkIHRoYXQgYmUgZW5v
dWdoPykuCj4KPiBOQVBJIHBvbGxpbmcgc3RhcnRzCj4gfDwtLS0gWERQIHByb2cgcG9pbnRlciBp
cyBwbGFjZWQgb24gdGhlIHN0YWNrIGFuZCB1c2VkIGZyb20gdGhlcmUKPiB8Cj4gfCAgPC0tLSBo
ZXJlIHlvdSBkbyB4Y2hnKCkgYW5kIGJwZl9wcm9nX3B1dCgpCj4gfCAgPC0tLSBoZXJlIHlvdSB1
cGRhdGUgWERQIHByb2dzIG9uIHRoZSByaW5ncwo+IHwKPiB8PC0tLSBwb2xsaW5nIGxvb3AgaXMg
c3RpbGwgdXNpbmcgdGhlIFtub3cgaW52YWxpZF0gb25zdGFjayBwb2ludGVyCj4gfAo+IE5BUEkg
cG9sbGluZyBlbmRzCgpObywgdGhpcyBpcyBmaW5lOyBicGZfcHJvZ19wdXQoKSB1c2VzIGNhbGxf
cmN1KCkgdG8gYWN0dWFsbHkgZnJlZSB0aGUKcHJvZ3JhbSwgd2hpY2ggZ3VhcmFudGVlcyB0aGF0
IGFueSBvbmdvaW5nIFJDVSBjcml0aWNhbCBzZWN0aW9ucyBoYXZlCmVuZGVkIGJlZm9yZS4gQW5k
IGFzIGV4cGxhaW5lZCBpbiB0aGF0IG90aGVyIHNlcmllcyBvZiBtaW5lLCB0aGlzCmluY2x1ZGVz
IGFueSBvbmdvaW5nIE5BUEkgcG9sbCBjeWNsZXMuCgotVG9rZQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0
CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
