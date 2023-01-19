Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 00E3A673551
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jan 2023 11:17:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 97FE9610E5;
	Thu, 19 Jan 2023 10:17:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 97FE9610E5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674123476;
	bh=7M+m2AcX0jcd6VCSwDipOK1omVTL0bRemxtnKTIOJTM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wJDzB88PzpMpC/+WzcI8aFBEEOQ8nBpjWNrCrggSsEFxnVqmq4HTJiqhAjE6RmmTi
	 Ozw55ejMTXUfbnDgGi8/xDUhtL6ocZd2CIxwSh97OGRwGbw23eUwlX5nlZauhuWzUa
	 RgCRVqlN3soUaLJRr8636zUCJAWmp1W/E5l4MrTdMfZnMvxzvAoMmzZRZ+YFOf5XZz
	 RADHKQk7TtVr8CaxGidaX+99HoNtxcfmu9BkeBhJyCIWkNBY5/oZo7b1qKDLrhuf23
	 4VWy64B/zsXlnlRDSk/QNfXQERr1SARAQqzHqPj1JaWs9SZDRkdVlPiLyUTqhyY5jQ
	 IugDd/Zt1K/YA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jqK9BEOx63IE; Thu, 19 Jan 2023 10:17:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6F7D960C20;
	Thu, 19 Jan 2023 10:17:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6F7D960C20
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 751431BF400
 for <intel-wired-lan@osuosl.org>; Thu, 19 Jan 2023 10:17:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EDEB340C5E
 for <intel-wired-lan@osuosl.org>; Thu, 19 Jan 2023 10:17:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EDEB340C5E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EiX-BEQ_oXhu for <intel-wired-lan@osuosl.org>;
 Thu, 19 Jan 2023 10:17:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D055B40377
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D055B40377
 for <intel-wired-lan@osuosl.org>; Thu, 19 Jan 2023 10:17:45 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5ae989.dynamic.kabel-deutschland.de
 [95.90.233.137])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 2795961CC457B;
 Thu, 19 Jan 2023 11:17:43 +0100 (CET)
Message-ID: <652bf236-d97e-832c-e0f3-24927a46d7ad@molgen.mpg.de>
Date: Thu, 19 Jan 2023 11:17:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: Bartek Kois <bartek.kois@gmail.com>
References: <d1530cba-1a72-cae8-6a04-ed8ec0f82e6e@gmail.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <d1530cba-1a72-cae8-6a04-ed8ec0f82e6e@gmail.com>
Subject: Re: [Intel-wired-lan] Supermicro AOC-STGN-I1S (Intel 82599EN based
 10G adapter) - poor network perfomance after moving to Debian 11.5
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
Cc: intel-wired-lan@osuosl.org, regressions@lists.linux.dev
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CiNyZWd6Ym90IF5pbnRyb2R1Y2VkOiA0LjkuODguLjUuMTAuMTQ5CgpEZWFyIEJhcnRlaywKCgpB
bSAxNC4wMS4yMyB1bSAxMToyMyBzY2hyaWViIEJhcnRlayBLb2lzOgoKPiBBZnRlciBtb3Zpbmcg
ZnJvbSBEZWJpYW4gOS43IHRvIDExLjUgYXMgc29vbiBhcyBJIHBlcmZvcm0gImlwIGxpbmsgc2V0
IAo+IGVucDFzMCB1cCIgZm9yIG15IDEwRyBhZGFwdGVyIChBT0MtU1RHTi1JMVMgLSBJbnRlbCA4
MjU5OUVOIGJhc2VkIDEwRyAKPiBhZGFwdGVyKSBJIGFtIGV4cGVyaWVuY2luZyBoaWdoIGNwdSBs
b2FkIChldmVuIGlmIG5vIHRyYWZmaWMgaXMgcGFzc2luZyAKPiB0aHJvdWdoIHRoZSBhZGFwdGVy
KSBhbmQgbmV0d29yayBwZXJmb3JtYW5jZSBpcyBsb3cgKHdoZW4gbmV0d29yayBpcyAKPiBjb25u
ZWN0ZWQpLgoKSG93IGRvIHlvdSB0ZXN0IHRoZSBuZXR3b3JrIHBlcmZvcm1hbmNlPyBQbGVhc2Ug
Z2l2ZSBleGFjdCBudW1iZXJzIGZvciAKY29tcGFyaXNvbi4KCj4gVGhlIGNwdSBsb2FkIGlzIG9z
Y2lsbGF0aW5nIGJldHdlZW4gMC4xIGFuZCAwLjMgb24gdmFuaWxsYSBzeXN0ZW0KPiB3aXRoIG5v
IG5ldHdvcmsgYXR0YWNoZWQuIFRoZSBwcm9ibGVtIGNhbiBiZSBvYnNlcnZlZCBvbiB0aGUgCj4g
Zm9sbG93aW5nIHBsYXRmb3JtczogU3VwZXJtaWNybyBYOVNDTCAoSW50ZWwgQzIwMiBQQ0gpIGFu
ZAo+IFN1cGVybWljcm8gWDEwU0xMKy1GIChJbnRlbCBDMjIyIEV4cHJlc3MgUENIKSwgYnV0IGZv
ciB0aGUgU3VwZXJtaWNybwo+IFgxMVNTTC1GIChJbnRlbMKuIEMyMzIgY2hpcHNldCkgZXZlcnl0
aGluZyBpcyB3b3JraW5nIHdlbGwuCj4gCj4gVGVzdGVkIGVudmlyb25tZW50czoKPiBEZWJpYW4g
OS43IC0gTGludXggNC45LjAtNi1hbWQ2NCAjMSBTTVAgRGViaWFuIDQuOS44OC0xK2RlYjl1MSAK
PiAoMjAxOC0wNS0wNykgeDg2XzY0IEdOVS9MaW51eCBbYWxsIHBsYXRmb3JtcyB3b3JraW5nIHdl
bGwgd2l0aCBubyAKPiBwcm9ibGVtczogU3VwZXJtaWNybyBYOVNDTCAoSW50ZWwgQzIwMiBQQ0gp
LCBTdXBlcm1pY3JvIFgxMFNMTCstRiAoSW50ZWwgCj4gQzIyMiBFeHByZXNzIFBDSCksIFN1cGVy
bWljcm8gWDExU1NMLUYgKEludGVswq4gQzIzMiBjaGlwc2V0KV0KCj4gRGViaWFuIDExLjUgLSBM
aW51eCA1LjEwLjAtMTktYW1kNjQgIzEgU01QIERlYmlhbiA1LjEwLjE0OS0yIAo+ICgyMDIyLTEw
LTIxKSB4ODZfNjQgR05VL0xpbnV4wqAgW29sZGVyIHBsYXRmb3JtczogU3VwZXJtaWNybyBYOVND
TCAoSW50ZWwgCj4gQzIwMiBQQ0gpLCBTdXBlcm1pY3JvIFgxMFNMTCstRiAoSW50ZWwgQzIyMiBF
eHByZXNzIFBDSCkgYmVoYXZlIAo+IHByb2JsZW1hdGljIGFzIGRlc2NyaWJlZCBhYm92ZSB8IG5l
d2VyIHBsYXRmb3JtOiBTdXBlcm1pY3JvIFgxMVNTTC1GIAo+IChJbnRlbMKuIEMyMzIgY2hpcHNl
dCkgd29ya2luZyB3ZWxsIHdpdGggbm8gcHJvYmxlbXNdCgpNYXliZSBjcmVhdGUgYSBidWcgYXQg
dGhlIExpbnV4IGtlcm5lbCBidWcgdHJhY2tlciBbMV0sIHdoZXJlIHlvdSBjYW4gCmF0dGFjaCBh
bGwgdGhlIGxvZ3MgKGBkbWVzZ2AsIGBsc3BjaSAtbm5rIC1zIOKApmAsIOKApikuCgo+IFNvIGZh
ciB0byBzb2x2ZSB0aGUgcHJvYmxlbSBJIHdhcyB0cnlpbmcgdG8gdXBncmFkZSBzeXN0ZW0gdG8g
dGhlIG5ld2VzdCAKPiBzdGFibGUgdmVyc2lvbiwgdXBncmFkZSBrZXJuZWwgdG8gdmVyc2lvbiA2
LngsIHVwZ3JhZGUgaXhnYmUgZHJpdmVyIHRvIAo+IHRoZSBuZXdlc3QgdmVyc2lvbiBidXQgd2l0
aCBubyBsdWNrLgoKVGhhbmsgeW91IGZvciBjaGVja2luZyB0aGF0LiBUb28gYmFkIGl04oCZcyBz
dGlsbCBwcmVzZW50LiBUbyBydWxlIG91dCAKc29tZSB1c2VyIHNwYWNlIHByb2JsZW0sIGNvdWxk
IHlvdSB0ZXN0IERlYmlhbiA5Ljcgd2l0aCBhIHN0YWJsZSBMaW51eCAKcmVsZWFzZSwgY3VycmVu
dGx5IDYuMS43PwoKV2hhdCBkb2VzIGBzdWRvIHBlcmYgdG9wIC0tc29ydCBjb21tLGRzb2Agc2hv
dywgd2hlcmUgdGhlIHRpbWUgaXMgc3BlbnQ/Cgo+IFN1cGVybWljcm8gc3VwcG9ydCBzdWdnZXN0
ZWQgYXMgZm9sbG93czoKPiBpdCBtaWdodCBiZSBrZXJuZWwgcmVsYXRlZCBkZWJpYW4gMTEuNSBo
YXMga2VybmVsIDUuMTAgd2hpY2ggaXMgYSAKPiByZWNlbnQga2VybmVsIGl0IG1pZ2h0IG5vdCBw
cm9wZXJseSBzdXBwb3J0IHRoZSBjaGlwc2V0cyBmb3IgWDkgCj4gdGhlcmVmb3JlIGkgc3VnZ2Vz
dCB0byB1c2UgUkhFTCBvciBDZW50T1MgYXMgdGhleSB1c2UgbXVjaCBvbGRlciBrZXJuZWwgCj4g
dmVyc2lvbnMuIEkgZXhwZWN0IHRoYXQgd2l0aCB1YnVudHUgMjAuMDQgeW91IHNlZSB0aGUgc2Ft
ZSBwcm9ibGVtIGl0IAo+IHVzZXMga2VybmVsIDUuNApUZXN0aW5nIGFub3RoZXIgR05VL0xpbnV4
IGRpc3RyaWJ1dGlvbiBmb3IgYW5vdGhlciBkYXRhIHBvaW50LCBtaWdodCBiZSAKYSBnb29kIGlk
ZWEuCgpBcyBub2JvZHkgaGFzIHJlc3BvbmRlZCB5ZXQsIGJpc2VjdGluZyB0aGUgaXNzdWUgaXMg
cHJvYmFibHkgdGhlIGZhc3Rlc3QgCndheSB0byBnZXQgdG8gdGhlIGJvdHRvbSBvZiB0aGlzLiBM
dWNraWx5IHRoZSBwcm9ibGVtIHNlZW1zIHJlcHJvZHVjaWJsZSAKYW5kIHlvdSBzZWVtIHRvIGJl
IGFibGUgdG8gYnVpbGQgYSBMaW51eCBrZXJuZWwgeW91cnNlbGYsIHNvIHRoYXQgc2hvdWxkIAp3
b3JrLiAoRm9yIHRlc3RpbmcgcHVycG9zZXMgeW91IGNvdWxkIGFsc28gdGVzdCB3aXRoIFVidW50
dSwgYXMgdGhleSAKcHJvdmlkZSBMaW51eCBrZXJuZWwgYnVpbGRzIGZvciAoYWxtb3N0KSBhbGwg
cmVsZWFzZXMgaW4gdGhlaXIgTGludXggCmtlcm5lbCBtYWlubGluZSBQUEEgWzJdLikKCgpLaW5k
IHJlZ2FyZHMsCgpQYXVsCgoKWzFdOiBodHRwczovL2J1Z3ppbGxhLmtlcm5lbC5vcmcvClsyXTog
aHR0cHM6Ly9rZXJuZWwudWJ1bnR1LmNvbS9+a2VybmVsLXBwYS9tYWlubGluZS8KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1h
aWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9z
bC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
