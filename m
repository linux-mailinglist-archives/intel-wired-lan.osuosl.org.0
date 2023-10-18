Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9346E7CD207
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Oct 2023 03:53:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CB24F402A8;
	Wed, 18 Oct 2023 01:53:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CB24F402A8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697594002;
	bh=XLNEv4flft2XonvgJf8yQExB/JNpmcuEJisPI2QdrMQ=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=S2gNdqlH5qETrKDVvUoEEYxybvzsRWyFacAwjWiPtQ0/xGsvmxnvbK8YA9WY99E00
	 6cYk/SmQkDJbWxvS+zAKTebGWNOuX6pcWKy7IEFZPalVn0Gbehy22hIx06Rafxwts3
	 1ObYx7wc5iQ5w0a/pGu16LDyqORfb0S7v7xg/vZ+AVslOGfWvSrQe7kibjsuj5JEGa
	 hJ4OF6eH3AcHU6cKH8RIhnw2amQ+OrJJdf+6JA19J0F139PiUsGisOjLcGjiSq3CH0
	 c6xEWw5ySHHatrJExgaxqsZFaPxZvzzjvNm1S3xb0vNQ0wMz4lXJdf5k1pl+L6XYwF
	 raiWkL+MZONSg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N--6se5ANkLh; Wed, 18 Oct 2023 01:53:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0105C401AE;
	Wed, 18 Oct 2023 01:53:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0105C401AE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8B7EF1BF397
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 01:53:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 63E7040273
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 01:53:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 63E7040273
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SW80WMwpPpp2 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Oct 2023 01:53:15 +0000 (UTC)
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com
 [IPv6:2607:f8b0:4864:20::b32])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 04BEF401AE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 01:53:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 04BEF401AE
Received: by mail-yb1-xb32.google.com with SMTP id
 3f1490d57ef6-d9ac43d3b71so6823575276.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 18:53:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697593994; x=1698198794;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=HmlrBpe9ja03gtHjG3w9pmjyrdRPZCOV3DdXdWIw+HI=;
 b=b8Gw9fshLWuShcmdT6XmrJ65RTpFpu8zTGjQQ1lfHkAv7VViPSL4633sw4bIKuTpBr
 E6lpF5WvDhnmEublXKU4UfifGr9b+HtRCluZuv2cLFKUOe7UiztMNopzYhzZUh3dY8Ss
 7/M2zIeU6sOOjOWr5b7Y1xnXBWC5mXRrXjHOk5ldhzxcYLrDfIF9vftBvlJoF7SQjon+
 J/fbBgzL10d5ntw03Z/OAbWVGgUvnu0cGttEqQ85xDoygBVr/c/WQO33WpPtiONrl8Qd
 Ulh7bVi8spamJQwUaeVAt7zCLVGm2gjONVqCawsj3zpq/vUYe5xknG9vPBMnq/kKtIRK
 /zwg==
X-Gm-Message-State: AOJu0YzH6YRxcvdC6mU1RuOiWvwcsyyT7VPUPgTs2+UcwyTwXvvxdY0x
 th9wJiRQHQZ1AJ0buAGI+67cXYYwZ9qNCFlLjIk=
X-Google-Smtp-Source: AGHT+IHsZJ7wGCRzt9Djq/g4QJsVfvZdmXlQJIIyKW6pnkW6E35wuoGTDrDDWXdZqnDJq3ZDx7ObAekxxiZAN55LiUc=
X-Received: by 2002:a25:df09:0:b0:d9a:c56f:a46e with SMTP id
 w9-20020a25df09000000b00d9ac56fa46emr4086505ybg.56.1697593993635; Tue, 17 Oct
 2023 18:53:13 -0700 (PDT)
MIME-Version: 1.0
References: <20231012060115.107183-1-hayatake396@gmail.com>
 <20231016152343.1fc7c7be@kernel.org>
 <CADFiAcKOKiTXFXs-e=WotnQwhLB2ycbBovqS2YCk9hvK_RH2uQ@mail.gmail.com>
 <CADFiAcLiAcyqaOTsRZHex8g-wSBQjCzt_0SBtBaW3CJHz9afug@mail.gmail.com>
 <20231017164915.23757eed@kernel.org>
In-Reply-To: <20231017164915.23757eed@kernel.org>
From: takeru hayasaka <hayatake396@gmail.com>
Date: Wed, 18 Oct 2023 10:53:02 +0900
Message-ID: <CADFiAc+OnpyNTXntZBkDAf+UfueRotqqWKg+BrApWcL=x_8vjQ@mail.gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1697593994; x=1698198794; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=HmlrBpe9ja03gtHjG3w9pmjyrdRPZCOV3DdXdWIw+HI=;
 b=AX0VEsMrYdwJ/JY4jigslsyy1e71VXpYP+AeEurBfHuA70zNxRyxteOtPdJNSXTjpd
 ueDhwwAKuh+e19uEHodKeEvLEKNksxu8kjh5Twz899XLE+Aqa/hC6jYl5J9pSL9To+5t
 +8QpBLQxd3MUqqeW0ieL1Rg1icHJx+dAwqRfx/nh5q+/3W4CxuxrQyUZg6yEko5/+Trb
 MYEmFpCAAqaaMmfK/U4ImYGAx/tWnKJykl1OXlN55dXbPxC3l9pDSlAYtQ/jWMzFsjT9
 imQmcCugn0ouw46vjuRwUo+7lPYhpdgA65bzPOnyHYNXghk8cE4HVBZtHF3zSdhr3vzA
 819g==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=AX0VEsMr
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ethtool: ice: Support for
 RSS settings to GTP from ethtool
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
Cc: Willem de Bruijn <willemdebruijn.kernel@gmail.com>, netdev@vger.kernel.org,
 osmocom-net-gprs@lists.osmocom.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Harald Welte <laforge@gnumonks.org>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 Pablo Neira Ayuso <pablo@netfilter.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGkgSmFrdWIgc2FuCgpUaGFuayB5b3UgZm9yIHlvdXIgY29udGludWVkIHJldmlldyEKCj4gSSBt
YXkgYmUgd3JvbmcgKHRoaXMgQVBJIHByZWRhdGVzIG15IGludm9sdmVtZW50IGluIExpbnV4IGJ5
IGEgZGVjYWRlKQo+IGJ1dCBJIHRoaW5rIHRoYXQgdGhlIGN1cnJlbnQgZXRodG9vbCBBUEkgaXMg
bm90IGFsbCB0aGF0IHByZWNpc2UgaW4KPiB0ZXJtcyBvZiBleGFjdCBwYWNrZXQgaGVhZGVycy4K
Pgo+IEZvciBleGFtcGxlIHRoZSBUQ1B2NiBmbG93IGluY2x1ZGVzIElQdjYgYW5kIFRDUCBoZWFk
ZXJzLCBidXQgdGhlCj4gcGFja2V0IG1heSBvciBtYXkgbm90IGhhdmUgYW55IG51bWJlciBvZiBl
bmNhcHN1bGF0aW9uIGhlYWRlcnMgaW4gcGxhY2UuCj4gVkxBTiwgVlhMQU4sIEdFTkVWRSBldGMu
IElmIHRoZSBOSUMgY2FuIHBhcnNlIHRoZW0gLSBpdCB3aWxsIGV4dHJhY3QKPiB0aGUgaW5uZXIt
bW9zdCBJUHY2IGFuZCBUQ1Agc3JjL2RzdCBhbmQgaGFzaCBvbiB0aGF0Lgo+Cj4gSW4gYSB3YXkg
VENQIG9yIElQIGhlYWRlcnMgbWF5IGFsc28gZGlmZmVyIGJ5IGUuZy4gaW5jbHVkaW5nIG9wdGlv
bnMuCj4gQnV0IGFzIGxvbmcgYXMgdGhlIGZpZWxkcyB3ZSBjYXJlIGFib3V0IChzb3VyY2UgLyBk
c3QpIGFyZSBpbiBwbGFjZSwKPiB3ZSB0cmVhdCBhbGwgdmFyaWFudHMgb2YgdGhlIGhlYWRlciB0
aGUgc2FtZS4KPgo+IFRoZSBxdWVzdGlvbiByZWFsbHkgaXMgaG93IG11Y2ggd2Ugc2hvdWxkIGV4
dGVuZCB0aGlzIHNvcnQgb2YgdGhpbmtpbmcKPiB0byBHVFAgYW5kIHNheSAtIHdlIHRyZWF0IGFs
bCBHVFAgZmxvd3Mgd2l0aCBleHRyYWN0YWJsZSBURUlEIHRoZSBzYW1lOwo+IGFuZCBob3cgbXVj
aCB0aGUgdXNlciBjYW4gYWN0dWFsbHkgYmVuZWZpdCBmcm9tIGNvbnRyb2xsaW5nIHBhcnRpY3Vs
YXIKPiBzdWItY2F0ZWdvcnkgb2YgR1RQIGZsb3dzLiBPciBrbm93aW5nIHRoYXQgTklDIHN1cHBv
cnRzIGEgcGFydGljdWxhcgo+IHN1Yi1jYXRlZ29yeS4KPgo+IExldCdzIGZvcmdldCBhYm91dCBj
YXBhYmlsaXRpZXMgb2YgSW50ZWwgTklDcyBmb3Igbm93IC0gY2FuIHlvdSBhcyBhCj4gdXNlciB0
aGluayBvZiBwcmFjdGljYWwgdXNlIGNhc2VzIHdoZXJlIHdlJ2Qgd2FudCB0byB0dXJuIG9uIGhh
c2hpbmcKPiBiYXNlZCBvbiBURUlEIGZvciwgZS5nLiBndHB1NiBhbmQgbm90IGd0cGM2PwoKb2Yg
Y291cnNlIQpUaGVyZSBhcmUgY2xlYXJseSBjYXNlcyB3aGVyZSB3ZSB3b3VsZCB3YW50IHRvIHVz
ZSBndHB1NHw2IGluc3RlYWQgb2YgZ3RwYzR8Ni4KCkZvciBpbnN0YW5jZSwgdGhlcmUgYXJlIFBH
V3MgdGhhdCBoYXZlIHRoZSBjYXBhYmlsaXR5IHRvIHNlcGFyYXRlIHRoZQp0ZXJtaW5hdGlvbiBv
ZiBjb21tdW5pY2F0aW9uIG9mIDRHIExURSB1c2VycyBpbnRvIENvbnRyb2wgYW5kIFVzZXIKcGxh
bmVzIChDL1UpLgpUaGlzIGlzIHF1aXRlIGNvbnZlbmllbnQgZnJvbSBhIHNjYWxhYmlsaXR5IHBl
cnNwZWN0aXZlLiBJbiBmYWN0LCBpbgo1RyBVUEYsIHRoZSBjb21tdW5pY2F0aW9uIGlzIGV4cGxp
Y2l0bHkgb25seSBvbiB0aGUgVXNlciBwbGFuZQooVXBsYW5lKS4KClRoZXJlZm9yZSwgc2Vydmlj
ZXMgYXJlIGV4cGVjdGVkIHRvIHJlY2VpdmUgb25seSBHVFBVIHRyYWZmaWMgKGUuZy4sClBHVy1V
LCBVUEYpIG9yIG9ubHkgR1RQQyB0cmFmZmljIChlLmcuLCBQR1ctQykuIEhlbmNlLCB0aGVyZSBh
cmlzZXMgYQpuZWNlc3NpdHkgdG8gdXNlIG9ubHkgR1RQVS4KCklmIHdlIGRvIG5vdCBkaXN0aW5n
dWlzaCBwYWNrZXRzIGludG8gQ29udHJvbC9Vc2VyIChDL1UpIHdpdGggb3B0aW9ucwpsaWtlIGd0
cDR8NiwgSSBjYW4gY29uY2VpdmUgc2NlbmFyaW9zIHdoZXJlIHBlcmZvcm1hbmNlIHR1bmluZyBi
ZWNvbWVzCmNoYWxsZW5naW5nLgpGb3IgZXhhbXBsZSwgaW4gY2FzZXMgd2hlcmUgd2Ugd2FudCB0
byBwcm9jZXNzIG9ubHkgdGhlIGNvbnRyb2wKY29tbXVuaWNhdGlvbiAoR1RQQykgdXNpbmcgRmxv
dyBEaXJlY3RvciBvbiBzcGVjaWZpYyBDUFVzLCB3aGlsZQpwcm9jZXNzaW5nIEdUUFUgb24gdGhl
IHJlbWFpbmluZyBjb3Jlcy4KSW4gc2NlbmFyaW9zIGxpa2UgSW9ULCB3aGVyZSB1c2VyIGNvbW11
bmljYXRpb24gaXMgbWluaW1hbCBidXQgdGhlCnZvbHVtZSBvZiBkZXZpY2VzIGlzIHZhc3QsIHRo
ZSBjb250cm9sIHRyYWZmaWMgY291bGQgc3Vic3RhbnRpYWxseQppbmNyZWFzZS4gVGh1cywgdGhp
cyBtaWdodCBhbHNvIGJlIHBvc3NpYmxlIGluIHJldmVyc2UuCkluIHNob3J0LCB0aGlzIHBlcnRh
aW5zIHRvIGJlaW5nIG1pbmRmdWwgb2YgQ1BVIGNvcmUgYWZmaW5pdHkuCgpJZiB3ZSB3ZXJlIHRv
IHByb3Bvc2UgYWdhaW4sIHNldHRpbmcgYXNpZGUgY29uc2lkZXJhdGlvbnMgc3BlY2lmaWMgdG8K
SW50ZWwsIEkgYmVsaWV2ZSwgY29uc2lkZXJpbmcgdGhlIHVzZXJzIG9mIGV0aHRvb2wsIHRoZSBz
bWFsbGVzdCB1bml0cwpzaG91bGQgYmUgZ3RwdTR8NiBhbmQgZ3RwYzR8Ni4KUmVnYXJkaW5nIEV4
dGVuc2lvbiBIZWFkZXJzIGFuZCBzdWNoLCBJIHRoaW5rIGl0IHdvdWxkIGJlIG1vcmUKc3RyYWln
aHRmb3J3YXJkIHRvIGhhbmRsZSB0aGVtIGltcGxpY2l0bHkuCgpXaGF0IGRvZXMgZXZlcnlvbmUg
ZWxzZSB0aGluaz8KCjIwMjPlubQxMOaciDE45pelKOawtCkgODo0OSBKYWt1YiBLaWNpbnNraSA8
a3ViYUBrZXJuZWwub3JnPjoKPgo+IE9uIFR1ZSwgMTcgT2N0IDIwMjMgMjM6Mzc6NTcgKzA5MDAg
dGFrZXJ1IGhheWFzYWthIHdyb3RlOgo+ID4gPiBBcmUgdGhlcmUgcmVhbGx5IGRlcGxveW1lbnRz
IHdoZXJlIHRoZSAqdmVyeSBsaW1pdGVkKiBHVFAtQyBjb250cm9sCj4gPiBJIGFsc28gdGhpbmsg
dGhhdCBpdCBzaG91bGQgbm90IGJlIGxpbWl0ZWQgdG8gR1RQLUMuIEhvd2V2ZXIsIGFzIEkKPiA+
IHdyb3RlIGluIHRoZSBlbWFpbCBlYXJsaWVyLCBhbGwgdGhlIGZsb3dzIHdyaXR0ZW4gYXJlIGRp
ZmZlcmVudCBpbgo+ID4gcGFja2V0IHN0cnVjdHVyZSwgaW5jbHVkaW5nIEdUUC1DLiBJbiB0aGUg
c2VtYW50aWNzIG9mIGV0aHRvb2wsIEkKPiA+IHRob3VnaHQgaXQgd2FzIGNvcnJlY3QgdG8gcGFz
cyBhIGZpeGVkIHBhY2tldCBzdHJ1Y3R1cmUgYW5kIHRoZQo+ID4gY29udHJvbGxhYmxlIHBhcmFt
ZXRlcnMgZm9yIGl0LiBBdCBsZWFzdCwgdGhlIEludGVsIGljZSBkcml2ZXIgdGhhdCBJCj4gPiBt
b2RpZmllZCBpcyBhbHJlYWR5IGxpa2UgdGhhdC4KPgo+IEkgbWF5IGJlIHdyb25nICh0aGlzIEFQ
SSBwcmVkYXRlcyBteSBpbnZvbHZlbWVudCBpbiBMaW51eCBieSBhIGRlY2FkZSkKPiBidXQgSSB0
aGluayB0aGF0IHRoZSBjdXJyZW50IGV0aHRvb2wgQVBJIGlzIG5vdCBhbGwgdGhhdCBwcmVjaXNl
IGluCj4gdGVybXMgb2YgZXhhY3QgcGFja2V0IGhlYWRlcnMuCj4KPiBGb3IgZXhhbXBsZSB0aGUg
VENQdjYgZmxvdyBpbmNsdWRlcyBJUHY2IGFuZCBUQ1AgaGVhZGVycywgYnV0IHRoZQo+IHBhY2tl
dCBtYXkgb3IgbWF5IG5vdCBoYXZlIGFueSBudW1iZXIgb2YgZW5jYXBzdWxhdGlvbiBoZWFkZXJz
IGluIHBsYWNlLgo+IFZMQU4sIFZYTEFOLCBHRU5FVkUgZXRjLiBJZiB0aGUgTklDIGNhbiBwYXJz
ZSB0aGVtIC0gaXQgd2lsbCBleHRyYWN0Cj4gdGhlIGlubmVyLW1vc3QgSVB2NiBhbmQgVENQIHNy
Yy9kc3QgYW5kIGhhc2ggb24gdGhhdC4KPgo+IEluIGEgd2F5IFRDUCBvciBJUCBoZWFkZXJzIG1h
eSBhbHNvIGRpZmZlciBieSBlLmcuIGluY2x1ZGluZyBvcHRpb25zLgo+IEJ1dCBhcyBsb25nIGFz
IHRoZSBmaWVsZHMgd2UgY2FyZSBhYm91dCAoc291cmNlIC8gZHN0KSBhcmUgaW4gcGxhY2UsCj4g
d2UgdHJlYXQgYWxsIHZhcmlhbnRzIG9mIHRoZSBoZWFkZXIgdGhlIHNhbWUuCj4KPiBUaGUgcXVl
c3Rpb24gcmVhbGx5IGlzIGhvdyBtdWNoIHdlIHNob3VsZCBleHRlbmQgdGhpcyBzb3J0IG9mIHRo
aW5raW5nCj4gdG8gR1RQIGFuZCBzYXkgLSB3ZSB0cmVhdCBhbGwgR1RQIGZsb3dzIHdpdGggZXh0
cmFjdGFibGUgVEVJRCB0aGUgc2FtZTsKPiBhbmQgaG93IG11Y2ggdGhlIHVzZXIgY2FuIGFjdHVh
bGx5IGJlbmVmaXQgZnJvbSBjb250cm9sbGluZyBwYXJ0aWN1bGFyCj4gc3ViLWNhdGVnb3J5IG9m
IEdUUCBmbG93cy4gT3Iga25vd2luZyB0aGF0IE5JQyBzdXBwb3J0cyBhIHBhcnRpY3VsYXIKPiBz
dWItY2F0ZWdvcnkuCj4KPiBMZXQncyBmb3JnZXQgYWJvdXQgY2FwYWJpbGl0aWVzIG9mIEludGVs
IE5JQ3MgZm9yIG5vdyAtIGNhbiB5b3UgYXMgYQo+IHVzZXIgdGhpbmsgb2YgcHJhY3RpY2FsIHVz
ZSBjYXNlcyB3aGVyZSB3ZSdkIHdhbnQgdG8gdHVybiBvbiBoYXNoaW5nCj4gYmFzZWQgb24gVEVJ
RCBmb3IsIGUuZy4gZ3RwdTYgYW5kIG5vdCBndHBjNj8KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRl
bC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
