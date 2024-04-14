Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DCFA8A417C
	for <lists+intel-wired-lan@lfdr.de>; Sun, 14 Apr 2024 11:15:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1409740188;
	Sun, 14 Apr 2024 09:15:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xSVIOMoNXKXL; Sun, 14 Apr 2024 09:15:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1D0B64019D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713086136;
	bh=22LCWs6JU/zxgBjYTEA2rm5irDIXx8aJeQExD/3BR+A=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pR/KDW/5cQUKAzGzbicV3ZqxRtqHf2oG48l/eTFYLqrYA8a2QqDq/jK6KP1+zVVq9
	 45ANg+d5eZD8+g3TYPDNM5dWX+b86p04CpW0qLWB7tul0i+95jO35zAsFHv7hlAns8
	 eSn4PwMQqM6vO1KAsbHbkXHEoA+/nJ9DbeFZinfgPhmnqC0a0hkc77pJMQ1V8dA0yM
	 PGqpxPf/G21fFst/7xB+4JPvIwyq6pq7Xoh92uK+pBvo7EuLF5AnePrBk2c8Brd6gA
	 15Z0gZJyiVEo+Sm/5vg2qsy6+KhXAvnoo+vAJKSa2GeXYCMsf/ZK5XnDUGoY78VNP4
	 YLbZ1pawUIT4g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1D0B64019D;
	Sun, 14 Apr 2024 09:15:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 155161BF28C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Apr 2024 09:15:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0DAA340137
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Apr 2024 09:15:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Jl6QhWnIBjO2 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 14 Apr 2024 09:15:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=kurt@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D2B30400FD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D2B30400FD
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D2B30400FD
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Apr 2024 09:15:32 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Lukas Wunner <lukas@wunner.de>, Roman Lozko <lozko.roma@gmail.com>
In-Reply-To: <Zhubjkscu9HPgUcA@wunner.de>
References: <20240411-igc_led_deadlock-v1-1-0da98a3c68c5@linutronix.de>
 <Zhubjkscu9HPgUcA@wunner.de>
Date: Sun, 14 Apr 2024 11:15:26 +0200
Message-ID: <877ch0b901.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1713086128;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=22LCWs6JU/zxgBjYTEA2rm5irDIXx8aJeQExD/3BR+A=;
 b=Oe9sEK6Rd10dd0rlosxkYryx2N/7YAQTA8PO+pdHoU6IEnc3sqyPAVtq/hKpCrsVU/QrN1
 Qrm6rWUA0YOs/u0UlKzoQ5a65SLekr4SDXws4ZFEz+YZU7T5bUJYSIsFsjX0eggr8LB8wy
 86rohHnA/d/5iJgco4rVgVld1w6XenUftmEfmpd/IUAQDAE8mAMgJc7PHVz9nGFEilLZ3L
 OcsoZnQRej3+wa9meGW11bHMNWfBJGtFS7KNeX2yZwJUzTvCqtWsWXdlLSB+WIa21BSUdd
 XhQhcpjnPqJbBLMDqMxVCsfdqoNUCPsIttD6kRv2BaXZLW8zHjI14vByrKd/Jg==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1713086128;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=22LCWs6JU/zxgBjYTEA2rm5irDIXx8aJeQExD/3BR+A=;
 b=5IYxmnEFWUysnFHuwgw1UfVvvIrXJX317xHObbSrLE22Sf8nO/G+sSRjTCxbLkksRWUdW2
 PN3L52ehQUgQohDA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=Oe9sEK6R; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=5IYxmnEF
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
Content-Transfer-Encoding: quoted-printable

Hi Lukas,

On Sun Apr 14 2024, Lukas Wunner wrote:
> [cc +=3D Roman Lozko who originally reported the issue]
>
> On Sun, Apr 14, 2024 at 09:44:10AM +0200, Kurt Kanzenbach wrote:
>> unregister_netdev() acquires the RNTL lock and releases the LEDs bound
>> to that netdevice. However, netdev_trig_deactivate() and later
>> unregister_netdevice_notifier() try to acquire the RTNL lock again.
>>=20
>> Avoid this situation by not using the device-managed LED class
>> functions.
>>=20
>> Suggested-by: Lukas Wunner <lukas@wunner.de>
>> Fixes: ea578703b03d ("igc: Add support for LEDs on i225/i226")
>> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
>
> This patch is almost a 1:1 copy of the patch I submitted on April 5:
>
> https://lore.kernel.org/all/ZhBN9p1yOyciXkzw@wunner.de/
>
> I think it is mandatory that you include a Signed-off-by with my name
> in that case.  Arguably the commit author ("From:") should also be me.

I was a bit unsure how to proceed with that. See below.

>
> Moreover this is missing a Reported-by tag with Roman Lozko's name.
>
> AFAICS the only changes that you made are:
> - rename igc_led_teardown() to igc_led_free()
> - rename ret to err
> - replace devm_kcalloc() with kcalloc()
>   (and you introduced a memory leak while doing so, see below)
>
> Honestly I don't see how those small changes justify omitting a
> Signed-off-by or assuming authorship.
>
> I would have been happy to submit a patch myself, I was waiting
> for a Tested-by from Roman or you.

Perfect. I was wondering why you are not submitting the patch
yourself. Then, please go ahead and submit the patch. Feel free to add
my Tested-by.

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmYbnq8THGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgpWsEACe07fEP5jsHlnLQYv+N0UEBa0gqAlt
Y17BtyVPOongY6Ge9rwriuFpRkVKe9hDU3DMtEDtElaERsGY5/q62QEHdSFz2Xph
8swJ6gm3APXfuDHo/ojcRhiYZq72LtQC1BzpK1GmoubBxuCEClgD8CbLk796aSdC
KGJ7ZHOlcncGQRBtXb3BGeO8OJ/3W4HxFxWxiuAaMyA0C/IJYEQHkf2tkEuRPlt4
wRDSWwe1kiOCk/XNcfQyoGGgQLTRwxmNhMbsisXT2OWUOP79yqhEI5uEiBZvTDdN
NeEkYLEn2RyFzVBgF4x4qdjkXWhEyXoK3xZ7widWaYv8OK9ApXyqrAe2ETpfm7Cl
ZyysXawhtREtOEHi9Ngx+CFYqMPAZogsBCF+DJFCdJbGH36ltFiM04JCWRuxSnfA
izD3Qe/jDutHQXUCVk7DOpDBLLzDq+aAusHMPCG+aGf3SPGMSiFPtSLCFD/A3O1O
8t5/X49C2zgdKmVkunN4iLdwA9UrXb6ZikuMNT0D/1r2KRaYyY1OPSvCR5lU3HQ0
E7ASKm7MmUoFmpVvNcrmfEXUyUyPHCa1I6E4GTJ4auivuPOv/JUeFxxvoM94mMWD
O9/PljgDLwjg8O3kxkKKBlH6aiKiQ0UsocWh4oX9ZWHlGqKzkPNBLES/KmmhtxwS
Dr0nzYMcgyF79g==
=viC8
-----END PGP SIGNATURE-----
--=-=-=--
