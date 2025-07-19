Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BA27FB0B1B2
	for <lists+intel-wired-lan@lfdr.de>; Sat, 19 Jul 2025 22:00:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6600484816;
	Sat, 19 Jul 2025 20:00:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DqrOmNk9ggoe; Sat, 19 Jul 2025 20:00:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 78416847E4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752955247;
	bh=65wYKNNiN0OWhVJHpyXS9dHS9Q9ryxSmjNGIVHYwGAE=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cV47HFEggz+khqHnOMQknHLFEYUsIzF9VxS0RWbSOLYN/TuMccKqYo4EXxR8vrU88
	 tIp0HhQkbxyflT+VAkZ14K4WUJgEOFY9J+pjywxS34S1A7WuVdR1NijVm2SSML+Z7V
	 zcju1qY+GZglfY2ZfW5Hd1DDL5KfqKc0+RNh9VCrMGvwX5w2S4PE8bYKf0141B46Vh
	 +lqarLFz+jwCdwbs3M5ok9o13z1+Cc5uJ5uGRszfoYQ7YCkqzRNgKoqWfYSZGINPi7
	 FJUfbNsn2seWOdtBcFwZKr5Vq/CnVT0DetFlE8yeqdWUW68YCeNFHcZxaJXDgBr3bI
	 3ISj1MEzYkP3w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 78416847E4;
	Sat, 19 Jul 2025 20:00:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id ACF00DA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Jul 2025 20:00:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 92DD5847DA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Jul 2025 20:00:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JCK_K3OyF1u3 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 19 Jul 2025 20:00:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=tglx@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B99A484036
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B99A484036
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B99A484036
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Jul 2025 20:00:45 +0000 (UTC)
From: Thomas Gleixner <tglx@linutronix.de>
To: Markus =?utf-8?Q?Bl=C3=B6chl?= <markus@blochl.de>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Richard Cochran <richardcochran@gmail.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 markus.bloechl@ipetronik.com, John Stultz <jstultz@google.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
In-Reply-To: <20250709-e1000e_crossts-v1-1-f8a80c792e4f@blochl.de>
References: <20250709-e1000e_crossts-v1-1-f8a80c792e4f@blochl.de>
Date: Sat, 19 Jul 2025 22:00:42 +0200
Message-ID: <87ldokuf11.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1752955243;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=65wYKNNiN0OWhVJHpyXS9dHS9Q9ryxSmjNGIVHYwGAE=;
 b=2TcXCo4kTAYDprE+PALaELz8GYMYcdWTfms5ddUBjZyRax99Gv3HNw4OEkvZe47ezBzBVV
 IZx6/60JHyeJ6cDI67E8aK9rXzCTcQUQ36605TvN23klGNqJ0EvjB5fGWcLjlkv7zn7KTm
 bwjc8JP41IcktvgB8KqLEwOKYsPrpNXenM8LK91zPyOIbfRn12rKRtGq85Frx3h/ExJhsZ
 GhB2Cq+aLq89R/Qw3RYpF7QWNY4JgNmLwtrmB63tC8CKqs7We47OCpvNIIK0wNX7cpXTHP
 BnqcJbLXlh4KlI6rCpXYZ8/HVzn4Aybk3KU/QE3HKQOXG7qJq3tS7XgAVnIxNA==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1752955243;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=65wYKNNiN0OWhVJHpyXS9dHS9Q9ryxSmjNGIVHYwGAE=;
 b=499HiW9ZxcprVMIWlEO6AZRhZ5gXR1gUuVmPG+11dRqb4fw1C2HOknupPgqkTWc8c4GSQa
 9oXsN0T5bzoqPKBA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=2TcXCo4k; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=499HiW9Z
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: Populate entire
 system_counterval_t in get_time_fn() callback
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

On Wed, Jul 09 2025 at 16:34, Markus Bl=C3=B6chl wrote:

> get_time_fn() callback implementations are expected to fill out the
> entire system_counterval_t struct as it may be initially uninitialized.
>
> This broke with the removal of convert_art_to_tsc() helper functions
> which left use_nsecs uninitialized.
>
> Assign the entire struct again.
>
> Fixes: bd48b50be50a ("e1000e: Replace convert_art_to_tsc()")
> Cc: stable@vger.kernel.org
> ---
> Notes:
>
> Related-To: <https://lore.kernel.org/lkml/txyrr26hxe3xpq3ebqb5ewkgvhvp7xa=
lotaouwludjtjifnah2@7tmgczln4aoo/>
> ---
>  drivers/net/ethernet/intel/e1000e/ptp.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/e1000e/ptp.c b/drivers/net/ethern=
et/intel/e1000e/ptp.c
> index ea3c3eb2ef2020d513d49c1368679f27d17edb04..f01506504ee3a11822930115e=
9ed07661d81532c 100644
> --- a/drivers/net/ethernet/intel/e1000e/ptp.c
> +++ b/drivers/net/ethernet/intel/e1000e/ptp.c
> @@ -124,8 +124,11 @@ static int e1000e_phc_get_syncdevicetime(ktime_t *de=
vice,
>  	sys_cycles =3D er32(PLTSTMPH);
>  	sys_cycles <<=3D 32;
>  	sys_cycles |=3D er32(PLTSTMPL);
> -	system->cycles =3D sys_cycles;
> -	system->cs_id =3D CSID_X86_ART;
> +	*system =3D (struct system_counterval_t) {
> +		.cycles =3D sys_cycles,
> +		.cs_id =3D CSID_X86_ART,
> +		.use_nsecs =3D false,

This is again the wrong place to fix this.

> +	};
>=20=20
>  	return 0;
>  }
>
> ---
> base-commit: 733923397fd95405a48f165c9b1fbc8c4b0a4681
> change-id: 20250709-e1000e_crossts-7745674f682a
>
> Best regards,
