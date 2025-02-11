Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D092DA30EAA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Feb 2025 15:44:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8F38540B40;
	Tue, 11 Feb 2025 14:44:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VG9xuBt2kYNf; Tue, 11 Feb 2025 14:44:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CF824408D4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739285047;
	bh=frPQ2x9r1wmULVqXEPuuRGWbRtOiAHnDEcb1q1nENVM=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3xE1zMXeFYpCeJy3cTTrXjtw2Ntk3lwRCUakPc6YDrz98gIMzPAdq9lktgeAuMnaJ
	 HGueEe30vLXY7qAp7PPW5hP6ocVeCwh4SmVkXV9pQXbeUF/ZqBCBK7hL2uuA4Fj8ve
	 u0wRvVzHl6whWTDgfeUeWdD5Su2ThmMCNH8fuNkz/td4MMOnnLdgzziEOqWmJXJ1Vs
	 hEI1RDaPk4pi4Q8dELG6e2DM6PJ/khxOtTVuLOWbUso54h2O62qAc4xaGf4rqxWSZl
	 5GMFROieTyPfNNoRJqga6TsCLqM0CZV2kI18a/ORjRq/Sy6Gqjq6Urk7VojDtyWNrs
	 9JCk3xSm46hbw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CF824408D4;
	Tue, 11 Feb 2025 14:44:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id F3A66194
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 14:44:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D79A140FF5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 14:44:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AtJrtRqxrfFT for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Feb 2025 14:44:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org F1AB240BE2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F1AB240BE2
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F1AB240BE2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 14:44:04 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Joe Damato <jdamato@fastly.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
In-Reply-To: <Z6rAuqYnIzQH_gtN@LQ3V64L9R2>
References: <20250210-igb_irq-v1-0-bde078cdb9df@linutronix.de>
 <Z6rAuqYnIzQH_gtN@LQ3V64L9R2>
Date: Tue, 11 Feb 2025 15:44:00 +0100
Message-ID: <87ikpgr173.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1739285042;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=frPQ2x9r1wmULVqXEPuuRGWbRtOiAHnDEcb1q1nENVM=;
 b=q6Gweo1HpLPTyBz4O/b0+gHb0AFS4c6dQdiKDvQEFQbFtpCWmqRClopXiOKm2ja20L3EDJ
 v3e/lzpuJbTL78rNRg3709tFZ3fC+5dBZCchOQnbqwKWmp4jV+kUnD29E7AdiSRxik7t3f
 5INucZ8ohYQKmama5x68frM1kPvNtmScEqkTA/Y1WiabRwkE3XcgaFRd+c/eD6saJuLz14
 IsW8Wr1jlagNGSMY6tc1h7mBcNTVnj8jsqTa5KBDV1qnc4ynzE9H6ByFvCjp2pFA0TdNo+
 OqmJB0uE9G0IgvPHcAjEiuLhwwnbMXYrEeCaJsB/h50ENH21cU5A7DhwXGbVaQ==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1739285042;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=frPQ2x9r1wmULVqXEPuuRGWbRtOiAHnDEcb1q1nENVM=;
 b=q4fLvAWT5Vlkm8VWaTGtvYApBxoY3M+ZG18eAp42c3vISDHVfKuHKJeRJe173A/x6mzgIF
 DSbdLAn7j+ZNnnBw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=q6Gweo1H; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=q4fLvAWT
Subject: Re: [Intel-wired-lan] [PATCH 0/3] igb: XDP/ZC follow up
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Mon Feb 10 2025, Joe Damato wrote:
> On Mon, Feb 10, 2025 at 10:19:34AM +0100, Kurt Kanzenbach wrote:
>> This is a follow up for the igb XDP/ZC implementation. The first two=20
>> patches link the IRQs and queues to NAPI instances. This is required to=
=20
>> bring back the XDP/ZC busy polling support. The last patch removes=20
>> undesired IRQs (injected via igb watchdog) while busy polling with=20
>> napi_defer_hard_irqs and gro_flush_timeout set.
>
> You may want to use netif_napi_add_config to enable persistent NAPI
> config, btw. This makes writing userland programs based on
> SO_INCOMING_NAPI_ID much easier.

Thanks, that looks useful too. I'll add another patch to this series to
use netif_napi_add_config().

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmerYjATHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgupeD/0REufAXeovfQatLQDXtxRC5rNUMCRK
ZhJJ08SX1hSZ54M3vA7sX7pzDKg5YBXQIqBVvaE/fto8oWbc1OBM57g3vY8sMCF+
lctEZpn6VDxlRMj2YfJZ+tP3gnImXZlnnBbYgmUp0C+uIyDRPr99QpfohcM99sSm
5bakMC9RrJ64G4lxbIjLw5qyH+xGNZ4+WPoS2uVN3+Nn7llHUGY4Q3A6Wt0hcQg/
XzhdejD9voNkVG6blV5v2nIGNQk3Dq2nf3akAOUyFPxcEtco8ZDDhgnNlNjW4CbY
iWh+PQnsJgzmV7nxqH5j508V42rizJzfmawTjwPZKEYGC7PZqWjg5Qb+BcyXF0if
ZorUeesaOzxPgNLPNOJrqPWLzcX2ofF7lsYeROPuL/r5CHytIV9k5+Vk3Wgsv/2d
heoN+snGL/QcgotauSC04lZAhf3OsPXgK2lop1K5M7+w0KsZKbeBPoTKsuxngFXL
raYoiHLUWEUL8eXGB+hZdiOyFSkU4r1PsBvFIdrikD2F+MrQO+tORwUgOcDvr6Nk
IT8O+VDhXTNoFK2m2QMvHHVm6VP7MYROGoAubZmzSUwMVxoS0pCIz/2UIctLdJZT
Xx4L/HK6le1JEdIzkaNRS9B6KED9PZCVeWVkwIHgYMuWPbhQ610+A94wFHiCWJ8n
LPmzYjQ2ra/2aQ==
=xpvO
-----END PGP SIGNATURE-----
--=-=-=--
