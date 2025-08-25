Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC34B33AB2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Aug 2025 11:23:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5FE4F61B4B;
	Mon, 25 Aug 2025 09:23:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x0jLZHLfwXtw; Mon, 25 Aug 2025 09:23:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C6AD261C72
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756113783;
	bh=OldsM0mTe0gUZlhTr/mMd3s5ex5qEiHcv6VNhYROMGQ=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=P74izdEkz7IyCb5T9qQH4PrwOia7wymntGJapz3SNhhcSowUaIHf9aiQiPrQkcSY0
	 v0jaYPhnOyw1fNqbhcmITvcw45m9BGuouzhy9AqXZzVFQBMEIeWQWG2oKriPzE/hUG
	 ayZbz8Fw6nOuakRbF1b+lEkVzA2TRgjZ8DJs4E5Es3F6FprG1WsGZSq+y1eCvzO0v6
	 q+9vo93go1s6Z0PfDguwUTyqcaJkMYPUMJi+C+PA+mB6rl0T3L/vTfYjYqD4TMzmoM
	 TAmkhhDf/Q1ICYEdCbA+sfzLHPM/wfKYO4LdY2FtWR7UEI7DiLIbXnjVAtUCUE2Ck1
	 7HaSE0MeICGwg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C6AD261C72;
	Mon, 25 Aug 2025 09:23:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1EDB0CA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Aug 2025 09:23:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0560641676
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Aug 2025 09:23:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uQhTszLKnnUk for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Aug 2025 09:23:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 511F3404F5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 511F3404F5
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 511F3404F5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Aug 2025 09:23:00 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Miroslav Lichvar <mlichvar@redhat.com>
Cc: Sebastian Andrzej Siewior <bigeasy@linutronix.de>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Richard Cochran <richardcochran@gmail.com>, Vinicius
 Costa Gomes <vinicius.gomes@intel.com>, Paul Menzel
 <pmenzel@molgen.mpg.de>, Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Jacob Keller <jacob.e.keller@intel.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
In-Reply-To: <aKwWiGkbDyEOS9-z@localhost>
References: <20250822-igb_irq_ts-v2-1-1ac37078a7a4@linutronix.de>
 <20250822075200.L8_GUnk_@linutronix.de> <87ldna7axr.fsf@jax.kurt.home>
 <aKwWiGkbDyEOS9-z@localhost>
Date: Mon, 25 Aug 2025 11:22:55 +0200
Message-ID: <87o6s3oivk.fsf@jax.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1756113776;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=OldsM0mTe0gUZlhTr/mMd3s5ex5qEiHcv6VNhYROMGQ=;
 b=XGt0pugQksHOTwpSgow0iV5dMvEriijJXSVyT5cmhLpalpOYBZ4L18xluXdzNq8rpxIRzH
 VVcuu2BBdpNxVpKT8uqfo733AyiGVK7YsOdLQdJCIllLhMm3BB43tvqpa93Itrgv7ThtBE
 YNRxRCPAQcCnbcGIXynbljUxqcVfVu3s7zNrc7h9coYGIF2gMREODnxwDjJgg28UbkQWnY
 P0h6N/DLd8IcTkGi0k5YUG5Tpo6S/7aRE20bOjzGsTEzg71vjWfp4G5pvqdLRqgg7c+gl2
 MtwLRLEa8mQvG+kp7pA8DYd30XOUh87MqbBxBV1J4Iwy7KPHaTutx4hwBD98iQ==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1756113776;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=OldsM0mTe0gUZlhTr/mMd3s5ex5qEiHcv6VNhYROMGQ=;
 b=46EqGMpoRP9YtsfP5Z5aq8RqQVNc2MIqjGwToDZkSZeJZNVAr/hdm0j6UIsYDvwi0Awaqp
 qWoMpRS+xf+7ihCw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=XGt0pugQ; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=46EqGMpo
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] igb: Convert Tx
 timestamping to PTP aux worker
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

On Mon Aug 25 2025, Miroslav Lichvar wrote:
> On Sat, Aug 23, 2025 at 09:29:36AM +0200, Kurt Kanzenbach wrote:
>> Also I couldn't really see a performance degradation with ntpperf.
>
> I was testing with an I350, not I210. Could that make a difference?

Jup, it could make a difference.

>
>> In my
>> tests the IRQ variant reached an equal or higher rate. But sometimes I
>> get 'Could not send requests at rate X'. No idea what that means.
>
> That's ntpperf giving up as the HW is too slow to send requests at
> that rate (with a single process calling sendmmsg() in a loop). You
> can add the -l option to force ntpperf to continue, but the printed
> rate values will no longer be accurate, you would need to measure it
> by some other way, e.g. by monitoring the interface packet counters.

I see.

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmisK28THGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgu1rD/9qUKqoJzxPjCwmyM7a0nf/OU96P6av
LtDv0y6jPOr/Mf62KBqI228u8HfdTxSyXV6gfuKG+xcklnwdkH5SeHHTYVIYzmIb
tIuoswVSL7CXj6+/GtUxGq3kK4MQIFiR6Qc/Gtz/v7r4HpPSW5NT0e5nmypL4APj
ic185xMi63zaoWBrSpLviaMh2piTyYHI5mOW0EwVPDAQ3Zu6kKXjJUHvxH++Y99y
jXv2QJGooEEboDMweJaL1vLlx9q/f7xFBABLXHnBXhdy1kFMGHr5c0eNmuAoHqU8
zdGus1oVrdUby/7n1Dp64tgQ3ZSG/meCF+aKTlpdTdHs7ikhFH6t0JJYvEg53QH5
QkIKEAgH6j4Dz5BkqUb7C1gXB+OFJ1xuTJ35Wpf0/OqM2xxm2SQVFnvitDdvarW2
lqI/CciQaSuL+nEwjGF7Hh9jC6ElLhffXrK9EyyvsTee4qhuv5xH+czHISPk8/3o
YfelX4qlAhQ6fqlzgGvn+ka+XS3Zl6KpZfvMoUCL8granrq++8YjAfsKkkjkBVCE
z9TGkAViao0ktKkYgFk19htzNx2xXx192V3kD/K3/CQ5T4bwasAqbimkovG2YwYe
nxtwgkf7AfbpLty6aosF4q8ZAu4rHEOW+Z/2iDn0OfP7pIeSWmlI6ReJ4/zUREH4
rcSt3nhUPrrpQg==
=rszz
-----END PGP SIGNATURE-----
--=-=-=--
