Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EC80E673564
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jan 2023 11:22:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 675E9822BC;
	Thu, 19 Jan 2023 10:22:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 675E9822BC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674123748;
	bh=s8g9B+zHSe9b6n5ETZxBOmwcMsCT2Rxw/NC6JZY4BAM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Hvv96pK64YCp96/VMwpo7FN304c7LAigIfeM2McretdYaseMdSVEloK3hkVJW0mn4
	 tyxpNUkXcBpTqSLUMTsvAfzw0Ff407/Kh5GTiH1Ynfi8+F0naQbVjWhd6RPzN1l27K
	 zwMFxYP1pydKowsMwIb5/LFqfAbI4BXQjEpY1z81eZcCtl5D53oY1JK6vVp0xZ4NZS
	 86F2Xw+wjUwyRjBSg1MJ7r3CwDrV6rRekf270UB2m1rCAA/oy6iCAG/f/NjDY5tP4D
	 8mlGuUcB8ZjCYzH/0yvEcPwmiyZdYrJhYpsbMaRF8FdICgvFLSF7yyNTKTh/ImTqnO
	 DLc16/p9KKsPw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qsqrB8l5Px4v; Thu, 19 Jan 2023 10:22:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5699982297;
	Thu, 19 Jan 2023 10:22:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5699982297
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C861E1BF400
 for <intel-wired-lan@osuosl.org>; Thu, 19 Jan 2023 10:22:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AF21882297
 for <intel-wired-lan@osuosl.org>; Thu, 19 Jan 2023 10:22:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AF21882297
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z6f4E8pU_Fvq for <intel-wired-lan@osuosl.org>;
 Thu, 19 Jan 2023 10:22:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 913C582131
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 913C582131
 for <intel-wired-lan@osuosl.org>; Thu, 19 Jan 2023 10:22:19 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5ae989.dynamic.kabel-deutschland.de
 [95.90.233.137])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id A386F60027FD0;
 Thu, 19 Jan 2023 11:22:17 +0100 (CET)
Message-ID: <bef9f965-45d5-eaca-a889-a941fc8a00c6@molgen.mpg.de>
Date: Thu, 19 Jan 2023 11:22:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
To: Bartek Kois <bartek.kois@gmail.com>
References: <d1530cba-1a72-cae8-6a04-ed8ec0f82e6e@gmail.com>
 <652bf236-d97e-832c-e0f3-24927a46d7ad@molgen.mpg.de>
In-Reply-To: <652bf236-d97e-832c-e0f3-24927a46d7ad@molgen.mpg.de>
Subject: Re: [Intel-wired-lan] Supermicro AOC-STGN-I1S (Intel 82599EN based
 10G adapter) - poor network performance after moving to Debian 11.5
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

RGVhciBCYXJ0ZWssCgoKQW0gMTkuMDEuMjMgdW0gMTE6MTcgc2NocmllYiBQYXVsIE1lbnplbDoK
PiAjcmVnemJvdCBeaW50cm9kdWNlZDogNC45Ljg4Li41LjEwLjE0OQoKPiBBbSAxNC4wMS4yMyB1
bSAxMToyMyBzY2hyaWViIEJhcnRlayBLb2lzOgo+IAo+PiBBZnRlciBtb3ZpbmcgZnJvbSBEZWJp
YW4gOS43IHRvIDExLjUgYXMgc29vbiBhcyBJIHBlcmZvcm0gImlwIGxpbmsgc2V0IAo+PiBlbnAx
czAgdXAiIGZvciBteSAxMEcgYWRhcHRlciAoQU9DLVNUR04tSTFTIC0gSW50ZWwgODI1OTlFTiBi
YXNlZCAxMEcgCj4+IGFkYXB0ZXIpIEkgYW0gZXhwZXJpZW5jaW5nIGhpZ2ggY3B1IGxvYWQgKGV2
ZW4gaWYgbm8gdHJhZmZpYyBpcyAKPj4gcGFzc2luZyB0aHJvdWdoIHRoZSBhZGFwdGVyKSBhbmQg
bmV0d29yayBwZXJmb3JtYW5jZSBpcyBsb3cgKHdoZW4gCj4+IG5ldHdvcmsgaXMgY29ubmVjdGVk
KS4KPiAKPiBIb3cgZG8geW91IHRlc3QgdGhlIG5ldHdvcmsgcGVyZm9ybWFuY2U/IFBsZWFzZSBn
aXZlIGV4YWN0IG51bWJlcnMgZm9yIAo+IGNvbXBhcmlzb24uCj4gCj4+IFRoZSBjcHUgbG9hZCBp
cyBvc2NpbGxhdGluZyBiZXR3ZWVuIDAuMSBhbmQgMC4zIG9uIHZhbmlsbGEgc3lzdGVtCj4+IHdp
dGggbm8gbmV0d29yayBhdHRhY2hlZC4gVGhlIHByb2JsZW0gY2FuIGJlIG9ic2VydmVkIG9uIHRo
ZSBmb2xsb3dpbmcgCj4+IHBsYXRmb3JtczogU3VwZXJtaWNybyBYOVNDTCAoSW50ZWwgQzIwMiBQ
Q0gpIGFuZAo+PiBTdXBlcm1pY3JvIFgxMFNMTCstRiAoSW50ZWwgQzIyMiBFeHByZXNzIFBDSCks
IGJ1dCBmb3IgdGhlIFN1cGVybWljcm8KPj4gWDExU1NMLUYgKEludGVswq4gQzIzMiBjaGlwc2V0
KSBldmVyeXRoaW5nIGlzIHdvcmtpbmcgd2VsbC4KPj4KPj4gVGVzdGVkIGVudmlyb25tZW50czoK
Pj4gRGViaWFuIDkuNyAtIExpbnV4IDQuOS4wLTYtYW1kNjQgIzEgU01QIERlYmlhbiA0LjkuODgt
MStkZWI5dTEgCj4+ICgyMDE4LTA1LTA3KSB4ODZfNjQgR05VL0xpbnV4IFthbGwgcGxhdGZvcm1z
IHdvcmtpbmcgd2VsbCB3aXRoIG5vIAo+PiBwcm9ibGVtczogU3VwZXJtaWNybyBYOVNDTCAoSW50
ZWwgQzIwMiBQQ0gpLCBTdXBlcm1pY3JvIFgxMFNMTCstRiAKPj4gKEludGVsIEMyMjIgRXhwcmVz
cyBQQ0gpLCBTdXBlcm1pY3JvIFgxMVNTTC1GIChJbnRlbMKuIEMyMzIgY2hpcHNldCldCj4gCj4+
IERlYmlhbiAxMS41IC0gTGludXggNS4xMC4wLTE5LWFtZDY0ICMxIFNNUCBEZWJpYW4gNS4xMC4x
NDktMiAKPj4gKDIwMjItMTAtMjEpIHg4Nl82NCBHTlUvTGludXjCoCBbb2xkZXIgcGxhdGZvcm1z
OiBTdXBlcm1pY3JvIFg5U0NMIAo+PiAoSW50ZWwgQzIwMiBQQ0gpLCBTdXBlcm1pY3JvIFgxMFNM
TCstRiAoSW50ZWwgQzIyMiBFeHByZXNzIFBDSCkgYmVoYXZlIAo+PiBwcm9ibGVtYXRpYyBhcyBk
ZXNjcmliZWQgYWJvdmUgfCBuZXdlciBwbGF0Zm9ybTogU3VwZXJtaWNybyBYMTFTU0wtRiAKPj4g
KEludGVswq4gQzIzMiBjaGlwc2V0KSB3b3JraW5nIHdlbGwgd2l0aCBubyBwcm9ibGVtc10KPiAK
PiBNYXliZSBjcmVhdGUgYSBidWcgYXQgdGhlIExpbnV4IGtlcm5lbCBidWcgdHJhY2tlciBbMV0s
IHdoZXJlIHlvdSBjYW4gCj4gYXR0YWNoIGFsbCB0aGUgbG9ncyAoYGRtZXNnYCwgYGxzcGNpIC1u
bmsgLXMg4oCmYCwg4oCmKS4KPiAKPj4gU28gZmFyIHRvIHNvbHZlIHRoZSBwcm9ibGVtIEkgd2Fz
IHRyeWluZyB0byB1cGdyYWRlIHN5c3RlbSB0byB0aGUgCj4+IG5ld2VzdCBzdGFibGUgdmVyc2lv
biwgdXBncmFkZSBrZXJuZWwgdG8gdmVyc2lvbiA2LngsIHVwZ3JhZGUgaXhnYmUgCj4+IGRyaXZl
ciB0byB0aGUgbmV3ZXN0IHZlcnNpb24gYnV0IHdpdGggbm8gbHVjay4KPiAKPiBUaGFuayB5b3Ug
Zm9yIGNoZWNraW5nIHRoYXQuIFRvbyBiYWQgaXTigJlzIHN0aWxsIHByZXNlbnQuIFRvIHJ1bGUg
b3V0IAo+IHNvbWUgdXNlciBzcGFjZSBwcm9ibGVtLCBjb3VsZCB5b3UgdGVzdCBEZWJpYW4gOS43
IHdpdGggYSBzdGFibGUgTGludXggCj4gcmVsZWFzZSwgY3VycmVudGx5IDYuMS43Pwo+IAo+IFdo
YXQgZG9lcyBgc3VkbyBwZXJmIHRvcCAtLXNvcnQgY29tbSxkc29gIHNob3csIHdoZXJlIHRoZSB0
aW1lIGlzIHNwZW50Pwo+IAo+PiBTdXBlcm1pY3JvIHN1cHBvcnQgc3VnZ2VzdGVkIGFzIGZvbGxv
d3M6Cj4+IGl0IG1pZ2h0IGJlIGtlcm5lbCByZWxhdGVkIGRlYmlhbiAxMS41IGhhcyBrZXJuZWwg
NS4xMCB3aGljaCBpcyBhIAo+PiByZWNlbnQga2VybmVsIGl0IG1pZ2h0IG5vdCBwcm9wZXJseSBz
dXBwb3J0IHRoZSBjaGlwc2V0cyBmb3IgWDkgCj4+IHRoZXJlZm9yZSBpIHN1Z2dlc3QgdG8gdXNl
IFJIRUwgb3IgQ2VudE9TIGFzIHRoZXkgdXNlIG11Y2ggb2xkZXIgCj4+IGtlcm5lbCB2ZXJzaW9u
cy4gSSBleHBlY3QgdGhhdCB3aXRoIHVidW50dSAyMC4wNCB5b3Ugc2VlIHRoZSBzYW1lIAo+PiBw
cm9ibGVtIGl0IHVzZXMga2VybmVsIDUuNAo+IAo+IFRlc3RpbmcgYW5vdGhlciBHTlUvTGludXgg
ZGlzdHJpYnV0aW9uIGZvciBhbm90aGVyIGRhdGEgcG9pbnQsIG1pZ2h0IGJlIAo+IGEgZ29vZCBp
ZGVhLgo+IAo+IEFzIG5vYm9keSBoYXMgcmVzcG9uZGVkIHlldCwgYmlzZWN0aW5nIHRoZSBpc3N1
ZSBpcyBwcm9iYWJseSB0aGUgZmFzdGVzdCAKPiB3YXkgdG8gZ2V0IHRvIHRoZSBib3R0b20gb2Yg
dGhpcy4gTHVja2lseSB0aGUgcHJvYmxlbSBzZWVtcyByZXByb2R1Y2libGUgCj4gYW5kIHlvdSBz
ZWVtIHRvIGJlIGFibGUgdG8gYnVpbGQgYSBMaW51eCBrZXJuZWwgeW91cnNlbGYsIHNvIHRoYXQg
c2hvdWxkIAo+IHdvcmsuIChGb3IgdGVzdGluZyBwdXJwb3NlcyB5b3UgY291bGQgYWxzbyB0ZXN0
IHdpdGggVWJ1bnR1LCBhcyB0aGV5IAo+IHByb3ZpZGUgTGludXgga2VybmVsIGJ1aWxkcyBmb3Ig
KGFsbW9zdCkgYWxsIHJlbGVhc2VzIGluIHRoZWlyIExpbnV4IAo+IGtlcm5lbCBtYWlubGluZSBQ
UEEgWzJdLikKCllvdSBjb3VsZCBhbHNvIHRyeSB0byBkbyB0aGF0IGluIGEgdmlydHVhbCBtYWNo
aW5lIGJ5IHBhc3NpbmcgdGhyb3VnaCAKdGhlIG5ldHdvcmsgZGV2aWNlIHRvIHRoZSBWTS4gSWYg
dGhhdCByZXByb2R1Y2VzIHRoZSBpc3N1ZSwgdGhhdOKAmXMgcXVpdGUgCmEgZmFzdCBzZXR1cCBm
b3IgYmlzZWN0aW5nIGEgcmVncmVzc2lvbiwgYXMgc3RhcnQgdGltZXMgYXJlIHJlYWxseSBmYXN0
LiAKKEZvciBleGFtcGxlLCB5b3UgY2FuIHBhc3MgdGhlIExpbnV4IGtlcm5lbCBkaXJlY3RseSB0
byBhIFFFTVUgVk0gd2l0aCAKdGhlIGAta2VybmVsYCBzd2l0Y2guKQoKCktpbmQgcmVnYXJkcywK
ClBhdWwKCgo+IFsxXTogaHR0cHM6Ly9idWd6aWxsYS5rZXJuZWwub3JnLwo+IFsyXTogaHR0cHM6
Ly9rZXJuZWwudWJ1bnR1LmNvbS9+a2VybmVsLXBwYS9tYWlubGluZS8KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcg
bGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
