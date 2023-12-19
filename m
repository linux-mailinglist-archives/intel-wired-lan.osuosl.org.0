Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70ADE818517
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Dec 2023 11:12:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 33ED643550;
	Tue, 19 Dec 2023 10:12:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 33ED643550
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702980739;
	bh=gbtCNVXuiAd8jAN1YOuhnghekyUZrsms1bb69U8O5OE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mTalAoj12Lk5A2S+vuYPgHAws2ZvMZ/q8VOeypVEo1RDkWIwuFSEqz6n7JpubcNcp
	 4Av4ZA/rMO/ebooNgJVcIBti9iS3utMRt2YEdJ1Tfl//4JGRaj6VSP6VuVHgoy2Hsw
	 xOApCqlXFpjU49JDEP6JO9kZHa38bFW1issBd4vCRH4RNWVIoCvn3IT7Z22Y7HCyAq
	 MjAknMEIU2enA9X0jMXkPW5FRKUgXf7Mp73esvWa/C8lQ2KeK9euYaA9GD+hdT3bvL
	 MbcbbHwvFnmDzI0YjQNbToaeFj3bKEtmCs+FYY56G/5zhkMTvjz1IZjuAJ7dmyigx5
	 31TcTIJVNRnvQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Khe3Pl4A0iAk; Tue, 19 Dec 2023 10:12:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 91E13400B8;
	Tue, 19 Dec 2023 10:12:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 91E13400B8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 00A7D1BF2FC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Dec 2023 10:12:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D91CC82948
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Dec 2023 10:12:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D91CC82948
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zhvnwWDHbl_j for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Dec 2023 10:12:11 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D99C182865
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Dec 2023 10:12:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D99C182865
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id D625DB81615;
 Tue, 19 Dec 2023 10:12:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C4A0C433C9;
 Tue, 19 Dec 2023 10:12:04 +0000 (UTC)
Date: Tue, 19 Dec 2023 10:12:02 +0000
From: Simon Horman <horms@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Message-ID: <20231219101202.GE811967@kernel.org>
References: <20231217-i40e-comma-v1-1-85c075eff237@kernel.org>
 <CAKwvOd=ZKV6KsgX0UxBX4Y89YEgpry00jG6K6qSjodwY3DLAzA@mail.gmail.com>
 <20231218190055.GB2863043@dev-arch.thelio-3990X>
 <CAKwvOd=LjM08FyiXu-Qn7JmtM0oBD7rf4qkr=oo3QKeP+njRUw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKwvOd=LjM08FyiXu-Qn7JmtM0oBD7rf4qkr=oo3QKeP+njRUw@mail.gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1702980727;
 bh=BZrEszKUcvt1KXwaUy68ZV34ShH2PIpSZfr+gPHVJ5w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PFDC4x1bzF7SYYERBSQ1gwN/ak71N/qbFUgU6UiGwaWGVWvji8GH0uQsrS+Otgu2F
 JwO6pxATBL/T+GsWdMp/Fusw0op/jcG3XXcNglyDMnPf98wVCoGMeoDX+UKZTXHmQ2
 RWMPK07weHFS6BinjNo8kyLSjLCI066r5HtBRM8R0Erc0l4VJxr2Jdp0r8u1NRXpYj
 yQzUyDxaI7eWSgqjjxZLD9GTNPCvMtjptnHG5UUcOxMocUHDvsQlAaxA+7XnPppa16
 Piwq7FMhKXrdCI7KBPlYi0A5tJ+wrLMHmNIsOu0F5N+D2U6Gha2ouGkaxXa/Mzh7Ev
 hvb6x71W/9X1w==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=PFDC4x1b
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

T24gTW9uLCBEZWMgMTgsIDIwMjMgYXQgMTE6MDg6MzhBTSAtMDgwMCwgTmljayBEZXNhdWxuaWVy
cyB3cm90ZToKPiBPbiBNb24sIERlYyAxOCwgMjAyMyBhdCAxMTowMOKAr0FNIE5hdGhhbiBDaGFu
Y2VsbG9yIDxuYXRoYW5Aa2VybmVsLm9yZz4gd3JvdGU6Cj4gPgo+ID4gT24gTW9uLCBEZWMgMTgs
IDIwMjMgYXQgMDg6MzI6MjhBTSAtMDgwMCwgTmljayBEZXNhdWxuaWVycyB3cm90ZToKPiA+ID4g
KElzIC1XY29tbWEgZW5hYmxlZCBieSAtV2FsbD8pCj4gPgo+ID4gTm8gYW5kIGxhc3QgdGltZSB0
aGF0IEkgbG9va2VkIGludG8gZW5hYmxpbmcgaXQsIHRoZXJlIHdlcmUgYSBsb3Qgb2YKPiA+IGlu
c3RhbmNlcyBpbiB0aGUga2VybmVsOgo+ID4KPiA+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnLzIw
MjMwNjMwMTkyODI1LkdBMjc0NTU0OEBkZXYtYXJjaC50aGVsaW8tMzk5MFgvCj4gPgo+ID4gSXQg
aXMgc3RpbGwgcHJvYmFibHkgd29ydGggcHVyc3VpbmcgYXQgc29tZSBwb2ludCBidXQgdGhhdCBp
cyBhIGxvdCBvZgo+ID4gaW5zdGFuY2VzIHRvIGNsZWFuIHVwIChhbG9uZyB3aXRoIHBvdGVudGlh
bGx5IGhhdmluZyBhIGRlY2VudCBhbW91bnQgb2YKPiA+IHB1c2hiYWNrIGRlcGVuZGluZyBvbiB0
aGUgY2hhbmdlcyBuZWNlc3NhcnkgdG8gZWxpbWluYXRlIGFsbCBpbnN0YW5jZXMpLgo+IAo+IEZp
bGVkIHRoaXMgdG9kbzoKPiBodHRwczovL2dpdGh1Yi5jb20vQ2xhbmdCdWlsdExpbnV4L2xpbnV4
L2lzc3Vlcy8xOTY4Cj4gSSdkIGJlIGhhcHB5IGlmIFNpbW9uIGtlZXBzIHBva2luZyBhdCBnZXR0
aW5nIHRoYXQgd2FybmluZyBlbmFibGVkLgoKRldJSVcsIHNpbmNlIHRoZSBkaXNjdXNzaW9uIGNp
dGVkIGFib3ZlIEkgaGF2ZSBiZWVuIGtlZXBpbmcgYW4gZXllIG9uCi1XY29tbWEsIG1vc3RseSB3
cnQgdG8gcGF0Y2hlcyBmb3IgTmV0d29ya2luZyBjb2RlLgoKTXkgc3ViamVjdGl2ZSBmZWVsaW5n
cyBvbiB0aGlzIGFyZToKCiogRmV3IG5ldyBpbnN0YW5jZXMgc2VlbSB0byBiZSBhZGRlZAoqIFRo
ZXJlIGFyZSBzb21lLCB0aG91Z2ggSSB3b3VsZG4ndCBzYXkgYSBsb3QsIG9mIGV4aXN0aW5nCiAg
aW5zdGFuY2VzIGluIGZpbGVzIHRoYXQgYXJlIHRoYXQgaXMgYmVpbmcgdXBkYXRlZC4KKiBJIGRv
bid0IHJlY2FsbCBhbnkgb2YgdGhlIGluc3RhbmNlcywgbmV3IG9yIG9sZCwgYmVpbmcgYnVncy4K
ICBUaG91Z2ggcGVyaGFwcyBhIHZlcnkgc21hbGwgbnVtYmVyIHdlcmUuCgpTbyB3aGlsZSBJJ20g
YWxsIGZvciBtb3JlIGNoZWNrcy4KQW5kIEknbSBhbGwgZm9yIG9ubHkgdXNpbmcgdGhlIGNvbW1h
IHdoZXJlIGl0IGlzIG5lY2Vzc2FyeQooSSBzdXNwZWN0IHRoYXQgb2Z0ZW4gaXQgaXMgYSB0eXBv
KS4KSSBkbyBub3QgZ2V0IHRoZSBmZWVsaW5nIHRoYXQgd2UgYXJlIHNpdHRpbmcgb24gYSB0cm92
ZSBvZiBuYXN0eSBidWdzLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vv
c2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdp
cmVkLWxhbgo=
