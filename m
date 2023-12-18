Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D132817793
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Dec 2023 17:33:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 07663404FC;
	Mon, 18 Dec 2023 16:33:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 07663404FC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702917210;
	bh=WuoBGPcBYM72mNrKdcKhyy5kdLLlR7syMfbkyzo30jA=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sLTOZ5ytdANdfLOGeLFbqF08B6y/N1wLnRnjQ+Yp6cCjqcDocG1lR4Sw+w7XXW0X3
	 ogXRbXFEfSrbBoE7kSVuINMIDBvloAokrxFNP0WB0PHNqmbsUHhEJUdo6hvQ7UZ+cO
	 IM3i/zFWDEf+w1ur6YcILLe2mF2Rto6+NB96Vu9kXxp90caVslsduXtGvigcvqbJpI
	 GMfeIa3zveuHO0OAV1RWrN4bE3dGzdQOBg5HdaPj2o+SfTHiqpWqaCJknILRKMi2mw
	 KEqo3eWwPbKp2AgUhmgYSWAwm6F5WBh2lCvvJgQR/WREB9djPdmBfJhqhi9tapzvQH
	 pGgnTOYMJQj+A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KX-CKSPlTUXK; Mon, 18 Dec 2023 16:33:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4354040018;
	Mon, 18 Dec 2023 16:33:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4354040018
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9F06A1BF2A1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 16:16:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 71B1741621
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 16:16:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 71B1741621
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GxV-BIJUxJEq for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Dec 2023 16:16:53 +0000 (UTC)
Received: from mail-qv1-xf2c.google.com (mail-qv1-xf2c.google.com
 [IPv6:2607:f8b0:4864:20::f2c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5E73A41624
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 16:16:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5E73A41624
Received: by mail-qv1-xf2c.google.com with SMTP id
 6a1803df08f44-67f1ef1ef8eso18866086d6.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 08:16:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1702916212; x=1703521012;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=39osfUB05y2x+GqHUsZEdUtckVTaGnfyEgf6uxp1vDA=;
 b=DCyXFS97HLF1pSaoOE8Fw6yqQmFAuWzemcTf40cqx+o/r/1EzAk1q8I5uodX8hJ0HT
 ur4t1RrryHN0Wnmf+ucM9PSTc27NASUpooJ8D1dHsfmY4ZrurXaNpQm4ZaGQQRjFs1Ja
 oTpOtXjKDvXqyg7TSzA7gc/gNgRivNDn/w1HiqrMElmgq5K5Bd+4wy7kxo3c54gJ3UIa
 uNbCL31RZ8MeSOFxddEOiaiSTxdrkS7LehC6uQp5O/8Sv0COVZzVV9IhdW113VhOYuHN
 lJiNy6daTT/i1h4++A7uGxOhudYkWfYlGIx8kk9lssQTfPxeQgAa544C5XlFhdxO8PgG
 k/XA==
X-Gm-Message-State: AOJu0Yxs3Ukyq4d/2KBRg7GjT2l12h1G2PAC1GMXQ+fHG0aAXnMHlA5x
 sAPK8+sVyVrnYnCd58nCdAsQOnAAK1IL1z8ygAI9qw==
X-Google-Smtp-Source: AGHT+IErf6Qgr+QCsASbwBcqCK2t5RR1+hnZ6pOfeuPnrxShsz1icshjaLwXhkrR0jogLXDeEbasEqQ24od3qLSodSs=
X-Received: by 2002:a05:6214:226a:b0:67f:225b:f346 with SMTP id
 gs10-20020a056214226a00b0067f225bf346mr7714147qvb.70.1702916211971; Mon, 18
 Dec 2023 08:16:51 -0800 (PST)
MIME-Version: 1.0
References: <20231207164911.14330-1-marcin.szycik@linux.intel.com>
 <b3e5ec09-d01b-0cea-69ea-c7406ea3f8b5@intel.com>
 <13f7d3b4-214c-4987-9adc-1c14ae686946@intel.com>
 <aeb76f91-ab1d-b951-f895-d618622b137b@intel.com>
 <539ae7a3-c769-4cf6-b82f-74e05b01f619@linux.intel.com>
 <67e287f5-b126-4049-9f3b-f05bf216c8b9@intel.com>
 <20231215084924.40b47a7e@kernel.org>
 <ff8cfb1e-8a03-4a82-a651-3424bf9787a6@linux.intel.com>
 <1eb475bb-d2ba-4cf3-a2ce-36263b61b5ff@intel.com>
 <ZYBr98sd+XzSfy9v@yury-ThinkPad>
In-Reply-To: <ZYBr98sd+XzSfy9v@yury-ThinkPad>
From: Alexander Potapenko <glider@google.com>
Date: Mon, 18 Dec 2023 17:16:09 +0100
Message-ID: <CAG_fn=XOguL_++vJk2kFQoxu1msLzFBB5sJiD8Jxr4oUZ7qZ7g@mail.gmail.com>
To: Yury Norov <yury.norov@gmail.com>
X-Mailman-Approved-At: Mon, 18 Dec 2023 16:33:23 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1702916212; x=1703521012; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=39osfUB05y2x+GqHUsZEdUtckVTaGnfyEgf6uxp1vDA=;
 b=fbZOoRyGXHSP5AHb+cadTqqEI7lo7UTfFkabXKEV7G6RdjDDedjnWH8pKySyFpkRjg
 8Z7MbEGdcHv2Zkg0sK0iJMCkmLRLBiq4eYng5MKqkU6p/T+yFgxKD8n+ghWUw8NmWD8H
 BmYNyn41RvzLrc8CpPuJp9CyGtxsgE2IB8WqtJgaOseMWDejo79hid0Jw8KMulSKcpNb
 766iTJY1JnAGEuG3VIpofelvFZBCxca+nzpm99KqRjotoFcZv3zTkgttEKOVGZ1qoT86
 F68TEeAeiUxOkKRZJdi7PxSeARnyzM7mBW0BKUp0XbLF/5LT0iHrmkkLnDbfH5l2c9fF
 Y1NQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=fbZOoRyG
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 0/7] Add PFCP filter
 support
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
Cc: jiri@resnulli.us, wojciech.drewek@intel.com, idosch@nvidia.com,
 jesse.brandeburg@intel.com, Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, michal.swiatkowski@linux.intel.com,
 Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org, pabeni@redhat.com,
 davem@davemloft.net, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gTW9uLCBEZWMgMTgsIDIwMjMgYXQgNDo1N+KAr1BNIFl1cnkgTm9yb3YgPHl1cnkubm9yb3ZA
Z21haWwuY29tPiB3cm90ZToKPgo+ICsgQWxleGFuZGVyIFBvdGFwZW5rbwo+Cj4gT24gTW9uLCBE
ZWMgMTgsIDIwMjMgYXQgMDE6NDc6MDFQTSArMDEwMCwgQWxleGFuZGVyIExvYmFraW4gd3JvdGU6
Cj4gPiBGcm9tOiBNYXJjaW4gU3p5Y2lrIDxtYXJjaW4uc3p5Y2lrQGxpbnV4LmludGVsLmNvbT4K
PiA+IERhdGU6IE1vbiwgMTggRGVjIDIwMjMgMTE6MDQ6MDEgKzAxMDAKPiA+Cj4gPiA+Cj4gPiA+
Cj4gPiA+IE9uIDE1LjEyLjIwMjMgMTc6NDksIEpha3ViIEtpY2luc2tpIHdyb3RlOgo+ID4gPj4g
T24gRnJpLCAxNSBEZWMgMjAyMyAxMToxMToyMyArMDEwMCBBbGV4YW5kZXIgTG9iYWtpbiB3cm90
ZToKPiA+ID4+PiBQaW5nPyA6cwo+ID4gPj4+IE9yIHNob3VsZCB3ZSByZXN1Ym1pdD8KPiA+ID4+
Cj4gPiA+PiBDYW4geW91IHdhaXQgZm9yIG5leHQgbWVyZ2Ugd2luZG93IGluc3RlYWQ/Cj4gPiA+
PiBXZSdyZSBnZXR0aW5nIGZsb29kZWQgd2l0aCBwYXRjaGVzIGFzIGV2ZXJ5b25lIHNlZW1pbmds
eSB0cmllcyB0byBnZXQKPiA+ID4+IHRoZWlyIG93biAoaS5lLiB0aGUgbW9zdCBpbXBvcnRhbnQh
KSB3b3JrIG1lcmdlZCBiZWZvcmUgdGhlIGVuZCBvZgo+ID4gPj4gdGhlIHllYXIuIFRoZSBzZXQg
b2YgUFJzIGZyb20gdGhlIGJpdG1hcCB0cmVlIHdoaWNoIExpbnVzIGRlY2lkZWQKPiA+ID4+IG5v
dCB0byBwdWxsIGlzIG5vdCBlbXB0eS4gU28gd2UnZCBoYXZlIHRvIGdvIGZpZ3VyZSBvdXQgd2hh
dCdzIGV4YWN0bHkKPiA+ID4+IGlzIGluIHRoYXQgYnJhbmNoIHdlJ3JlIHN1cHBvc2VkIHRvIHB1
bGwsIGFuZCB3aGV0aGVyIGl0J3MgZmluZS4KPiA+ID4+IEl0IHByb2JhYmx5IGlzLCBidXQgeW91
IHNlZSwgdGhpcyBpcyBhIHByb2JsZW0gd2hpY2ggY2FuIGJlIHNvbHZlZCBieQo+ID4gPj4gd2Fp
dGluZywgYW5kIGxldHRpbmcgTGludXMgcHVsbCBpdCBoaW1zZWxmLiBXaGlsZSB0aGUgMTUwIHBh
dGNoZXMgd2UncmUKPiA+ID4+IGdldHRpbmcgYSBkYXkgbm93IGhhdmUgdG8gYmUgbG9va2VkIGF0
Lgo+ID4gPgo+ID4gPiBMZXQncyB3YWl0IHRvIHRoZSBuZXh0IHdpbmRvdyB0aGVuLgo+ID4KPiA+
IEhleSBZdXJ5LAo+ID4KPiA+IEdpdmVuIHRoYXQgUEZDUCB3aWxsIGJlIHJlc2VudCBpbiB0aGUg
bmV4dCB3aW5kb3cuLi4KPiA+Cj4gPiBZb3VyICJib3lzIiB0cmVlIGlzIGluIGZhY3Qgc2VsZi1j
b250YWluZWQgLS0gdGhvc2UgYXJlIG1vc3RseQo+ID4gb3B0aW1pemF0aW9ucyBhbmQgY2xlYW51
cHMsIGFuZCBmb3IgdGhlIG5ldyBBUEkgLS0gYml0bWFwX3tyZWFkLHdyaXRlfSgpCj4gPiAtLSBp
dCBoYXMgaW50ZXJuYWwgdXNlcnMgKGFmdGVyICJiaXRtYXA6IG1ha2UgYml0bWFwX3tnZXQsc2V0
fV92YWx1ZTgoKQo+ID4gdXNlIGJpdG1hcF97cmVhZCx3cml0ZX0oKSIpLiBJT1csIEkgZG9uJ3Qg
c2VlIGEgcmVhc29uIGZvciBub3QgbWVyZ2luZwo+ID4gaXQgaW50byB5b3VyIG1haW4gZm9yLW5l
eHQgdHJlZSAodGhpcyB3ZWVrIDpwKS4KPiA+IFdoYXQgZG8geW91IHRoaW5rPwo+Cj4gSSB0aGlu
ayB0aGF0IHRoZXJlJ3MgYWxyZWFkeSBlbm91Z2ggbWVzcyB3aXRoIHRoaXMgcGF0Y2guIEFsZXhh
bmRlcgo+IHN1Ym1pdHRlZCBuZXcgdmVyc2lvbiBvZiBoaXMgTVRFIHNlcmllcyB0b2dldGhlciB3
aXRoIHRoZSBwYXRjaC4KClllYWgsIHNvcnJ5IGFib3V0IHRoYXQuIEJlY2F1c2UgdGhlIE1URSBw
YXJ0IG9mIHRoZSBwYXRjaGVzIHdhcyBzdGlsbAphd2FpdGluZyByZXZpZXcsIEkgdGhvdWdodCBp
dCB3b3VsZCBiZSBiZXR0ZXIgdG8gbGFuZCB0aGUgYml0bWFwIEFQSQpzZXBhcmF0ZWx5LCBidXQg
YXMgeW91IHBvaW50ZWQgb3V0IHRoZXJlIHNob3VsZCBiZSBhdCBsZWFzdCBvbmUgdXNlcgpmb3Ig
aXQsIHdoaWNoIGl0IHdvdWxkbid0IGhhdmUgaW4gdGhhdCBjYXNlLgoKSSBkb24ndCBoYXZlIGEg
c3Ryb25nIHByZWZlcmVuY2UgYWJvdXQgd2hldGhlciB0byBzdWJtaXQgdGhlIHBhdGNoZXMKYmVm
b3JlIG9yIGFmdGVyIHRoZSBlbmQgb2YgeWVhciAtIGluIGZhY3QgSSBkb24ndCB0aGluayB0aGV5
IGFyZQp1cmdlbnQgZW5vdWdoLCBhbmQgd2UnZCBiZXR0ZXIgcG9zdHBvbmUgdGhlbSB0aWxsIEph
bnVhcnkuCgpTbyB1bmxlc3MgQWxleGFuZGVyIGhhcyB1cmdlbnQgZml4ZXMgZGVwZW5kaW5nIG9u
IG15IGJpdG1hcCBwYXRjaGVzLApJJ2Qgc3VnZ2VzdCB3YWl0aW5nIHRpbGwgdGhleSBhcmUgdGFr
ZW4gdmlhIHRoZSBhcm02NCB0cmVlLgoKPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9sa21sL1pY
dGNpYXhUS0ZCaXVpJTJGWEB5dXJ5LVRoaW5rUGFkL1QvCj4KPiBOb3cgeW91J3JlIGFza2luZyBt
ZSB0byBtZXJnZSBpdCBzZXBhcmF0ZWx5LiBJIGRvbid0IHdhbnQgdG8gdW5kZXJjdXQKPiBhcm02
NCBmb2xrcy4KPgo+IENhbiB5b3UgZ3V5cyBkZWNpZGUgd2hhdCB5b3Ugd2FudD8gSWYgeW91IHdh
bnQgdG8gbW92ZQo+IGJpdG1hcF9yZWFkL3dyaXRlKCkgd2l0aCBteSBicmFuY2gsIEkgbmVlZCB0
byBzZW5kIGl0IGluIC1uZXh0IGZvcgo+IHRlc3RpbmcgQVNBUC4gQW5kIGZvciB0aGF0LCBhcyBJ
IGFscmVhZHkgc2FpZCwgSSBuZWVkIGF0IGxlYXN0IG9uZQo+IGFjdGl2ZSB1c2VyIGluIGN1cnJl
bnQga2VybmVsIHRyZWUuIChZZXMsIGJpdG1hcF9nZXRfdmFsdWU4KCkgY291bnRzLikKPgo+IElm
IHlvdSB3YW50IHRvIG1vdmUgaXQgdGhpcyB3YXksIHBsZWFzZSByZXNlbmQgYWxsIHRoZSBwYXRj
aGVzCj4gdG9nZXRoZXIuCj4KPiBUaGFua3MsCj4gWXVyeQoKCgotLQpBbGV4YW5kZXIgUG90YXBl
bmtvClNvZnR3YXJlIEVuZ2luZWVyCgpHb29nbGUgR2VybWFueSBHbWJICkVyaWthLU1hbm4tU3Ry
YcOfZSwgMzMKODA2MzYgTcO8bmNoZW4KCkdlc2Now6RmdHNmw7xocmVyOiBQYXVsIE1hbmljbGUs
IExpYW5hIFNlYmFzdGlhbgpSZWdpc3RlcmdlcmljaHQgdW5kIC1udW1tZXI6IEhhbWJ1cmcsIEhS
QiA4Njg5MQpTaXR6IGRlciBHZXNlbGxzY2hhZnQ6IEhhbWJ1cmcKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlz
dApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
