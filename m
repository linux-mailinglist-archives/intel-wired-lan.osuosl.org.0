Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A89C37C4571
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Oct 2023 01:28:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CA03941E39;
	Tue, 10 Oct 2023 23:28:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CA03941E39
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696980507;
	bh=RAnWTTTv/4cIhIByJwjxFESMuubtp/C11oczWK7uow4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Zr23hICr4NMHaCrhQA1SH4am1ENs2z+3NNDnmLyDsZoSpHlB0lvXJctuVGlSZbNfF
	 MdbSgohoKNtlV6gcB23V3KubK16AAfTG96koQKjDid3JU13/uyS/WyM3OVviS5cIzF
	 9UDLoDeecBVFCcJ8nYdYvCY2X7KiFE7MfF1Zp8oyZAA1/UQJMDz+JA97OfgmxACwiq
	 SjsT9RmN7xwx9oVzxuSBV1IpxnVd5C1BEQ0JaCMDdViGD0Q5gE6SjzPco0LxDyEKew
	 HDCZEjS9MLpqtxBfU3BfMzQN23o+GB8vtk8iLMIlOzcrDLheaDfzddx+0FgN00kAGp
	 a+AojVEhUBV8w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ICxcltU86R5g; Tue, 10 Oct 2023 23:28:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 478B041E30;
	Tue, 10 Oct 2023 23:28:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 478B041E30
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A0AA91BF83C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 23:28:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7858B82311
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 23:28:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7858B82311
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WfBDPkYUCF8X for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Oct 2023 23:28:19 +0000 (UTC)
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com
 [IPv6:2607:f8b0:4864:20::634])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4108B82305
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 23:28:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4108B82305
Received: by mail-pl1-x634.google.com with SMTP id
 d9443c01a7336-1c5c91bec75so43066305ad.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 16:28:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696980498; x=1697585298;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=3ffyVmDvObFUQGm01LEbnK2a/NNSPjFeJ8aUijmhJtI=;
 b=Q2rBKcAFlWK2l4V9LouFsYyHig/9LGt6tmn5UgyvukaMB93X09ZBj2J6xdvZopxjU3
 mKXGUKl3Wd8hvhQFlsaUykKFKafOiC4kMdEwfF0jfglOOmZaAw3zlgvkHpUsXTCMYGOg
 wFsOGEW7xIU0X5R9zHAH+QcbpKMuceHsBUw6ip2ANnJwZSfEwj//QbXrauQQWdClzLW3
 GZ2aOSFZbzPabMCAzf0PY1MRNSC56co9id+olR+XdWFn8ZkyKtWdR5uPxlmfq6UozG/z
 utcl2Haw7NmlrBcolckmPc+8yzSPzYP+jDU5B7CibKvxv011PGAZsMUdaO8ytP8MznNb
 tFTg==
X-Gm-Message-State: AOJu0Yx/aGo9tn0kHskSnYmnrFnnLDApcm7Lwdw7593dQdzkWU3Zj6ML
 5PxeP2MX87MZ0eE9zbUMNv5p5Q==
X-Google-Smtp-Source: AGHT+IEiG6MkiUeUM4CjFtvjNc39SCT6bmkPmjD94V4ggCDiykYfKvAabgK71CDQRK5wtqaWRWjRvw==
X-Received: by 2002:a17:90a:ab87:b0:27b:258f:2843 with SMTP id
 n7-20020a17090aab8700b0027b258f2843mr12673716pjq.7.1696980498575; 
 Tue, 10 Oct 2023 16:28:18 -0700 (PDT)
Received: from www.outflux.net (198-0-35-241-static.hfc.comcastbusiness.net.
 [198.0.35.241]) by smtp.gmail.com with ESMTPSA id
 s15-20020a17090a5d0f00b00263cca08d95sm12446269pji.55.2023.10.10.16.28.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Oct 2023 16:28:17 -0700 (PDT)
Date: Tue, 10 Oct 2023 16:28:14 -0700
From: Kees Cook <keescook@chromium.org>
To: Justin Stitt <justinstitt@google.com>
Message-ID: <202310101625.175D43E7@keescook>
References: <20231010-netdev-replace-strncpy-resend-as-series-v1-0-caf9f0f2f021@google.com>
 <d84f2d4d-40d7-af15-0049-f8e1efed1eba@intel.com>
 <CAFhGd8pR4EdjVzHLKwxtH=OHNO1rLsuWAs=ZHX7hWohhE8Kcjg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFhGd8pR4EdjVzHLKwxtH=OHNO1rLsuWAs=ZHX7hWohhE8Kcjg@mail.gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1696980498; x=1697585298; darn=lists.osuosl.org;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=3ffyVmDvObFUQGm01LEbnK2a/NNSPjFeJ8aUijmhJtI=;
 b=RQIzSYCk5y1MkwPt3nZ4MJ/50PpT/LBwibRBii0Kh84576wW/P7xoRPG1Z26v87+cX
 TblfcDuMPKN0T0KREC3CK1mwpc14IcJhaSxB1ZdIl9Z1LVZFC9l8LL+zTdEaIHKE8kOR
 ufZTRVNX7U6xfZitoxz6VUsCRpDc0fBPgMtxM=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=RQIzSYCk
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/7] net: intel: replace
 deprecated strncpy uses
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
Cc: intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 linux-hardening@vger.kernel.org, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCBPY3QgMTAsIDIwMjMgYXQgMDQ6MjI6NDRQTSAtMDcwMCwgSnVzdGluIFN0aXR0IHdy
b3RlOgo+IE9uIFR1ZSwgT2N0IDEwLCAyMDIzIGF0IDQ6MTnigK9QTSBKZXNzZSBCcmFuZGVidXJn
Cj4gPGplc3NlLmJyYW5kZWJ1cmdAaW50ZWwuY29tPiB3cm90ZToKPiA+Cj4gPiBPbiAxMC8xMC8y
MDIzIDM6MjYgUE0sIEp1c3RpbiBTdGl0dCB3cm90ZToKPiA+ID4gSGksCj4gPiA+Cj4gPiA+IFRo
aXMgc2VyaWVzIGFpbXMgdG8gZWxpbWluYXRlIHVzZXMgb2Ygc3RybmNweSgpIGFzIGl0IGlzIGEg
ZGVwcmVjYXRlZAo+ID4gPiBpbnRlcmZhY2UgWzFdIHdpdGggbWFueSB2aWFibGUgcmVwbGFjZW1l
bnRzIGF2YWlsYWJsZS4KPiA+ID4KPiA+ID4gUHJlZG9taW5hbnRseSwgc3Ryc2NweSgpIGlzIHRo
ZSBnby10byByZXBsYWNlbWVudCBhcyBpdCBndWFyYW50ZWVzCj4gPiA+IE5VTC10ZXJtaW5hdGlv
biBvbiB0aGUgZGVzdGluYXRpb24gYnVmZmVyICh3aGljaCBzdHJuY3B5IGRvZXMgbm90KS4gV2l0
aAo+ID4gPiB0aGF0IGJlaW5nIHNhaWQsIEkgZGlkIG5vdCBpZGVudGlmeSBhbnkgYnVmZmVyIG92
ZXJyZWFkIHByb2JsZW1zIGFzIHRoZQo+ID4gPiBzaXplIGFyZ3VtZW50cyB3ZXJlIGNhcmVmdWxs
eSBtZWFzdXJlZCB0byBsZWF2ZSByb29tIGZvciB0cmFpbGluZwo+ID4gPiBOVUwtYnl0ZXMuIE5v
bmV0aGVsZXNzLCB3ZSBzaG91bGQgZmF2b3IgbW9yZSByb2J1c3QgYW5kIGxlc3MgYW1iaWd1b3Vz
Cj4gPiA+IGludGVyZmFjZXMuCj4gPiA+Cj4gPiA+IFByZXZpb3VzbHksIGVhY2ggb2YgdGhlc2Ug
cGF0Y2hlcyB3YXMgc2VudCBpbmRpdmlkdWFsbHkgYXQ6Cj4gPiA+IDEpIGh0dHBzOi8vbG9yZS5r
ZXJuZWwub3JnL2FsbC8yMDIzMTAwOS1zdHJuY3B5LWRyaXZlcnMtbmV0LWV0aGVybmV0LWludGVs
LWUxMDAtYy12MS0xLWNhMGZmOTY4NjhhM0Bnb29nbGUuY29tLwo+ID4gPiAyKSBodHRwczovL2xv
cmUua2VybmVsLm9yZy9hbGwvMjAyMzEwMTAtc3RybmNweS1kcml2ZXJzLW5ldC1ldGhlcm5ldC1p
bnRlbC1lMTAwMC1lMTAwMF9tYWluLWMtdjEtMS1iMWQ2NDU4MWY5ODNAZ29vZ2xlLmNvbS8KPiA+
ID4gMykgaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjMxMDEwLXN0cm5jcHktZHJpdmVy
cy1uZXQtZXRoZXJuZXQtaW50ZWwtZm0xMGstZm0xMGtfZXRodG9vbC1jLXYxLTEtZGJkYzQ1NzBj
NWE2QGdvb2dsZS5jb20vCj4gPiA+IDQpIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDIz
MTAxMC1zdHJuY3B5LWRyaXZlcnMtbmV0LWV0aGVybmV0LWludGVsLWk0MGUtaTQwZV9kZHAtYy12
MS0xLWYwMWEyMzM5NGVhYkBnb29nbGUuY29tLwo+ID4gPiA1KSBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9hbGwvMjAyMzEwMTAtc3RybmNweS1kcml2ZXJzLW5ldC1ldGhlcm5ldC1pbnRlbC1pZ2It
aWdiX21haW4tYy12MS0xLWQ3OTYyMzRhOGFiZkBnb29nbGUuY29tLwo+ID4gPiA2KSBodHRwczov
L2xvcmUua2VybmVsLm9yZy9hbGwvMjAyMzEwMTAtc3RybmNweS1kcml2ZXJzLW5ldC1ldGhlcm5l
dC1pbnRlbC1pZ2J2Zi1uZXRkZXYtYy12MS0xLTY5Y2NmYjJjMmFhNUBnb29nbGUuY29tLwo+ID4g
PiA3KSBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyMzEwMTAtc3RybmNweS1kcml2ZXJz
LW5ldC1ldGhlcm5ldC1pbnRlbC1pZ2MtaWdjX21haW4tYy12MS0xLWYxZjUwN2VjYzQ3NkBnb29n
bGUuY29tLwo+ID4gPgo+ID4gPiBDb25zaWRlciB0aGVzZSBkZWFkIGFzIHRoaXMgc2VyaWVzIGlz
IHRoZWlyIG5ldyBob21lIDopCj4gPiA+Cj4gPiA+IEkgZm91bmQgYWxsIHRoZXNlIGluc3RhbmNl
cyB3aXRoOiAkIHJnICJzdHJuY3B5XCgiCj4gPiA+Cj4gPiA+IFRoaXMgc2VyaWVzIG1heSBjb2xs
aWRlIGluIGEgbm90LXNvLW5pY2Ugd2F5IHdpdGggWzNdLiBUaGlzIHNlcmllcyBjYW4KPiA+ID4g
Z28gaW4gYWZ0ZXIgdGhhdCBvbmUgd2l0aCBhIHJlYmFzZS4gSSdsbCBzZW5kIGEgdjIgaWYgbmVj
ZXNzYXJ5Lgo+ID4gPgo+ID4gPiBbM106IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL25ldGRldi8y
MDIzMTAwMzE4MzYwMy4zODg3NTQ2LTEtamVzc2UuYnJhbmRlYnVyZ0BpbnRlbC5jb20vCj4gPiA+
Cj4gPiA+IExpbms6IGh0dHBzOi8vd3d3Lmtlcm5lbC5vcmcvZG9jL2h0bWwvbGF0ZXN0L3Byb2Nl
c3MvZGVwcmVjYXRlZC5odG1sI3N0cm5jcHktb24tbnVsLXRlcm1pbmF0ZWQtc3RyaW5ncyBbMV0K
PiA+ID4gTGluazogaHR0cHM6Ly9tYW5wYWdlcy5kZWJpYW4ub3JnL3Rlc3RpbmcvbGludXgtbWFu
dWFsLTQuOC9zdHJzY3B5LjkuZW4uaHRtbCBbMl0KPiA+ID4gTGluazogaHR0cHM6Ly9naXRodWIu
Y29tL0tTUFAvbGludXgvaXNzdWVzLzkwCj4gPiA+IFNpZ25lZC1vZmYtYnk6IEp1c3RpbiBTdGl0
dCA8anVzdGluc3RpdHRAZ29vZ2xlLmNvbT4KPiA+Cj4gPiBUaGFua3MgSnVzdGluIGZvciBmaXhp
bmcgYWxsIHRoZXNlIQo+ID4KPiA+IEZvciB0aGUgc2VyaWVzOgo+ID4gUmV2aWV3ZWQtYnk6IEpl
c3NlIEJyYW5kZWJ1cmcgPGplc3NlLmJyYW5kZWJ1cmdAaW50ZWwuY29tPgo+ID4KPiA+IFBTOiBo
YXZlIHlvdSBjb25zaWRlcmVkIGFkZGluZyBhIHNjcmlwdCB0byBzY3JpcHRzL2NvY2NpbmVsbGUv
YXBpIHdoaWNoCj4gPiBtaWdodCBjYXRjaCBhbmQgdHJ5IHRvIGZpeCBmdXR1cmUgKGFiKXVzZXJz
IG9mIHN0cm5jcHk/Cj4gCj4gVGhlcmUgaXMgYSBjaGVja3BhdGNoIHJvdXRpbmUgZm9yIGl0LiBB
bHNvLCB0aGUgZG9jcyBhcmUgbGl0dGVyZWQgd2l0aAo+IGF2ZXJzaW9ucyB0byBzdHJuY3B5LiBX
aXRoIHRoYXQgYmVpbmcgc2FpZCwgSSB3b3VsZCBub3QgYmUgb3Bwb3NlZAo+IHRvIGFkZGluZyBt
b3JlIGNoZWNrcywgdGhvdWdoLgo+IAo+IE9uY2UgSSdtIG1vcmUgY2F1Z2h0IHVwIG9uIGFsbCB0
aGUgb3V0c3RhbmRpbmcgc3RybmNweSB1c2VzLAo+IEknbGwgbG9vayBpbnRvIGFkZGluZyBzb21l
IGNvY2NpbmVsbGUgc3VwcG9ydC4KCkNvY2NpbmVsbGUgZm9yIHN0cm5jcHkgaXMgZGlmZmljdWx0
IHNpbmNlIGVhY2ggc2V0IG9mIGNhbGxlcnMgdGVuZHMgdG8KbmVlZCBjYXJlZnVsIGV4YW1pbmF0
aW9uLiBCdXQgdGhlIGdvb2QgbmV3cyBoZXJlIGlzIHRoYXQgYXQgdGhlIGN1cnJlbnQKcmF0ZSwg
dGhlIGtlcm5lbCBtYXkgYmUgc3RybmNweS1mcmVlIHByZXR0eSBzb29uLiA6KQoKLS0gCktlZXMg
Q29vawpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBz
Oi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
