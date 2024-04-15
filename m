Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 660418A4D2F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Apr 2024 13:02:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0C251406A2;
	Mon, 15 Apr 2024 11:02:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NWNUwL3Sr_rQ; Mon, 15 Apr 2024 11:02:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 29144406E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713178955;
	bh=Iup/E2Z1WjEWPfxFDQcDvpZjGXHr6zId0gCi5u7ymqw=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=O9Bgwuj9S35HIsffIiMxKVDyEEksnu+pdm7w/biRoRniBsTD+AibbLbccWmHBC2jG
	 O5drbC29C/ui95ItGw5efsOoM3z6DRqMAwxYlgTYcQ82funyOTN6j6OmsLLg0Auvcs
	 UKel0IjsO4ASh/HBVAeZkfuCNhxIEzLUEJeFIhejJvBnzeeOjbrpoNv7P25tta6oro
	 vwrv6vO5k8x5OJtL0GW5wEwQfc8Xj3Z/SkqKSHZBx+BgqCJhdza1efq3dNg2oR873L
	 kr73829xDHAC6Ei8CXAAC0qiNCp4tFv8mWJ4r30vPoI3kPodEjFWlsf9JwcANQKP6s
	 y9y9y4KaDTI0A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 29144406E0;
	Mon, 15 Apr 2024 11:02:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 275A51BF296
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Apr 2024 11:02:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0FC9D406E5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Apr 2024 11:02:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id q_X7fxBiuN6O for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Apr 2024 11:02:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=kurt@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EB742406A7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EB742406A7
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EB742406A7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Apr 2024 11:02:17 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Lukas Wunner <lukas@wunner.de>, Roman Lozko <lozko.roma@gmail.com>
In-Reply-To: <877ch0b901.fsf@kurt.kurt.home>
References: <20240411-igc_led_deadlock-v1-1-0da98a3c68c5@linutronix.de>
 <Zhubjkscu9HPgUcA@wunner.de> <877ch0b901.fsf@kurt.kurt.home>
Date: Mon, 15 Apr 2024 13:02:14 +0200
Message-ID: <87zftukhxl.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1713178935;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Iup/E2Z1WjEWPfxFDQcDvpZjGXHr6zId0gCi5u7ymqw=;
 b=YeAUzIjafFVlWbU1pQ9y8y+2P+9UB8Is9zbnnVTOS+U7e9uww22L5/mDdCGNZBYZC/LZqg
 eb9zKRiAcJuSXfs7akEJRudSoFsUKbEQyn2T73zRTQJvQgON5B8m6Cs+foX+cIg9P13muZ
 aXyuH8Tg7VqumsZcj4sNJvtv7YMbIkx4pxxAyflu6BolIHAoXMcfx/cwoo4Yo3QzDK2qkW
 PfKN2Nx0KWkWO8W2FdTj69lq+gkRWOS3ysQC7GKUgIcyim5CnYVPcgJEY9uk+tL4agYeko
 631VPRBf+6x8nBafPwK4sxnh4v5hhcyiSK4qDiZhhh23GbaWvEphnMThDHKmmw==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1713178935;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Iup/E2Z1WjEWPfxFDQcDvpZjGXHr6zId0gCi5u7ymqw=;
 b=JTYhWBoSpOWfwwzFaW5Sl9JOi1z+jl3L4JWydwgAzR4GuFjZAzfxsWXaIQt4Bpiq5puYAF
 7BGSjlR1WORM5ADA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=YeAUzIja; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=JTYhWBoS
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] igc: Fix deadlock on module
 removal
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
Cc: Andrew Lunn <andrew@lunn.ch>, Sasha Neftin <sasha.neftin@intel.com>,
 intel-wired-lan@lists.osuosl.org, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--=-=-=
Content-Type: text/plain

Lukas,

>> I would have been happy to submit a patch myself, I was waiting
>> for a Tested-by from Roman or you.
>
> Perfect. I was wondering why you are not submitting the patch
> yourself. Then, please go ahead and submit the patch. Feel free to add
> my Tested-by.

Scratch that. I've sent v2 with your SoB. PTAL, because your original
code snippet didn't have a SoB.

https://lore.kernel.org/netdev/20240411-igc_led_deadlock-v2-1-b758c0c88b2b@linutronix.de/

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmYdCTYTHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgsf3EACno5JgtsdefQPawYHdXfivHhXfpDK6
s7wTlGnEk1GOdVN5Z7RfiOu+82Fyyhw+fLoxCa9AsezeSHFWduGwJPR5BFG7FMP1
+mP4i5T/X1naOgi0RU/IO/Md2u9UO7CgeELbOTMwv3B9ETD6dyd7ZIDl/lSUzgr2
dzRud16ri0O7pQvmwOEdO8C6utcVbKYZ+umDcCvRBKSeVJ/HnuPXmexFFtBy7wlI
gseiIM38HJfUVZ1O1glf9FG9kt8Z8YJ4ETmTyGiu2nmC/zp3Jcd7Lc1LkZ1oQhMp
cfAKgBAZQQ7bUVAtaiAR+xe6dm1tgOVYgwtB3lZmJ9j0XTtPBkAIvqmR4bOKx5PL
OrqgzWgdtkbLJWb89MOinnN/EOQL00BAVn/nhhqUTsaaETTzXrLmyqsxjpU8uvzA
CoJzUsf5Yt4nZwHsVDFqTUNPF5mwkSF2+Vr3fLwdPzmb5ZxgpyEIPo6lAKcinyKR
8cxGW8Qy1ArGRuQR7y8MUOIYHFupXQDtJvhqFT28vEwm4fk8BfexWefgEdabO0FE
PJyI2m2Y1gHzNn+fkmTCKxtBcZsixMgjRAomkcYtnYDUqJfO/boaVwAI0IiHTGK4
WbJ+T5slDNT5CZgT/jfuqrSWCB6+4id8qkUP/ObLDRcyx1vuTJH77Gumljd6tdxy
ILHI2R31Mdz10g==
=394O
-----END PGP SIGNATURE-----
--=-=-=--
