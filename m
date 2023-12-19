Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 226868184FB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Dec 2023 11:05:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BE30043551;
	Tue, 19 Dec 2023 10:05:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BE30043551
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702980336;
	bh=7ACqDrM2xdSg3pHHSiHd3nYFF0/vcN8J+k+n7i/q2z8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gYeMWeTR1P1ygPjGhTRaPLDfnFnydVQReTcjZFK6Doxz32pAD1rua0ujIFkDSnxBY
	 uqd4TCZUDC0LyZA7+8oCWJbgvzHIik1JUtGp3HlvBbefCgoKXnvUxuy3FLNXDp+Izp
	 vL8ij+etVEkgXtKLLRwBs50eAnEStW6GgJxMN8guDtF9xtCo53XdX0o8M7KLo1EGWU
	 eVmidrY4ATTk83Gnn/aN8YVkA/YWM5QiN8Omf9PGZwuH6xHabw9urLoY1y2bP9lRMN
	 YheNM+F+2F+skemDjFs/8SuqX9vteBj5yS6Jg/tRrrKjU8XRLWlH++ApgymjOGNBLo
	 bGQp6TiGSuLNQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NOkKSaRlf53r; Tue, 19 Dec 2023 10:05:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 375B643527;
	Tue, 19 Dec 2023 10:05:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 375B643527
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C59C21BF2FC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Dec 2023 10:05:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9C11F6002E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Dec 2023 10:05:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9C11F6002E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bUuGLTXzJuho for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Dec 2023 10:05:30 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D66E760008
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Dec 2023 10:05:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D66E760008
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 9A21E60F7F;
 Tue, 19 Dec 2023 10:05:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB051C433C7;
 Tue, 19 Dec 2023 10:05:25 +0000 (UTC)
Date: Tue, 19 Dec 2023 10:05:23 +0000
From: Simon Horman <horms@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Message-ID: <20231219100523.GD811967@kernel.org>
References: <20231217-i40e-comma-v1-1-85c075eff237@kernel.org>
 <CAKwvOd=ZKV6KsgX0UxBX4Y89YEgpry00jG6K6qSjodwY3DLAzA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKwvOd=ZKV6KsgX0UxBX4Y89YEgpry00jG6K6qSjodwY3DLAzA@mail.gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1702980328;
 bh=BhpwEVgkX8t5FMZrEaOtiZBqFEAb7r/etFz6GvlMCVg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Bf0ZkjDFVCYcf+YVApvlzzFraAlgWb5am3k0eE/qi69tprIMIzpFuIHZ1FfIa6XQv
 MBBV4AlpXXPUBc28+uqe+BQRzoside80HYSw3iw0sa0dT51WR1AVlniQdNcWT2C2Id
 QWn8GnQHG9t0lHLvYRyRO5ewL0Sgrrgcnfp9zWRT2bvOlo2vjs70+8ynLy7UlGdwzk
 xhZt0+17AazmZ2IaWUX4XkXlJI6e4TRdnrRbZ87nliT/wBZtns2jTkg2L2E0rGYMvO
 xDSCwTmmWjqoMWKfxm2yFvMpx9pLmq6UnwMdDXMpypOF+TQTnmqDufdCxhrBGgTYpw
 rVAiC7czOc4IQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Bf0ZkjDF
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
 Nathan Chancellor <nathan@kernel.org>, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>,
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
PiAoSXMgLVdjb21tYSBlbmFibGVkIGJ5IC1XYWxsPykKPiAKPiBJcyB0aGVyZSBhIGZpeGVzIHRh
ZyB3ZSBjYW4gYWRkPwoKSGkgTmljaywKCkkgZG9uJ3QgYmVsaWV2ZSB0aGlzIHJlc29sdmVzIGEg
dXNlci12aXNpYmxlIGJ1ZywKc28gZm9yIE5ldHdvcmtpbmcgY29kZSBhIGZpeGVzIHRhZyBpc24n
dCBhcHByb3ByaWF0ZS4KCj4gCj4gPgo+ID4gTm8gZnVuY3Rpb25hbCBjaGFuZ2UgaW50ZW5kZWQu
Cj4gPiBDb21waWxlIHRlc3RlZCBvbmx5Lgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IFNpbW9uIEhv
cm1hbiA8aG9ybXNAa2VybmVsLm9yZz4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2k0MGUvaTQwZV9ldGh0b29sLmMgfCAyICstCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEg
aW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9ldGh0b29sLmMgYi9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pNDBlL2k0MGVfZXRodG9vbC5jCj4gPiBpbmRleCA4MTJkMDQ3NDdiZDAuLmY1
NDJmMjY3MTk1NyAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0
MGUvaTQwZV9ldGh0b29sLmMKPiA+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0
MGUvaTQwZV9ldGh0b29sLmMKPiA+IEBAIC0xOTE3LDcgKzE5MTcsNyBAQCBpbnQgaTQwZV9nZXRf
ZWVwcm9tKHN0cnVjdCBuZXRfZGV2aWNlICpuZXRkZXYsCj4gPiAgICAgICAgICAgICAgICAgICAg
ICAgICBsZW4gPSBlZXByb20tPmxlbiAtIChJNDBFX05WTV9TRUNUT1JfU0laRSAqIGkpOwo+ID4g
ICAgICAgICAgICAgICAgICAgICAgICAgbGFzdCA9IHRydWU7Cj4gPiAgICAgICAgICAgICAgICAg
fQo+ID4gLSAgICAgICAgICAgICAgIG9mZnNldCA9IGVlcHJvbS0+b2Zmc2V0ICsgKEk0MEVfTlZN
X1NFQ1RPUl9TSVpFICogaSksCj4gPiArICAgICAgICAgICAgICAgb2Zmc2V0ID0gZWVwcm9tLT5v
ZmZzZXQgKyAoSTQwRV9OVk1fU0VDVE9SX1NJWkUgKiBpKTsKPiA+ICAgICAgICAgICAgICAgICBy
ZXRfdmFsID0gaTQwZV9hcV9yZWFkX252bShodywgMHgwLCBvZmZzZXQsIGxlbiwKPiA+ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgKHU4ICopZWVwcm9tX2J1ZmYgKyAoSTQwRV9OVk1f
U0VDVE9SX1NJWkUgKiBpKSwKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbGFz
dCwgTlVMTCk7Cj4gPgo+ID4KPiAKPiAKPiAtLSAKPiBUaGFua3MsCj4gfk5pY2sgRGVzYXVsbmll
cnMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
d2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczov
L2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
