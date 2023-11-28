Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B18567FBC27
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Nov 2023 15:05:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 32C43410D8;
	Tue, 28 Nov 2023 14:05:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 32C43410D8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701180358;
	bh=XYZ3HhWgeS2SHHY6t/XrRtrZyjLqJlB/0+6yGF46LR4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TvbLN1/3dGtKfm3GIfam16Vsd7ObC0DseTz873PoqD7UKDGjwFOXx7wS7zA8YUkxN
	 R8KWCDD+qiVHAD0AyFEp4Tr/Kh+C4OyNZ8GC9Ik7IJ0Bzv7dipc0aABJ5ZEAu5rsUj
	 I4af6sggTFcq2PnJYmUjDhyPkW+fnRuaU3qAWJGC0v3ZNKkVG5MWIf+cP1PKN7rUF6
	 UuDZ7WvW4Vetpy9TXoGMFcTSxXT5rrIjX2do47TRmsbvOEg290HUGQ0TCjMZGiHWGy
	 Br5UFTQZcUWOptujnso/rHSPsk0izeRJHMjhA/mPnUAayYwv641BOvg+Wrror8DxPq
	 koaBYRx7kPn7Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VwjmWqaaFANm; Tue, 28 Nov 2023 14:05:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CA90A410B0;
	Tue, 28 Nov 2023 14:05:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CA90A410B0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 19B951BF2C6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Nov 2023 14:05:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E30166100E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Nov 2023 14:05:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E30166100E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2N08vTeU_vbZ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Nov 2023 14:05:49 +0000 (UTC)
X-Greylist: delayed 418 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 28 Nov 2023 14:05:49 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 95ED961004
Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com
 [64.147.123.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 95ED961004
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Nov 2023 14:05:49 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 4FAE33200C33;
 Tue, 28 Nov 2023 08:58:49 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Tue, 28 Nov 2023 08:58:49 -0500
X-ME-Sender: <xms:GPJlZZrs8EV2Bl_ALZAxyh6epKj7kidVmCgICpaNlOGV3KO_t0Nf2Q>
 <xme:GPJlZbo1FS5dxHXYIlOEWQ0tImW-GaE66cNTsfVFmerJ-zWP1XpZaPrtkN_Ota5Ww
 2IIaKrflRU4dM3znp0>
X-ME-Received: <xmr:GPJlZWNUJXgyi34rx89Huk8dwRxtlCqBbungVwvIWBS3a5INbQnAM3j65SzJFCO0LIaFkTjN1KzIzLrDLm5OLZXjAL1LMu2rLA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudeifedgheekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepkfffgggfuffvfhevhfgjtgfgsehtkeertddtvdejnecuhfhrohhmpefukhih
 lhgvrhcuofomnhhthihsrggrrhhiuceoshhmodhlihhsthhssehskhihmhdrfhhiqeenuc
 ggtffrrghtthgvrhhnpeffteeuuefhkedvleelteeukefhffekfeduudeukeduieeifeek
 jeegteffteekteenucffohhmrghinhepvhihohhsrdhiohdpkhgrphhsihdrfhhipdhkvg
 hrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehsmhdolhhishhtshesshhkhihmrdhfih
X-ME-Proxy: <xmx:GPJlZU5M3Zu_jR4QGNqzhbebHFRs2JQXFKw6uPYYXOtB0G3cjupgHg>
 <xmx:GPJlZY5V82dUbL3Ndh9iqxbYIwhyUqEVlygeu04d7_xHHDL-UP0qSA>
 <xmx:GPJlZcidR2V3_d2NLiPB9U4-GUisDMdS4HgQGa546BPoVjjMBghWbw>
 <xmx:GPJlZYFG0tSpVMtQ31U0jshJl_59_oMcK1yq5Lvbw5M9U4Qz6iytyQ>
Feedback-ID: i1cc947c0:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 28 Nov 2023 08:58:47 -0500 (EST)
Message-ID: <c229a29d-84a9-4390-a138-2034cd3bf572@skym.fi>
Date: Tue, 28 Nov 2023 15:58:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
References: <ee7f6320-0742-65d4-7411-400d55daebf8@skym.fi>
 <994cebfe-c97a-4e11-8dad-b3c589e9f094@intel.com>
 <c526d946-2779-434b-b8ec-423a48f71e36@skym.fi>
 <6e48c3ba-8d17-41db-ca8d-0a7881d122c9@intel.com>
 <4330a47e-aa31-4248-9d9d-95c54f74cdd9@app.fastmail.com>
 <10804893-d035-4ac9-86f0-161257922be7@app.fastmail.com>
 <03c9e8a4-5adc-4293-a720-fe4342ed723b@app.fastmail.com>
 <20231128021958.GA93203@dev-dsk-ipman-2a-ee5dfd20.us-west-2.amazon.com>
Content-Language: en-US
From: =?UTF-8?Q?Skyler_M=C3=A4ntysaari?= <sm+lists@skym.fi>
In-Reply-To: <20231128021958.GA93203@dev-dsk-ipman-2a-ee5dfd20.us-west-2.amazon.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=skym.fi; h=cc:cc
 :content-transfer-encoding:content-type:content-type:date:date
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:sender:subject:subject:to:to; s=fm2; t=
 1701179928; x=1701266328; bh=+cALrsUIrcx5f7cIxyP2tNPd8MRX8TkMbC9
 rXdAjRsA=; b=CFDS78jIRH/665dSnQZVkOm2Eo6ujC9C7C83FBLLqPkC+qvCwh/
 MzxfJHPk2j4Q5PoxKaMLt/Ugt1WS6KyDNcP8J5Rv59DK1bBZtDbgLTxBuWTfjXyx
 8MH272bcIzuTQqF9UZ4d2UwyTQTLeTtkyjZ0CZ+QduvOa88UB9KUP2dKALlRrwYU
 WRUO0w6Kea27qjIF5G/eDznIvrXLx1/TQGKXKGVgzqom3sLNDhtoyAWXHS24Fv3Y
 zlDyS4+IVTb74AtkcCqrTiAmHP/GWC1KvuaX6xjW12MxuZrjSw4YH1BFSqtXwV23
 3fS/ofcg8G5tOOzFp7IyzilAQuzae+Rbxcg==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:sender:subject:subject:to:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1701179928; x=1701266328; bh=+cALrsUIrcx5f7cIxyP2tNPd8MRX8TkMbC9
 rXdAjRsA=; b=KK5J0/OPzESFDUXzxG1KJpYTgW2+FnD0y3Gxl9ePBH305o/vy/P
 qjnA8fB+bOLDUzUz1A5JBMhS5pKFcDnXWxVwct34RQ4NuZmNwOU6c3LZzjTgS8n3
 4ayk9OuysrsoYdx3I3xzuUNJmFmuLRI4N4wEAScXWADG/RZjxV9s5b0nS9UpBxKj
 Es+R409tUS55ksi2GZymm/wr+snA6LLax+qxv4fB/5deac5iP29HxCN6wU6u0qZQ
 Vs+zAu4aNE78W/NWfr/Y28BAy/PcDUWLYo99NIGe71eTc+u/alIViiEXQZdXfJZJ
 lHACPEOdZi/uo+r/fBUmm9HZ0v0/Oa3M73w==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=skym.fi header.i=@skym.fi
 header.a=rsa-sha256 header.s=fm2 header.b=CFDS78jI; 
 dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm1 header.b=KK5J0/OP
Subject: Re: [Intel-wired-lan] The difference between linux kernel driver
 and FreeBSD's with Intel X533
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
Cc: Jordan Crouse <jorcrous@amazon.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ck9uIDExLzI4LzIzIDA0OjIwLCBJdmFuIFBhbmcgd3JvdGU6Cj4gT24gV2VkLCBPY3QgMTgsIDIw
MjMgYXQgMDk6NTA6MzVQTSArMDMwMCwgU2t5bGVyIE3DpG50eXNhYXJpIHdyb3RlOgo+PiBPbiBU
dWUsIE9jdCAxMCwgMjAyMywgYXQgMDM6MzksIFNreWxlciBNw6RudHlzYWFyaSB3cm90ZToKPj4+
IE9uIFR1ZSwgT2N0IDEwLCAyMDIzLCBhdCAwMjo1MCwgU2t5bGVyIE3DpG50eXNhYXJpIHdyb3Rl
Ogo+Pj4+IE9uIE1vbiwgT2N0IDksIDIwMjMsIGF0IDE4OjMzLCBKZXNzZSBCcmFuZGVidXJnIHdy
b3RlOgo+Pj4+PiBPbiAxMC80LzIwMjMgMTA6MDggQU0sIFNreWxlciBNw6RudHlzYWFyaSB3cm90
ZToKPj4+Pj4+Pj4gSGkgdGhlcmUsCj4+Pj4+Pj4+Cj4+Pj4+Pj4+IEl0IHNlZW1zIHRoYXQgZm9y
IHJlYXNvbnMgdW5rbm93biB0byBtZSwgbXkgSW50ZWwgWDUzMyBiYXNlZCAxMEcgU0ZQKwo+Pj4+
Pj4+PiBkb2Vzbid0IHdhbnQgdG8gd29yayB3aXRoIGtlcm5lbCA2LjEuNTUgaW4gVnlPUyAxLjQg
bm9yIERlYmlhbiAxMiBidXQKPj4+Pj4+Pj4gaXQgZG9lcyBpbiBPUE5zZW5zZSB3aGljaCBpcyBi
YXNlZCBvbiBGcmVlQlNEIDEzLjIuCj4+Pj4+Pj4+Cj4+Pj4+Pj4+IEhvdyB3b3VsZCBJIGdvIGFi
b3V0IGRlYnVnZ2luZyB0aGlzIHByb3Blcmx5PyBCb3RoIHNpZGVzIHNlZSBsaWdodCwKPj4+Pj4+
Pj4gYnV0IG5vIGxpbmsgdW5sZXNzIEknbSB1c2luZyBGcmVlQlNELgo+Pj4+Pj4gaHR0cHM6Ly9m
b3J1bS52eW9zLmlvL3QvMTBnLXNmcC10cm91YmxlLXdpdGgtbGlua2luZy1pbnRlbC14NTUzLzEy
MjUzLzExP3U9c2FtaXA1MzcKPj4+Pj4KPj4+Pj4gSGkgU2t5bGVyLAo+Pj4+Pgo+Pj4+PiBSZXNw
b25zZSBmcm9tIEludGVsIHRlYW06Cj4+Pj4+Cj4+Pj4+IEluIHRoZSBldGh0b29sIC1tIG91dHB1
dCBwYXN0ZWQgSSBzZWUgVFggYW5kIFJYIG9wdGljYWwgcG93ZXIgaXMgZmluZS4KPj4+Pj4gQ291
bGQgeW91IHJlcXVlc3QgZmF1bHQgc3RhdHVzIG9uIGJvdGggc2lkZXM/IEp1c3Qgd2FudCB0byBj
aGVjayBpZiBsaW5rCj4+Pj4+IGlzIGRvd24gYmVjYXVzZSB3ZSBhcmUgYXQgbG9jYWwtZmF1bHQg
b3IgbGluayBwYXJ0bmVyIGlzIGF0IGxvY2FsLWZhdWx0Lgo+Pj4+Pgo+Pj4+PiBybW1vZCBpeGdi
ZQo+Pj4+PiBtb2Rwcm9iZSBpeGdiZQo+Pj4+PiBldGh0b29sIC1TIGV0aDAgfCBncmVwIGZhdWx0
Cj4+Pj4+Cj4+Pj4+IFNpbmNlIGl0IGlzIDEwRywgaWYgb3VyIHNpZGUgVFggaXMgT04gKHBvd2Vy
IGxldmVsIHNheXMgaXQgaXMpIHRoZW4gd2UKPj4+Pj4gc2hvdWxkIGV4cGVjdCBsaW5rIHBhcnRu
ZXIgUlggdG8gYmUgbG9ja2VkIHNvIGNhbm5vdCBiZSBhdCBMb2NhbCBGYXVsdC4KPj4+Pj4KPj4+
Pj4gU2t5bGVyLCBwbGVhc2UgZ2F0aGVyIHRoYXQgZXRodG9vbCAtUyBkYXRhIGZvciB1cy4KPj4+
Pj4KPj4+Pj4gSmVzc2UKPj4+Pj4KPj4+Pj4KPj4+Pj4KPj4+Pj4KPj4+Pgo+Pj4+IEhpIEplc3Nl
LAo+Pj4+Cj4+Pj4gQXMgdGhlIG90aGVyIHNpZGUgb2YgdGhlIGxpbmsgaXMgYW4gSnVuaXBlciwg
SSdtIG5vdCBxdWl0ZSBzdXJlIGhvdyBJCj4+Pj4gd291bGQgZ2F0aGVyIHRoZSBzYW1lIGRhdGEg
ZnJvbSBpdCBhcyBpdCBkb2Vzbid0IGhhdmUgZXRodG9vbD8KPj4+Pgo+Pj4+IEkgaGF2ZSBhbHNv
IHNvbWV3aGF0IGdpdmVuIHVwIGhvcGUgb24gaXQgd29ya2luZyBvbiBWeU9TIGFuZCBpbnN0ZWFk
IEkKPj4+PiBhbSB1c2luZyBPUE5zZW5zZSBmb3IgdGhlIG1vbWVudCBidXQgSSBzdGlsbCBoYXZl
IFZ5T1MgaW5zdGFsbGVkIGFzCj4+Pj4gd2VsbC4KPj4+Pgo+Pj4+IFNreWxlcgo+Pj4KPj4+IEhp
IEplc3NlLAo+Pj4KPj4+IEkgZGlkIHZlcmlmeSB0aGF0IHRoZSBncmVwIGRvZXNuJ3QgeWllbGQg
YW55IHJlc3VsdHMgb24gdGhlIFZ5T1MgYm94Cj4+PiBhbmQgYWxsIG9mIHRoZSBkYXRhIHJldHVy
bmVkIGhhcyBhbiB2YWx1ZSBvZiAwLiBQYXN0ZSBvZiB3aGljaCBpcyBoZXJlOgo+Pj4gaHR0cHM6
Ly9wLmthcHNpLmZpLz80YTgyY2VkYjRmNDgwMWVjI0RjRWdGTUZLN2NIMTNFcXlwc1k0WmFIUzV0
YWVBMXpYZXZtbVRTVlczUDl4Cj4+Pgo+Pj4gSSByZWFsbHkgdGhpbmsgc29tZXRoaW5nIHdlaXJk
IGlzIGdvaW5nIG9uIHdpdGggdGhlIGRyaXZlciBpbiBMaW51eCBhcwo+Pj4gb3RoZXJ3aXNlIHRo
ZSBzYW1lIGV4YWN0IGNvbmZpZyBvbiBKdW5pcGVyIHdvdWxkbid0IHdvcmsgdGhlcmUgZWl0aGVy
Lgo+Pj4gVGhlIFZ5T1MgYm94IGFsc28gc2F5cyB0aGF0IGl0J3MgdW5hYmxlIHRvIG1vZGlmeSBh
dXRvbmVnIHNldHRpbmdzLCBvcgo+Pj4gc3BlZWQvZHVwbGV4IG9mIHRoZSBpbnRlcmZhY2UuCj4+
Pgo+Pj4gU2t5bGVyCj4+Cj4+IEl0IGhhcyBiZWVuICB2ZXJpZmllZCB0aGF0IHRoZSBkcml2ZXIg
aW4ga2VybmVsIHZlcnNpb24gNS40LjI1NSBzZWVtcyB0byB3b3JrIGFrYSAxLjMgVnlPUy4gIFBv
c3QgZnJvbSBhbm90aGVyIHVzZXIgaW4gdGhlIHNhbWUgdGhyZWFkIGFib3V0IGl0OiBodHRwczov
L2ZvcnVtLnZ5b3MuaW8vdC8xMGctc2ZwLXRyb3VibGUtd2l0aC1saW5raW5nLWludGVsLXg1NTMv
MTIyNTMvNDYKPj4KPj4gSSBoYXZlIGFsc28gdmVyaWZpZWQgdGhhdCB0aGUgb3V0LW9mLXRyZWUg
aXhnYmUgZHJpdmVyIGRvZXMgd29yaywgYnV0IGluLWtlcm5lbCBkb2Vzbid0IGluIGtlcm5lbCA2
LjEuNTguCj4+Cj4+IFBsZWFzZSBzaGFyZSB0aGVzZSBmaW5kaW5ncyB3aXRoIHRoZSBjb3JyZWN0
IEludGVsIHRlYW0gc28gdGhhdCB0aGlzIGNvdWxkIGJlIGZpeGVkLgo+Pgo+PiAtIFNreWxlcgo+
Pgo+IAo+IEhpIFNreWxlciwgSmVzc2UsCj4gCj4gSSBjYW1lIGFjcm9zcyB0aGlzIHZlcnkgc2lt
aWxhciBpc3N1ZSB3aGVuIHVwZ3JhZGluZyBvdXIgbmV0d29ya2luZyBnZWFyCj4gZnJvbSBrZXJu
ZWwgNS4xNSB0byA2LjEuIE91ciAxMEcgbGluayBmYWlscyB3aXRoIHRoZSBpbi10cmVlIDYuMSBp
eGdiZQo+IGRyaXZlciBidXQgd29ya3Mgd2l0aCB0aGUgb3V0LW9mLXRyZWUgNS54IHZlcnNpb25z
LiBJIGZvdW5kIHRoYXQgbXkgbGluawo+IGlzc3VlcyB3ZXJlIHJlbGF0ZWQgdG8gdGhpcyBjb21t
aXQ6Cj4gCj4gaXhnYmU6IE1hbnVhbCBBTi0zNyBmb3IgdHJvdWJsZXNvbWUgbGluayBwYXJ0bmVy
cyBmb3IgWDU1MCBTRkkKPiBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2Vy
bmVsL2dpdC9zdGFibGUvbGludXguZ2l0L2NvbW1pdC8/aD12Ni4xLjYzJmlkPTU2NTczNjA0OGJk
NWY5ODg4OTkwNTY5OTkzYzZiNmJmZGY2ZGNiNmQKPiAKPiBTcGVjaWZpY2FsbHksIG91ciAxMEcg
bGluayB3b3JrcyB3aGVuIGJvdGggc2lkZXMgb2YgdGhlIGZpYmVyIGFyZQo+IHJ1bm5pbmcgdGhl
IGluLXRyZWUgNi4xIGl4Z2JlIGRyaXZlciB3aXRoIHRoaXMgYXV0b25lZ290aWF0aW9uIGNoYW5n
ZS4KPiBPdXIgbGluayBhbHNvIHdvcmtzIHdoZW4gYm90aCBzaWRlcyBhcmUgcnVubmluZyB0aGUg
NS54IGl4Z2JlIGRyaXZlcnMKPiB3aXRob3V0IHRoaXMgY29tbWl0LiBJdCBmYWlscywgaG93ZXZl
ciwgd2hlbiBvbmx5IG9uZSBzaWRlIGhhcyB0aGlzCj4gY29tbWl0LiBPdXIgY3VycmVudCBzZXR1
cCBjb21waWxlcyB0aGUgaW4tdHJlZSA2LjEgaXhnYmUgZHJpdmVyIHdpdGgKPiB0aGlzIGNvbW1p
dCByZXZlcnRlZCwgZm9yIGNvbXBhdGliaWxpdHkgd2l0aCBvdXIgdmFyeWluZyBoYXJkd2FyZS4K
PiAKPiBJIHdvdWxkIGFwcHJlY2lhdGUgaXQgaWYgYW55b25lIGNhbiBjcm9zcy1jaGVjayBteSBj
bGFpbSB3aXRoIHRoZWlyCj4gaGFyZHdhcmUgYXMgd2VsbC4gQWxzbywgd291bGQgYW55b25lIGJl
IGFibGUgdG8gaGVscCBleHBsYWluIHdoYXQgc29tZQo+IG9mIHRob3NlIHJlZ2lzdGVycyBhbmQg
cmVnX3ZhbCBiZWluZyB3cml0dGVuIGFyZSBkb2luZz8KPiAKPiAtSXZhbgo+IAoKSGkgSXZhbiwK
Ckl0IHNlZW1zIHRoYXQgZm9yIHdoYXRldmVyIHJlYXNvbiwgeW91ciByZXBseSBkb2VzIG5vdCBh
cHBlYXIgb24gdGhlIGxpc3RzPwoKLSBTa3lsZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13
aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC13aXJlZC1sYW4K
