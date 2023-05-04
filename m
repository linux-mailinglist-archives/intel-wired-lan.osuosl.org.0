Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B73C66F6661
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 May 2023 09:57:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BCEE940586;
	Thu,  4 May 2023 07:57:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BCEE940586
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683187043;
	bh=ULHeNLexl8pvGPZ6J2LwZh3MaavPKsnZx8H/oko9LM4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=abLqPP3sszqIyaSJyIFtzTwtsQSPDP+mit8QywVk1bStyIyObuHRcp7YcenRxLIBG
	 gdn1wm7X1V+ftXbxbQKpeC9e6/HQDAjntoigNltNqinqWP0ypP19d69tCsDkWmpSeb
	 zs0gwmxbpoQ2jKTaoQtML+p/p9SnP7letQwlTO5ol+5kVO6kWXhepI5rH66nT1xR77
	 UJoVmdZejKuLOoleVlepkLi91DMru69ypYFke9HgUHHEQkr0/FqKSOWOx66BzV0gO0
	 SzdGERo19Km/SINu7RAgDaXWmP5uLkr8RYIQwQvw3zYzgwrrc/6/UgvXtG/CKqJ7//
	 3nLWgvSrcVsDQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GT3qH806PcG2; Thu,  4 May 2023 07:57:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 613B841DD8;
	Thu,  4 May 2023 07:57:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 613B841DD8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CC1E81BF3C8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 May 2023 07:57:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A15E683BA6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 May 2023 07:57:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A15E683BA6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xumSQNl-_l93 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 May 2023 07:57:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D684383F2F
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D684383F2F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 May 2023 07:57:15 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id CA23C631D3;
 Thu,  4 May 2023 07:57:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6FED7C433EF;
 Thu,  4 May 2023 07:57:13 +0000 (UTC)
Date: Thu, 4 May 2023 10:57:09 +0300
From: Leon Romanovsky <leon@kernel.org>
To: "Chittim, Madhu" <madhu.chittim@intel.com>
Message-ID: <20230504075709.GS525452@unreal>
References: <20230503031541.27855-1-dinghui@sangfor.com.cn>
 <20230503031541.27855-3-dinghui@sangfor.com.cn>
 <20230503082458.GH525452@unreal>
 <d2351c0f-0bfe-9422-f6f3-f0a0db58c729@sangfor.com.cn>
 <20230503162932.GN525452@unreal>
 <941ad3cc-22d6-3459-dfbc-36bc47a8a22a@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <941ad3cc-22d6-3459-dfbc-36bc47a8a22a@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1683187034;
 bh=BD+fImah7ymy/XPLoxovcxIHeqcAUrR7ThJMZGqhmUY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VMHxVyXZq7ct+QcEYLotgmRTbNBd5yimQJFWEju0LmqS+/NJuq7PfQIXnuCnqiGTp
 5sY39fh68shTCdPyuY90UGqnoBypLT/0OCdQsyv51DE4GdjfPD6LSDFTfcI5yDb5BM
 OVj6y8h2zCcYPXNjHQCMd8dEZlkVBQmeOr8lYAXW0B5iZLrmPVWgjsps1DepNFoFcr
 atcpa0nlFVIKoiiQEm06sVCvwO6xncK28bFXPWJVsEKJYkRxnyYHpN5AsxYzuKU6jb
 wrq9VM7Ule78SRjOnSNJGraAXSjbkfTTgOveVa1Pz4vW+J/jtUb5BAGHvPImEE0Vjd
 hAyiW2J4mZBpA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=VMHxVyXZ
Subject: Re: [Intel-wired-lan] [PATCH net v4 2/2] iavf: Fix out-of-bounds
 when setting channels on remove
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
Cc: pengdonglin@sangfor.com.cn, keescook@chromium.org, gregory.v.rose@intel.com,
 anthony.l.nguyen@intel.com, mitch.a.williams@intel.com,
 Ding Hui <dinghui@sangfor.com.cn>, jesse.brandeburg@intel.com,
 huangcun@sangfor.com.cn, linux-kernel@vger.kernel.org,
 grzegorzx.szczurek@intel.com, edumazet@google.com, michal.kubiak@intel.com,
 intel-wired-lan@lists.osuosl.org, jeffrey.t.kirsher@intel.com,
 simon.horman@corigine.com, kuba@kernel.org, netdev@vger.kernel.org,
 pabeni@redhat.com, davem@davemloft.net, linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkLCBNYXkgMDMsIDIwMjMgYXQgMTI6MjI6MDBQTSAtMDcwMCwgQ2hpdHRpbSwgTWFkaHUg
d3JvdGU6Cj4gCj4gCj4gT24gNS8zLzIwMjMgOToyOSBBTSwgTGVvbiBSb21hbm92c2t5IHdyb3Rl
Ogo+ID4gT24gV2VkLCBNYXkgMDMsIDIwMjMgYXQgMTA6MDA6NDlQTSArMDgwMCwgRGluZyBIdWkg
d3JvdGU6Cj4gPiA+IE9uIDIwMjMvNS8zIDQ6MjQg5LiL5Y2ILCBMZW9uIFJvbWFub3Zza3kgd3Jv
dGU6Cj4gPiA+ID4gT24gV2VkLCBNYXkgMDMsIDIwMjMgYXQgMTE6MTU6NDFBTSArMDgwMCwgRGlu
ZyBIdWkgd3JvdGU6Cj4gPiA+IAo+ID4gPiA+ID4gCj4gPiA+ID4gPiBJZiB3ZSBkZXRlY3RlZCBy
ZW1vdmluZyBpcyBpbiBwcm9jZXNzaW5nLCB3ZSBjYW4gYXZvaWQgdW5uZWNlc3NhcnkKPiA+ID4g
PiA+IHdhaXRpbmcgYW5kIHJldHVybiBlcnJvciBmYXN0ZXIuCj4gPiA+ID4gPiAKPiA+ID4gPiA+
IE9uIHRoZSBvdGhlciBoYW5kIGluIHRpbWVvdXQgaGFuZGxpbmcsIHdlIHNob3VsZCBrZWVwIHRo
ZSBvcmlnaW5hbAo+ID4gPiA+ID4gbnVtX2FjdGl2ZV9xdWV1ZXMgYW5kIHJlc2V0IG51bV9yZXFf
cXVldWVzIHRvIDAuCj4gPiA+ID4gPiAKPiA+ID4gPiA+IEZpeGVzOiA0ZTVlNmI1ZDlkMTMgKCJp
YXZmOiBGaXggcmV0dXJuIG9mIHNldCB0aGUgbmV3IGNoYW5uZWwgY291bnQiKQo+ID4gPiA+ID4g
U2lnbmVkLW9mZi1ieTogRGluZyBIdWkgPGRpbmdodWlAc2FuZ2Zvci5jb20uY24+Cj4gPiA+ID4g
PiBDYzogRG9uZ2xpbiBQZW5nIDxwZW5nZG9uZ2xpbkBzYW5nZm9yLmNvbS5jbj4KPiA+ID4gPiA+
IENjOiBIdWFuZyBDdW4gPGh1YW5nY3VuQHNhbmdmb3IuY29tLmNuPgo+ID4gPiA+ID4gUmV2aWV3
ZWQtYnk6IFNpbW9uIEhvcm1hbiA8c2ltb24uaG9ybWFuQGNvcmlnaW5lLmNvbT4KPiA+ID4gPiA+
IFJldmlld2VkLWJ5OiBNaWNoYWwgS3ViaWFrIDxtaWNoYWwua3ViaWFrQGludGVsLmNvbT4KPiA+
ID4gPiA+IC0tLQo+ID4gPiA+ID4gdjMgdG8gdjQ6Cj4gPiA+ID4gPiAgICAgLSBub3RoaW5nIGNo
YW5nZWQKPiA+ID4gPiA+IAo+ID4gPiA+ID4gdjIgdG8gdjM6Cj4gPiA+ID4gPiAgICAgLSBmaXgg
cmV2aWV3IHRhZwo+ID4gPiA+ID4gCj4gPiA+ID4gPiB2MSB0byB2MjoKPiA+ID4gPiA+ICAgICAt
IGFkZCByZXByb2R1Y3Rpb24gc2NyaXB0Cj4gPiA+ID4gPiAKPiA+ID4gPiA+IC0tLQo+ID4gPiA+
ID4gICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX2V0aHRvb2wuYyB8IDQg
KysrLQo+ID4gPiA+ID4gICAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxl
dGlvbigtKQo+ID4gPiA+ID4gCj4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX2V0aHRvb2wuYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2lhdmYvaWF2Zl9ldGh0b29sLmMKPiA+ID4gPiA+IGluZGV4IDZmMTcxZDFkODViNy4uZDhh
M2MwY2ZlZGQwIDEwMDY0NAo+ID4gPiA+ID4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWF2Zi9pYXZmX2V0aHRvb2wuYwo+ID4gPiA+ID4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWF2Zi9pYXZmX2V0aHRvb2wuYwo+ID4gPiA+ID4gQEAgLTE4NTcsMTMgKzE4NTcs
MTUgQEAgc3RhdGljIGludCBpYXZmX3NldF9jaGFubmVscyhzdHJ1Y3QgbmV0X2RldmljZSAqbmV0
ZGV2LAo+ID4gPiA+ID4gICAgCS8qIHdhaXQgZm9yIHRoZSByZXNldCBpcyBkb25lICovCj4gPiA+
ID4gPiAgICAJZm9yIChpID0gMDsgaSA8IElBVkZfUkVTRVRfV0FJVF9DT01QTEVURV9DT1VOVDsg
aSsrKSB7Cj4gPiA+ID4gPiAgICAJCW1zbGVlcChJQVZGX1JFU0VUX1dBSVRfTVMpOwo+ID4gPiA+
ID4gKwkJaWYgKHRlc3RfYml0KF9fSUFWRl9JTl9SRU1PVkVfVEFTSywgJmFkYXB0ZXItPmNyaXRf
c2VjdGlvbikpCj4gPiA+ID4gPiArCQkJcmV0dXJuIC1FT1BOT1RTVVBQOwo+ID4gPiA+IAo+ID4g
PiA+IFRoaXMgbWFrZXMgbm8gc2Vuc2Ugd2l0aG91dCBsb2NraW5nIGFzIGNoYW5nZSB0byBfX0lB
VkZfSU5fUkVNT1ZFX1RBU0sKPiA+ID4gPiBjYW4gaGFwcGVuIGFueSB0aW1lLgo+ID4gPiA+IAo+
ID4gPiAKPiA+ID4gVGhlIHN0YXRlIGRvZXNuJ3QgbmVlZCB0byBiZSB0aGF0IHByZWNpc2UgaGVy
ZSwgaXQgaXMgb3B0aW1pemVkIG9ubHkgZm9yCj4gPiA+IHRoZSBmYXN0IHBhdGguIER1cmluZyB0
aGUgbGlmZWN5Y2xlIG9mIHRoZSBhZGFwdGVyLCB0aGUgX19JQVZGX0lOX1JFTU9WRV9UQVNLCj4g
PiA+IHN0YXRlIHdpbGwgb25seSBiZSBzZXQgYW5kIG5vdCBjbGVhcmVkLgo+ID4gPiAKPiA+ID4g
SWYgd2UgZGlkbid0IGRldGVjdCB0aGUgInJlbW92aW5nIiBzdGF0ZSwgd2UgYWxzbyBjYW4gZmFs
bGJhY2sgdG8gdGltZW91dAo+ID4gPiBoYW5kbGluZy4KPiA+ID4gCj4gPiA+IFNvIEkgZG9uJ3Qg
dGhpbmsgdGhlIGxvY2tpbmcgaXMgbmVjZXNzYXJ5IGhlcmUsIHdoYXQgZG8gdGhlIG1haW50YWlu
ZXJzCj4gPiA+IGF0IEludGVsIHRoaW5rPwo+ID4gCj4gPiBJJ20gbm90IEludGVsIG1haW50YWlu
ZXIsIGJ1dCB5b3VyIGNoYW5nZSwgZXhwbGFuYXRpb24gYW5kIHRoZSBmb2xsb3dpbmcKPiA+IGxp
bmUgZnJvbSB5b3VyIGNvbW1pdCBtZXNzYWdlIGFyZW4ndCByZWFsbHkgYWxpZ25lZC4KPiA+IAo+
ID4gWyAzNTEwLjQwMDc5OV0gPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09Cj4gPiBbIDM1MTAuNDAwODIwXSBCVUc6IEtBU0FO
OiBzbGFiLW91dC1vZi1ib3VuZHMgaW4gaWF2Zl9mcmVlX2FsbF90eF9yZXNvdXJjZXMrMHgxNTYv
MHgxNjAgW2lhdmZdCj4gPiAKPiA+IAo+IAo+IF9fSUFWRl9JTl9SRU1PVkVfVEFTSyBpcyBiZWlu
ZyBzZXQgb25seSBpbiBpYXZmX3JlbW92ZSgpIGFuZCB0aGUgYWJvdmUKPiBjaGFuZ2UgaXMgb2sg
aW4gdGVybXMgb2YgY29taW5nIG91dCBvZiBzZXR0aW5nIGNoYW5uZWxzIGVhcmx5IGVub3VnaCB3
aGlsZQo+IHJlbW92ZSBpcyBpbiBwcm9ncmVzcy4KCkl0IGlzIG5vdCwgX19JQVZGX0lOX1JFTU9W
RV9UQVNLLCBzZXQgYml0IGNhbiBiZSBjaGFuZ2VkIGFueSB0aW1lIGR1cmluZwppYXZmX3NldF9j
aGFubmVscygpIGFuZCBpZiBpdCBpcyBub3QsIEkgd291bGQgZXhwZWN0IHRlc3RfYml0KC4uKSBw
bGFjZWQKYXQgdGhlIGJlZ2lubmluZyBvZiBpYXZmX3NldF9jaGFubmVscygpIG9yIGV2ZW4gZWFy
bGllci4KClRoYW5rcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wu
b3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVk
LWxhbgo=
