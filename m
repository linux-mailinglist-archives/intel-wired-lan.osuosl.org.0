Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E4966817D12
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Dec 2023 23:01:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 775FC4030E;
	Mon, 18 Dec 2023 22:01:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 775FC4030E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702936876;
	bh=DThavpwl2gkUtSwBVbxP5WerloeVZ2hOzY5SXOR9HDs=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9Y7zOa+t3ID0UD98rl7Jlss7L+WDgFAxeLlLgC+whfOXccxEjHvjZuULLzz8dx9jn
	 X3O59Q49fx6vEGpdCxD4vw4//PMCCZqUtRA5NSaN2aLc5Owp54f1VV6Q/2pVPGU85z
	 dg0ZvUsH3PpA3Yuvp7+WZEDcwpC95Ffkr16+WYhCZbe+huBd+NtotB6t0qlYzwtH/A
	 xsD3U+rFZkLEnH/Xlp6db4bIVXQueNZCzMxZ0bnG1/wZUUQmsk1TuGNaE63MhJS9G6
	 R2xaBKKhD9fCd7MeyHth0SVAFleWZA4D32/EP9M8KxX1UFn7yJ/OXEIvPuFfrEfXrx
	 geL7CGsWHMsLw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NBTCduCTDX8H; Mon, 18 Dec 2023 22:01:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 57391402E5;
	Mon, 18 Dec 2023 22:01:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 57391402E5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A975F1BF28F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 19:01:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8C3D0405E6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 19:01:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8C3D0405E6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oGC9Vn_91Wyk for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Dec 2023 19:00:59 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7B04240527
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 19:00:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7B04240527
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 396E261178;
 Mon, 18 Dec 2023 19:00:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 442E2C433CA;
 Mon, 18 Dec 2023 19:00:57 +0000 (UTC)
Date: Mon, 18 Dec 2023 12:00:55 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Message-ID: <20231218190055.GB2863043@dev-arch.thelio-3990X>
References: <20231217-i40e-comma-v1-1-85c075eff237@kernel.org>
 <CAKwvOd=ZKV6KsgX0UxBX4Y89YEgpry00jG6K6qSjodwY3DLAzA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKwvOd=ZKV6KsgX0UxBX4Y89YEgpry00jG6K6qSjodwY3DLAzA@mail.gmail.com>
X-Mailman-Approved-At: Mon, 18 Dec 2023 22:01:10 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1702926058;
 bh=VApFh3cRumz6BLzq1kdAeoE0D33106JBTlF4Ob27DSg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KtBSFMcsOxj1N0SaNjSviRGYpMENFKp7sNvzql/Z+d+Q5EBYkme6rrWcaBnpFzokT
 mnUhEyPn/1J7SGFTBlVi9IB1YaUXXtr7iu1DTuik9c+O/SnpYZJMbUOLCRlrsxnn/v
 xx0YGhthVVS5L+2HFXiJ+E0ZDZe2rgRxcE/vPe6bSAgIVaI7gQDKWcxwc2hiyRHjrJ
 omOwu3Zeww79+vv7L8bRgRRgsMsnxMaT/MYj4BtTmllEWVWmT4IP4Q0xYEzyRtaGRb
 QywvQhrNi7Qww36KtXcJXZg3/C3OpoV3JjFmLx7C5OB3qX6q6E64CdVfsiQ3s8lGRn
 dVdiT2uak84pA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=KtBSFMcs
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] i40e: Avoid unnecessary use
 of comma operator
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
Cc: intel-wired-lan@lists.osuosl.org, llvm@lists.linux.dev,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Bill Wendling <morbo@google.com>,
 Simon Horman <horms@kernel.org>, Justin Stitt <justinstitt@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gTW9uLCBEZWMgMTgsIDIwMjMgYXQgMDg6MzI6MjhBTSAtMDgwMCwgTmljayBEZXNhdWxuaWVy
cyB3cm90ZToKPiBPbiBTdW4sIERlYyAxNywgMjAyMyBhdCAxOjQ14oCvQU0gU2ltb24gSG9ybWFu
IDxob3Jtc0BrZXJuZWwub3JnPiB3cm90ZToKPiA+Cj4gPiBBbHRob3VnaCBpdCBkb2VzIG5vdCBz
ZWVtIHRvIGhhdmUgYW55IHVudG93YXJkIHNpZGUtZWZmZWN0cywKPiA+IHRoZSB1c2Ugb2YgJzsn
IHRvIHNlcGFyYXRlIHRvIGFzc2lnbm1lbnRzIHNlZW1zIG1vcmUgYXBwcm9wcmlhdGUgdGhhbiAn
LCcuCj4gPgo+ID4gRmxhZ2dlZCBieSBjbGFuZy0xNyAtV2NvbW1hCj4gCj4gWWlrZXMhIFRoaXMg
a2luZCBvZiBleGFtcGxlIGlzIHdoeSBJIGhhdGUgdGhlIGNvbW1hIG9wZXJhdG9yIQo+IAo+IFJl
dmlld2VkLWJ5OiBOaWNrIERlc2F1bG5pZXJzIDxuZGVzYXVsbmllcnNAZ29vZ2xlLmNvbT4KPiAK
PiAoSXMgLVdjb21tYSBlbmFibGVkIGJ5IC1XYWxsPykKCk5vIGFuZCBsYXN0IHRpbWUgdGhhdCBJ
IGxvb2tlZCBpbnRvIGVuYWJsaW5nIGl0LCB0aGVyZSB3ZXJlIGEgbG90IG9mCmluc3RhbmNlcyBp
biB0aGUga2VybmVsOgoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvMjAyMzA2MzAxOTI4MjUuR0Ey
NzQ1NTQ4QGRldi1hcmNoLnRoZWxpby0zOTkwWC8KCkl0IGlzIHN0aWxsIHByb2JhYmx5IHdvcnRo
IHB1cnN1aW5nIGF0IHNvbWUgcG9pbnQgYnV0IHRoYXQgaXMgYSBsb3Qgb2YKaW5zdGFuY2VzIHRv
IGNsZWFuIHVwIChhbG9uZyB3aXRoIHBvdGVudGlhbGx5IGhhdmluZyBhIGRlY2VudCBhbW91bnQg
b2YKcHVzaGJhY2sgZGVwZW5kaW5nIG9uIHRoZSBjaGFuZ2VzIG5lY2Vzc2FyeSB0byBlbGltaW5h
dGUgYWxsIGluc3RhbmNlcykuCgo+IElzIHRoZXJlIGEgZml4ZXMgdGFnIHdlIGNhbiBhZGQ/Cj4g
Cj4gPgo+ID4gTm8gZnVuY3Rpb25hbCBjaGFuZ2UgaW50ZW5kZWQuCj4gPiBDb21waWxlIHRlc3Rl
ZCBvbmx5Lgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IFNpbW9uIEhvcm1hbiA8aG9ybXNAa2VybmVs
Lm9yZz4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9l
dGh0b29sLmMgfCAyICstCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRl
bGV0aW9uKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2k0MGUvaTQwZV9ldGh0b29sLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0
MGVfZXRodG9vbC5jCj4gPiBpbmRleCA4MTJkMDQ3NDdiZDAuLmY1NDJmMjY3MTk1NyAxMDA2NDQK
PiA+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9ldGh0b29sLmMK
PiA+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9ldGh0b29sLmMK
PiA+IEBAIC0xOTE3LDcgKzE5MTcsNyBAQCBpbnQgaTQwZV9nZXRfZWVwcm9tKHN0cnVjdCBuZXRf
ZGV2aWNlICpuZXRkZXYsCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICBsZW4gPSBlZXByb20t
PmxlbiAtIChJNDBFX05WTV9TRUNUT1JfU0laRSAqIGkpOwo+ID4gICAgICAgICAgICAgICAgICAg
ICAgICAgbGFzdCA9IHRydWU7Cj4gPiAgICAgICAgICAgICAgICAgfQo+ID4gLSAgICAgICAgICAg
ICAgIG9mZnNldCA9IGVlcHJvbS0+b2Zmc2V0ICsgKEk0MEVfTlZNX1NFQ1RPUl9TSVpFICogaSks
Cj4gPiArICAgICAgICAgICAgICAgb2Zmc2V0ID0gZWVwcm9tLT5vZmZzZXQgKyAoSTQwRV9OVk1f
U0VDVE9SX1NJWkUgKiBpKTsKPiA+ICAgICAgICAgICAgICAgICByZXRfdmFsID0gaTQwZV9hcV9y
ZWFkX252bShodywgMHgwLCBvZmZzZXQsIGxlbiwKPiA+ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgKHU4ICopZWVwcm9tX2J1ZmYgKyAoSTQwRV9OVk1fU0VDVE9SX1NJWkUgKiBpKSwK
PiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbGFzdCwgTlVMTCk7Cj4gPgo+ID4K
PiAKPiAKPiAtLSAKPiBUaGFua3MsCj4gfk5pY2sgRGVzYXVsbmllcnMKPiAKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxp
bmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
