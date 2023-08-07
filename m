Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAED577292F
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Aug 2023 17:27:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 579A440B2E;
	Mon,  7 Aug 2023 15:27:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 579A440B2E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691422077;
	bh=ON0/j/otEDwli3BzPCBLP3pzJcEZeJBnrhhtrdW48WE=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zfUvULGxsJ8uA9xeCu3X2B1vC5Pq0CXG+pLXiSqF+BIU8J7uicAVbKWeHoG4hGj73
	 SqWQ/yCGZb7pHH4pmuCHsABNUUZqr9I03G6jF5iWmSnv0/+Dx4WC7l93oiWsu8tOwe
	 /0mLf0BZM8PxeRi4RboWwWhJRohcjIBuoN+Rwvofoisw+BHDMfVv+AZcH9NIjeD82g
	 LXL6HyCxeITMd4NPyDcowD/gX/T2ttsyhKfEgrvDmlGUWKV4m4MMzlfsRz/L/rZLMr
	 EFIzl7ZZ79YeTyzXM3nqpxN4AzQUSqSD46dGjJ6gCY61zTNFkDvdYmWDt+Auvj0HcN
	 7LZUCr6moiJEw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id es8fzjJAl3aE; Mon,  7 Aug 2023 15:27:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2206D40A53;
	Mon,  7 Aug 2023 15:27:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2206D40A53
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 272601BF280
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 14:48:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E9A9281DEA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 14:47:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E9A9281DEA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1PzDZfytKGb1 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Aug 2023 14:47:52 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 46E1881A6D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 14:47:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 46E1881A6D
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 21BD261D52;
 Mon,  7 Aug 2023 14:47:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6F951C433C8;
 Mon,  7 Aug 2023 14:47:50 +0000 (UTC)
Date: Mon, 07 Aug 2023 07:47:47 -0700
From: Kees Cook <kees@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>
User-Agent: K-9 Mail for Android
In-Reply-To: <9f817d7a-8f85-9217-620f-dd2f62c2c050@intel.com>
References: <20230801111923.118268-1-przemyslaw.kitszel@intel.com>
 <20230801111923.118268-2-przemyslaw.kitszel@intel.com>
 <202308011403.E0A8D25CE@keescook>
 <e0cb5bf2-2278-b83f-c45c-0556927787a6@intel.com>
 <572fb95a-7806-0ed1-00e3-6a7796273946@intel.com>
 <9f817d7a-8f85-9217-620f-dd2f62c2c050@intel.com>
Message-ID: <6C572B68-2913-4F5B-8295-C001A98CA7A2@kernel.org>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 07 Aug 2023 15:27:25 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1691419670;
 bh=bpPHccARP+nSofUhaL1UTNcFQ9beOi9t6SJoSE+64CU=;
 h=Date:From:To:CC:Subject:In-Reply-To:References:From;
 b=DVCe7XhX+w1CcVE9sMRbu4kaoE22D7T378pKolQU/NZkUYIovAC2clzWcvxvhvRYx
 PrC6uO0Qv0Tbh4NmYEvmCdt2GKSJdMzbJ3rB71PbVkaUKuPfah3HwUL1pSyHVNgbuJ
 he84dzDxmHUA2axwG0pD3mzpNxZUl+dSYIvnyVGOqgSmYZt/aQSI8rh/9PZGUtTsFv
 7E3xr8V5a3feekKKFD/CUnEjkS8yfFKW3fgpbIfke32KYpl2qwWk603RF4Q9tRbrRu
 HB9tYJUECFjU9Mv0SPoUpnM0R4t9basYDKo7AxVMYbSxcFAuqtzUAkK/9GAcQuzZiE
 94om0YYaPitPQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=DVCe7XhX
Subject: Re: [Intel-wired-lan] [RFC net-next 1/2] overflow: add
 DECLARE_FLEX() for on-stack allocs
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
 Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gQXVndXN0IDcsIDIwMjMgNTo0MjozMSBBTSBQRFQsIFByemVtZWsgS2l0c3plbCA8cHJ6ZW15
c2xhdy5raXRzemVsQGludGVsLmNvbT4gd3JvdGU6Cj5PbiA4LzQvMjMgMTc6NDQsIEFsZXhhbmRl
ciBMb2Jha2luIHdyb3RlOgo+PiBGcm9tOiBQcnplbWVrIEtpdHN6ZWwgPHByemVteXNsYXcua2l0
c3plbEBpbnRlbC5jb20+Cj4+IERhdGU6IEZyaSwgNCBBdWcgMjAyMyAxNTo0Nzo0OCArMDIwMAo+
PiAKPj4+IE9uIDgvMi8yMyAwMDozMSwgS2VlcyBDb29rIHdyb3RlOgo+Pj4gCj4+PiBbLi4uXQo+
Pj4gCj4+Pj4gSW5pdGlhbGx5IEkgd2FzIHN0cnVnZ2xpbmcgdG8gbWFrZSBfX2NvdW50ZWRfYnkg
d29yaywgYnV0IGl0IHNlZW1zIHdlIGNhbgo+Pj4+IHVzZSBhbiBpbml0aWFsaXplciBmb3IgdGhh
dCBtZW1iZXIsIGFzIGxvbmcgYXMgd2UgZG9uJ3QgdG91Y2ggdGhlCj4+Pj4gZmxleGlibGUKPj4+
PiBhcnJheSBtZW1iZXIgaW4gdGhlIGluaXRpYWxpemVyLiBTbyB3ZSBqdXN0IG5lZWQgdG8gYWRk
IHRoZSBjb3VudGVkLWJ5Cj4+Pj4gbWVtYmVyIHRvIHRoZSBtYWNybywgYW5kIHVzZSBhIHVuaW9u
IHRvIGRvIHRoZSBpbml0aWFsaXphdGlvbi4gQW5kIGlmCj4+Pj4gd2UgdGFrZSB0aGUgYWRkcmVz
cyBvZiB0aGUgdW5pb24gKGFuZCBub3QgdGhlIHN0cnVjdCB3aXRoaW4gaXQpLCB0aGUKPj4+PiBj
b21waWxlciB3aWxsIHNlZSB0aGUgY29ycmVjdCBvYmplY3Qgc2l6ZSB3aXRoIF9fYnVpbHRpbl9v
YmplY3Rfc2l6ZToKPj4+PiAKPj4+PiAjZGVmaW5lIERFRklORV9GTEVYKHR5cGUsIG5hbWUsIGZs
ZXgsIGNvdW50ZXIsIGNvdW50KSBcCj4+Pj4gIMKgwqDCoMKgIHVuaW9uIHsgXAo+Pj4+ICDCoMKg
wqDCoMKgwqDCoMKgIHU4wqDCoCBieXRlc1tzdHJ1Y3Rfc2l6ZV90KHR5cGUsIGZsZXgsIGNvdW50
KV07IFwKPj4+PiAgwqDCoMKgwqDCoMKgwqDCoCB0eXBlIG9iajsgXAo+Pj4+ICDCoMKgwqDCoCB9
IG5hbWUjI191IF9fYWxpZ25lZChfQWxpZ25vZih0eXBlKSkgPSB7IC5vYmouY291bnRlciA9IGNv
dW50IH07IFwKPj4+PiAgwqDCoMKgwqAgLyogdGFrZSBhZGRyZXNzIG9mIHdob2xlIHVuaW9uIHRv
IGdldCB0aGUgY29ycmVjdAo+Pj4+IF9fYnVpbHRpbl9vYmplY3Rfc2l6ZSAqLyBcCj4+Pj4gIMKg
wqDCoMKgIHR5cGUgKm5hbWUgPSAodHlwZSAqKSZuYW1lIyNfdQo+Pj4+IAo+Pj4+IGkuZS4gX19i
dWlsdGluX29iamVjdF9zaXplKG5hbWUsIDEpIChhcyB1c2VkIGJ5IEZPUlRJRllfU09VUkNFLCBl
dGMpCj4+Pj4gd29ya3MgY29ycmVjdGx5IGhlcmUsIGJ1dCBicmVha3MgKHNlZXMgYSB6ZXJvLXNp
emVkIGZsZXggYXJyYXkgbWVtYmVyKQo+Pj4+IGlmIHRoaXMgbWFjcm8gZW5kcyB3aXRoOgo+Pj4+
IAo+Pj4+ICDCoMKgwqDCoCB0eXBlICpuYW1lID0gJm5hbWUjI191Lm9iago+Pj4gCj4+PiBfX2J1
aWx0aW5fb2JqZWN0X3NpemUobmFtZSwgMCkgd29ya3MgZmluZSBmb3IgYm90aCB2ZXJzaW9ucyAo
d2l0aCBhbmQKPj4+IHdpdGhvdXQgLm9iaiBhdCB0aGUgZW5kKQo+Pj4gCj4+PiBob3dldmVyIGl0
IGRvZXMgbm90IHdvcmsgZm9yIGJ1aWxkcyB3aXRob3V0IC1PMiBzd2l0Y2gsIHNvCj4+PiBzdHJ1
Y3Rfc2l6ZV90KCkgaXMgcmF0aGVyIGEgd2F5IHRvIGdvIDovCj4+IAo+PiBZb3Ugb25seSBuZWVk
IHRvIGNhcmUgYWJvdXQgLU8yIGFuZCAtT3MsIHNpbmNlIG9ubHkgdGhvc2UgMiBhcmUKPj4gb2Zm
aWNpYWxseSBzdXBwb3J0ZWQgYnkgS2J1aWxkLiBEaWQgeW91IG1lYW4gaXQgZG9lc24ndCB3b3Jr
IG9uIC1PcyBhcyB3ZWxsPwo+Cj5Cb3RoIC1PcyBhbmQgLU8yIGFyZSBmaW5lIGhlcmUuCj4KPk9u
ZSB0aGluZyBpcyB0aGF0IHBlcmhhcHMgYSAidXNlciBmcmllbmRseSIgZGVmaW5lIGZvciAiX19i
dWlsdGluX29iamVjdF9zaXplKG5hbWUsIDEpIiB3b3VsZCBhdm9pZCBhbnkgcG90ZW50aWFsIGZv
ciBtaXNsZWFkaW5nICIxIiB3aXRoIGFueSAiY291bnRlciIgdmFyaWFibGUsIHdpbGwgc2VlLgoK
SSBtZWFudCB0aGF0IEZPUlRJRllfU09VUkNFIHdpbGwgd29yayBjb3JyZWN0bHkgaW4gdGhlIGV4
YW1wbGUgSSBnYXZlLiAoX19idWlsdGluX29iamVjdF9zaXplKCkgaXMgdXNlZCB0aGVyZS4pIEFs
c28gbm90ZSB0aGF0ICJtYXggc2l6ZSIgKG1vZGUgMCkgaXMgdW5jaGFuZ2VkIGluIGVpdGhlciBj
YXNlLCBidXQgbW9kZSAxIG5lZWRzIHRvIHNlZSB0aGUgb3V0ZXIgb2JqZWN0IHRvIGdldCB0aGUg
bWluIHNpemUgY29ycmVjdC4KCi1LZWVzCgoKLS0gCktlZXMgQ29vawpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBs
aXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
