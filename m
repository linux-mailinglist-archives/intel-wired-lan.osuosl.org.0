Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C2F537CCE57
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Oct 2023 22:42:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 52E426140E;
	Tue, 17 Oct 2023 20:42:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 52E426140E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697575322;
	bh=uFAnNt6EguUUejHFLULhw9Tg3CqaTrz78e1E6NzkPNQ=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=B2sAAgL1Prac9szCfIDksvhq+vSlBZ4NiehiuC4KDQzpoM7/Cmp+iuN59hOafYbWG
	 kiCiyG3cub7BIgn/FBcvTQoQJ0boVdU57eK1inwMowr67FWZYIUqaiZmpg6Huipiom
	 wKFUrby542r/IcNxUBGi5SSv/VjV4YXqRfh7TIr9wsvQI6brfqSzqbgrReXMHIeh/4
	 7insKRGKQtVGZRrG6EkS3sGiL0ogiEJboxOkm5ONN2l+eUv+L9FcjIOuMJazXjMfqT
	 KpCIfGP8d1bFrjDMYovVHOcYN1kiyHBz1s3+CaEr913T167c1AlISGCdyn3krR2bTz
	 9GKOP2xvUumQg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tjCcf3AHnGY9; Tue, 17 Oct 2023 20:42:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2B9BD61273;
	Tue, 17 Oct 2023 20:42:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2B9BD61273
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A4C0F1BF397
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 20:41:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8983E61273
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 20:41:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8983E61273
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6W9USHiY9a72 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Oct 2023 20:41:55 +0000 (UTC)
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com
 [IPv6:2607:f8b0:4864:20::433])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AA0F06109C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 20:41:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AA0F06109C
Received: by mail-pf1-x433.google.com with SMTP id
 d2e1a72fcca58-6b36e1fcea0so3349238b3a.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 13:41:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697575315; x=1698180115;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=g2QjUtUne6LmfA+Yc1sbIHWXuOgvtYAgxxHwnssJ0D4=;
 b=DdMVfS2ClKU4galSIzCDDBuxQRHB9LEzCz/YgIr/6VuGbM/tfL1E5ZtC9S6Be05Ow4
 s+syD+19mn8fSXBiqnl+EQaIw9ce2mCMguEghFR9Nets6Uimtma4UgtwP+g33GZxYwM7
 jSOu9jCqYiHi2+ea2oxZuqjEJT7PJd06QrpfRVkNrgiK0Hz+i4IsqegGN4ymWhxzGxOm
 t3iTw80JRpb5WoU2djubm1ON1k2vl/rxCJX/Bjqt2E7F4Ncp1UVgIAlhHpRyevWyDibR
 r3kwbrKjcfJA5Npx4KoLAs87Tbj8B3wZKVOuXC/a8TP1834OWES4PCIzLQcUlaNSB/LA
 gRlw==
X-Gm-Message-State: AOJu0YzwUP5vSWiCMdpnq35C8FG3x+W/oePzFsMllGZLxMAeJApBsQj+
 kdlV1jBtPcaHSirVZooWyDFhMdXaU0Wr2MffjMw=
X-Google-Smtp-Source: AGHT+IH3uQEast+qVLuY2ClylosZqqA6hbvLCh4rGE/zP/pQWfjFwV2DonPP2EAs13gfBAzP8Z2L1o5+lRxAzEFJyC4=
X-Received: by 2002:a05:6a21:32a4:b0:17b:43:9ba5 with SMTP id
 yt36-20020a056a2132a400b0017b00439ba5mr2683379pzb.52.1697575314977; Tue, 17
 Oct 2023 13:41:54 -0700 (PDT)
MIME-Version: 1.0
References: <20231016154937.41224-1-ahmed.zaki@intel.com>
 <20231016154937.41224-2-ahmed.zaki@intel.com>
 <8d1b1494cfd733530be887806385cde70e077ed1.camel@gmail.com>
 <26812a57-bdd8-4a39-8dd2-b0ebcfd1073e@intel.com>
 <CAKgT0Ud7JjUiE32jJbMbBGVexrndSCepG54PcGYWHJ+OC9pOtQ@mail.gmail.com>
 <14feb89d-7b4a-40c5-8983-5ef331953224@intel.com>
 <CAKgT0UfcT5cEDRBzCxU9UrQzbBEgFt89vJZjz8Tow=yAfEYERw@mail.gmail.com>
 <20231016163059.23799429@kernel.org>
 <CAKgT0Udyvmxap_F+yFJZiY44sKi+_zOjUjbVYO=TqeW4p0hxrA@mail.gmail.com>
 <20231017131727.78e96449@kernel.org>
In-Reply-To: <20231017131727.78e96449@kernel.org>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Tue, 17 Oct 2023 13:41:18 -0700
Message-ID: <CAKgT0Ud4PX1Y6GO9rW+Nvr_y862Cbv3Fpn+YX4wFHEos9rugJA@mail.gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1697575315; x=1698180115; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=g2QjUtUne6LmfA+Yc1sbIHWXuOgvtYAgxxHwnssJ0D4=;
 b=WrlhYHXjaJp3fYM9GI1YbTbAay+ao1whRVhcFuU6z/GBJR6ICmi3RHpUOJbOAAPXep
 1Ko+sXf7zRIyu2SeilWChyzcVeYd+tmopfg6eCT2r2v550H2pbi3J2zMSx+o+P7ysn94
 w0h8xRYGs6s/sfxxu1RrG2cK5K66lI9WGVzmzlIQY8R7cYHfSxcPtUsnAkczvV3PtRVQ
 y8cTaviiTZMfYub1T2svGX1kaIGA92owMCP0qol0ctUxdXd3DLw7EJ9aAZ3/pN9u8UXI
 ZjBsH9Sz5AD+WzyBCEODCzdm+qxyzDnPiGqmG7Lmeqb/vcvRjUAGqtuQ5T9tvD2P7d4j
 WGIA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=WrlhYHXj
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 1/6] net: ethtool: allow
 symmetric-xor RSS hash for any flow type
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
Cc: mkubecek@suse.cz, andrew@lunn.ch, willemdebruijn.kernel@gmail.com,
 Wojciech Drewek <wojciech.drewek@intel.com>, corbet@lwn.net,
 netdev@vger.kernel.org, linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 Ahmed Zaki <ahmed.zaki@intel.com>, edumazet@google.com,
 anthony.l.nguyen@intel.com, horms@kernel.org, vladimir.oltean@nxp.com,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCBPY3QgMTcsIDIwMjMgYXQgMToxN+KAr1BNIEpha3ViIEtpY2luc2tpIDxrdWJhQGtl
cm5lbC5vcmc+IHdyb3RlOgo+Cj4gT24gVHVlLCAxNyBPY3QgMjAyMyAxMTozNzo1MiAtMDcwMCBB
bGV4YW5kZXIgRHV5Y2sgd3JvdGU6Cj4gPiA+IEFsZ28gaXMgYWxzbyBhIGJpdCBjb25mdXNpbmcs
IGl0J3MgbW9yZSBsaWtlIGtleSBwcmUtcHJvY2Vzc2luZz8KPiA+ID4gVGhlcmUncyBub3RoaW5n
IHRvZXBsaXR6IGFib3V0IHhvcmluZyBpbnB1dCBmaWVsZHMuIFdvcmtzIGFzIHdlbGwKPiA+ID4g
Zm9yIENSQzMyLi4gb3IgWE9SLgo+ID4KPiA+IEkgYWdyZWUgdGhhdCB0aGUgY2hhbmdlIHRvIHRo
ZSBhbGdvcml0aG0gZG9lc24ndCBuZWNlc3NhcmlseSBoYXZlCj4gPiBhbnl0aGluZyB0byBkbyB3
aXRoIHRvZXBsaXR6LCBob3dldmVyIGl0IGlzIHN0aWxsIGEgY2hhbmdlIHRvIHRoZQo+ID4gYWxn
b3JpdGhtIGJ5IHBlcmZvcm1pbmcgdGhlIGV4dHJhIFhPUiBvbiB0aGUgaW5wdXRzIHByaW9yIHRv
Cj4gPiBwcm9jZXNzaW5nLiBUaGF0IGlzIHdoeSBJIGZpZ3VyZWQgaXQgbWlnaHQgbWFrZSBzZW5z
ZSB0byBqdXN0IGFkZCBhCj4gPiBuZXcgaGZ1bmMgdmFsdWUgdGhhdCB3b3VsZCBtZWFuIHRvZXBs
aXR6IHcvIHN5bW1ldHJpYyBYT1IuCj4KPiBYT1IgaXMganVzdCBvbmUgZm9ybSBvZiBhY2hpZXZp
bmcgc3ltbWV0cmljIGhhc2hpbmcsIHNvcnRpbmcgaXMgYW5vdGhlci4KClJpZ2h0LCBidXQgdGhl
cmUgYXJlIGh1Z2UgYWxnb3JpdGhtaWMgZGlmZmVyZW5jZXMgYmV0d2VlbiB0aGUgdHdvLgpXaXRo
IHNvcnRpbmcgeW91IGRvbid0IGxvc2UgYW55IGVudHJvcHksIHdoZXJlYXMgd2l0aCBYT1IgeW91
IGRvLiBGb3IKZXhhbXBsZSBvbmUgc2lkZSBlZmZlY3Qgb2YgWE9SIGlzIHRoYXQgZm9yIGV2ZXJ5
IHR3byBob3N0cyBvbiB0aGUgc2FtZQpJUCBzdWJuZXQgdGhlIElQIHN1Ym5ldHMgd2lsbCBjYW5j
ZWwgb3V0LiBBcyBzdWNoIHdpdGggdGhlIHNhbWUga2V5CjE5Mi4xNjguMC4xLT4xOTIuMTY4LjAu
MiB3aWxsIGhhc2ggb3V0IGVzc2VudGlhbGx5IHRoZSBzYW1lIGFzCmZjOjoxLT5mYzo6Mi4KCj4g
PiA+IFdlIGNhbiB1c2Ugb25lIG9mIHRoZSByZXNlcnZlZCBmaWVsZHMgb2Ygc3RydWN0IGV0aHRv
b2xfcnhmaCB0byBjYXJyeQo+ID4gPiB0aGlzIGV4dGVuc2lvbi4gSSB0aGluayBJIGFza2VkIGZv
ciB0aGlzIGF0IHNvbWUgcG9pbnQsIGJ1dCB0aGVyZSdzCj4gPiA+IG9ubHkgc28gbXVjaCByZXBl
YXRlZCBmZWVkYmFjayBvbmUgY2FuIHNlbmQgaW4gYSBkYXkgOigKPiA+Cj4gPiBXaHkgYWRkIGFu
IGV4dHJhIHJlc2VydmVkIGZpZWxkIHdoZW4gdGhpcyBpcyBqdXN0IGEgdmFyaWFudCBvbiBhIGhh
c2gKPiA+IGZ1bmN0aW9uPyBJIHZpZXcgaXQgYXMgbm90IGJlaW5nIGRpc3NpbWlsYXIgdG8gaG93
IHdlIGhhbmRsZSBUU08gb3IKPiA+IHR4LWNoZWNrc3VtbWluZy4gSXQgd291bGQgbWFrZSBzZW5z
ZSB0byBtZSB0byBqdXN0IHNldCBzb21ldGhpbmcgbGlrZQo+ID4gdG9lcGxpdHotc3ltbWV0cmlj
LXhvciB0byBvbiBpbiBvcmRlciB0byB0dXJuIHRoaXMgb24uCj4KPiBJdCdzIGVudGlyZWx5IG9y
dGhvZ29uYWwuIHtzeW0tWE9SLCBzeW0tc29ydH0geCB7dG9lcCwgY3JjLCB4b3J9IC0KPiBhbGwg
Y29tYmluYXRpb25zIGNhbiB3b3JrLgo+Cj4gRm9yZ2V0IHRoZSAiaXMgaXQgYWxnbyBvciBub3Qg
YWxnbyIgcXVlc3Rpb24sIGp1c3QgcHVyZWx5IGZyb20gZGF0YQo+IG5vcm1hbGl6YXRpb24gcGVy
c3BlY3RpdmUsIGluIHRlcm1zIG9mIHRoZSBBUEksIGlmIGNvbWJpbmF0aW9ucyBtYWtlCj4gc2Vu
c2UgdGhleSBzaG91bGQgYmUgY29udHJvbGxhYmxlIGluZGVwZW5kZW50bHkuCj4KPiBodHRwczov
L2VuLndpa2lwZWRpYS5vcmcvd2lraS9GaXJzdF9ub3JtYWxfZm9ybQoKSSBhbSB0aGlua2luZyBv
ZiB0aGlzIGZyb20gYSBzb2Z0d2FyZSBlbmdpbmVlcmluZyBwZXJzcGVjdGl2ZS4gVGhpcwpzeW1t
ZXRyaWMteG9yIGFrYSBzaW1wbGlmaWVkLXRvZXBsaXR6IGlzIGFjdHVhbGx5IG11Y2ggY2hlYXBl
ciB0bwppbXBsZW1lbnQgaW4gc29mdHdhcmUgdGhhbiB0aGUgb3JpZ2luYWwuIEFzIHN1Y2ggSSB3
b3VsZCB3YW50IGl0IHRvIGJlCmNvbnNpZGVyZWQgYSBzZXBhcmF0ZSBhbGdvcml0aG0gYXMgSSBj
b3VsZCBtYWtlIHVzZSBvZiBzb21ldGhpbmcgbGlrZQp0aGF0IHdoZW4gaGF2aW5nIHRvIGltcGxl
bWVudCBSU1MgaW4gUUVNVSBmb3IgaW5zdGFuY2UuIEJhc2VkIG9uCmVhcmxpZXIgY29tbWVudHMg
aXQgZG9lc24ndCBjaGFuZ2UgdGhlIGlucHV0cywgaXQganVzdCBjaGFuZ2VzIGhvdyBJCmhhdmUg
dG8gaGFuZGxlIHRoZSBkYXRhIGFuZCB0aGUga2V5LiBJdCBzdGFydHMgcmVkdWNpbmcgdGhpbmdz
IGRvd24gdG8Kc29tZXRoaW5nIGxpa2UgdGhlIEludGVsIGltcGxlbWVudGF0aW9uIG9mIEZsb3cg
RGlyZWN0b3IgaW4gdGVybXMgb2YKaG93IHRoZSBrZXkgZ2V0cyBnZW5lcmF0ZWQgYW5kIGhhc2hl
ZC4KCkFzIGZhciBhcyBzb3J0aW5nIHRoYXQgaXMgYSBkaWZmZXJlbnQgY2FuIG9mIHdvcm1zLCBi
dXQgSSB3b3VsZCBiZQptb3JlIG9wZW4gdG8gdGhhdCBiZWluZyBhbiBpbnB1dCBzcGVjaWZpYyB0
aGluZyBhcyBhbGwgaXQgd291bGQgYWZmZWN0CmlzIHRoZSBvcmRlcmluZyBvZiB0aGUgZmllbGRz
LCBpdCBkb2Vzbid0IGltcGFjdCBob3cgSSB3b3VsZCBoYXZlIHRvCmhhbmRsZSB0aGUga2V5IG9y
IGhhc2ggdGhlIGlucHV0cy4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1
b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13
aXJlZC1sYW4K
