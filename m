Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E0DEA7DBCBF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Oct 2023 16:36:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 70D7470BAF;
	Mon, 30 Oct 2023 15:36:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 70D7470BAF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698680168;
	bh=YcK3rNJaNWSukhmsdAPYxSzaqXi2TtR7Y8XJ1HTGUGA=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WvJir/4lIJR4zgT/2g2ALeev0SuHTLS1XuQvmmCceD/C9CRwSOO7CHgt67rvjXvEu
	 jkdAj9tiBK+YhSW7xxkVIiPrh8+oFe7Ksz5mOGK94vHzHgc9avN5bNiSJd7t/kRY2f
	 E5ORg9MJ68t0iN2jZn6L3oiavt+NjLAH7jAG+nZM5k+sAPDrs4F4EYKrlEE+bvBDId
	 X6CHP7B79Oeb/BvWHfTJLpjAbfezyxCjELm0YFPqA+inHgFDL5frAWEXNsxvOjUNln
	 JVNwAI4dSio5Dsb5IsNXSvS2wI/VHCZZ40/0ZQAMPSZoFlJ1PfjHx8zBRGAPzAcNO4
	 9SKXRMZyJuoCA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pAtG5dn0ADp5; Mon, 30 Oct 2023 15:36:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 47BC670925;
	Mon, 30 Oct 2023 15:36:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 47BC670925
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0728E1BF318
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Oct 2023 19:38:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DFCD87086D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Oct 2023 19:38:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DFCD87086D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bgHltZLRDzdg for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Oct 2023 19:38:21 +0000 (UTC)
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com
 [IPv6:2a00:1450:4864:20::62a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C750070869
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Oct 2023 19:38:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C750070869
Received: by mail-ej1-x62a.google.com with SMTP id
 a640c23a62f3a-9be1ee3dc86so344868166b.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Oct 2023 12:38:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698435499; x=1699040299;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=HResry5JndYeZBSzTVAWBwxzRl7+fUNF38GNSOea4NU=;
 b=TOiRCoHHDQWxXrDoa8zUR+aYpDgV/CAg/Z0sHKku5GuVpOu+M9VwkdbTR1FBJf6m7z
 fvj8/esoKQ6N2V2wyuYm3bwqoNDXE/25OIWGk8EPSI6Z6U4CoWUaqBNvvFriNkKdkeyE
 y43iz4F2k7mLOKaYcu8uO89xqvDEbilgC6fEO8W0aC3P75sPm50v4aoPPET5tPSv/ecd
 xt3S+wE1InUhT7yy/UxlQGoOj+2WdagdpYdixrsYfHFVWvBaWAwPGwYSjVxS/XyK3QP5
 vKR15oxARhb1BBmH3Wl4e6wXjpteL6wMM8ob2ma27Fl6IY6pm7axoadwb659S1gqCLhH
 cddw==
X-Gm-Message-State: AOJu0YzcAfgr5iB2ZrQ7couj4hE5UXeEq7I6O0Yuf/SNXIAFpR5ET8i1
 h34xs9ukVx7WW49jw85mi05tWAgsZnmwbQMEJgxaSQ==
X-Google-Smtp-Source: AGHT+IGfiH7/vZwPOYNJYfiPFBz2VHBIUsAkZ3hwTXH1qOBLB7kLIxeiWKyV6/erRjPKyouXW2aFwt8n98N0Q3p+tfY=
X-Received: by 2002:a17:907:9341:b0:9b2:b71f:83be with SMTP id
 bv1-20020a170907934100b009b2b71f83bemr3210322ejc.1.1698435498762; Fri, 27 Oct
 2023 12:38:18 -0700 (PDT)
MIME-Version: 1.0
References: <20231026-ethtool_puts_impl-v2-0-0d67cbdd0538@google.com>
 <20231026-ethtool_puts_impl-v2-1-0d67cbdd0538@google.com>
 <20231026220248.blgf7kgt5fkkbg7f@skbuf>
 <CAFhGd8rWOE8zGFCdjM6i8H3TP8q5BFFxMGCk0n-nmLmjHojefg@mail.gmail.com>
 <20231026222548.rqbp5ktgo2mysl6w@skbuf>
In-Reply-To: <20231026222548.rqbp5ktgo2mysl6w@skbuf>
From: Justin Stitt <justinstitt@google.com>
Date: Fri, 27 Oct 2023 12:38:06 -0700
Message-ID: <CAFhGd8r9Y2tavxA2KVpELm-SRdvD+iEmYW=s7tf_dPpmVT3WeA@mail.gmail.com>
To: Vladimir Oltean <olteanv@gmail.com>
X-Mailman-Approved-At: Mon, 30 Oct 2023 15:35:00 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1698435499; x=1699040299; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=HResry5JndYeZBSzTVAWBwxzRl7+fUNF38GNSOea4NU=;
 b=Jyiu3bXETdH5CDBwYaQ/3/wcrYF+LYqHKiNe9+7N2Pw5Bm/t5G4NBFr3giFTxl7K3G
 jyUs2/AutBCzLNDh3suoxGGJSN8NFbZuEVh+wtg2P2hzAVFq76qnBoUSkYzRtuqN2N0U
 /KaU1fLTpWBfx3paaTDJGMHBy2png3ADWAHUbQoXJYMHzx/SJ3kdBz4Aq3e0bFQeUdZ1
 nXvt4rJkOLsfvD8xtFlFk/jegtplnzrgx8gTbGZy3nXwJ/D4c/dLtZiBZRW4iaGr0mfX
 RvVQGnkNCyNhCwQi9Uf0afrWwKF3XquugHfD2AkaOONC5mFUDT9bNfwjhJo8ed6r40Yr
 jsuQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=Jyiu3bXE
Subject: Re: [Intel-wired-lan] [PATCH next v2 1/3] ethtool: Implement
 ethtool_puts()
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
Cc: linux-hyperv@vger.kernel.org, GR-Linux-NIC-Dev@marvell.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, oss-drivers@corigine.com,
 intel-wired-lan@lists.osuosl.org, linux-mediatek@lists.infradead.org,
 bpf@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVGh1LCBPY3QgMjYsIDIwMjMgYXQgMzoyNeKAr1BNIFZsYWRpbWlyIE9sdGVhbiA8b2x0ZWFu
dkBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gT24gVGh1LCBPY3QgMjYsIDIwMjMgYXQgMDM6MDk6NTlQ
TSAtMDcwMCwgSnVzdGluIFN0aXR0IHdyb3RlOgo+ID4gU2hvdWxkIEkgdW5kbyB0aGlzPyBJIHdh
bnQgbXkgcGF0Y2ggYWdhaW5zdCBuZXh0IHNpbmNlIGl0J3MgdGFyZ2V0aW5nCj4gPiBzb21lIHN0
dWZmIGluLWZsaWdodCBvdmVyIHRoZXJlLiBCVVQsIEkgYWxzbyB3YW50IGV0aHRvb2xfcHV0cygp
IHRvIGJlCj4gPiBkaXJlY3RseSBiZWxvdyBldGh0b29sX3NwcmludGYoKSBpbiB0aGUgc291cmNl
IGNvZGUuIFdoYXQgdG8gZG8/Cj4KPiAocmVtb3ZpbmcgZXZlcnlvbmUgZXhjZXB0IHRoZSBsaXN0
cyBmcm9tIENDLCBJIGRvbid0IHdhbnQgdG8gZ28gdG8gZW1haWwKPiBhcmVzdCBiZWNhdXNlIG9m
IHNwYW1taW5nIHRvbyBtYW55IHJlY2lwaWVudHMpCj4KPiBXaGF0IGlzIHRoZSBzdHVmZiBpbi1m
bGlnaHQgaW4gbmV4dCB0aGF0IHRoaXMgaXMgdGFyZ2V0aW5nPwo+Cj4gQW5kIHdoeSB3b3VsZCBh
bnl0aGluZyBwcmV2ZW50IHlvdSBmcm9tIHB1dHRpbmcgZXRodG9vbF9wdXRzKCkgZGlyZWN0bHkK
PiBiZWxvdyBldGh0b29sX3NwcmludGYoKT8KClRoZSBpbi1mbGlnaHQgc3R1ZmYgY29uc2lzdHMg
b2YgcGF0Y2hlcyBJIHNlbnQgY2hhbmdpbmcgc29tZSBzdHJuY3B5KCkgdXNhZ2UKdG8KCmV0aHRv
b2xfc3ByaW50ZigmZGF0YSwgIiVzIiwgc29tZXRoaW5nW2ldLm5hbWUpOwoKV2UgY2FuIHNlZSB0
aGVtIGhlcmUgWzFdLiBJIHdlbnQgZm9yIHRoaXMgYXBwcm9hY2ggaW5pdGlhbGx5IGJ1dCB0aGVu
CmRpc2N1c3Npb24gY2FtZSB1cCBhYm91dCBpbnRyb2R1Y2luZyBldGh0b29sX3B1dHMoKSB3aGlj
aCBub3cKbWFkZSBteSBwYXRjaGVzIChzb21lIGFjY2VwdGVkIGludG8gbmV4dCBhbHJlYWR5KSBz
ZW1pLW91dGRhdGVkCmFuZCBpbiBuZWVkIG9mIGFub3RoZXIgc3dhcCBmcm9tIHNwcmludGYtPnB1
dHMoKSAtLSBoZW5jZSB0aGlzIHNlcmllcy4KCkFzIGZhciBhcyB0aGUgcmViYXNlLCBJIHNpbXBs
eSB0b29rIG15IGNvbW1pdHMgYW5kIHBsYWNlZCB0aGVtIG9uCnRvcCBvZiBuZXh0L21hc3RlciBh
bmQgZ290IG1lcmdlIGNvbmZsaWN0cyB3aGVuIGV0aHRvb2xfcHV0cygpCndhcyBwbGFjZWQgYmVs
b3cgZXRodG9vbF9zcHJpbnRmKCkuIEFsbCBJIGhhdmUgdG8gZG8gaXMgbW92ZSB0aGUgaHVua3MK
YXJvdW5kIGJ1dCBzaW5jZSBJIGZvcm1hdHRlZCB0aGUgZmlsZSBpdCdzIGFwcGVhcmluZyBpbiB0
aGUgZGlmZi4gdjMgd2lsbApiZSBhIGNsZWFuIGRpZmYuCgoKWzFdOiBodHRwczovL2xvcmUua2Vy
bmVsLm9yZy9hbGwvP3E9ZGZiOmV0aHRvb2xfc3ByaW50ZiUyMEFORCUyMGY6anVzdGluc3RpdHQK
ClRoYW5rcwpKdXN0aW4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3Ns
Lm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJl
ZC1sYW4K
