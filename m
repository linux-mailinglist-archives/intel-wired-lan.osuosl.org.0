Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B7023CB3286
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Dec 2025 15:34:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 684F4608E2;
	Wed, 10 Dec 2025 14:34:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k-gOOXQDtEsG; Wed, 10 Dec 2025 14:34:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BF0DA60898
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765377295;
	bh=GXu+C6jn4wjNW66trWRFDg4n3Pcoz6KWv3Dl/BCG4/U=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BkwP/ehYgvea1X0sl3G1uvjVj6S4FLncW1/1vhLAtEMCSrg/WZxCwfau9aNl3JBGn
	 5Ah9GqivrcY/AEiY+tzXEAQZ2tc0dAwSMapn4u27/5vPEqkhSKqT4F2dVAFBMokDwR
	 Qv4K0NnINI1ow0ClW5BP8tC3e/CF1BuxY+W/FPOOfPPps/CLVSwM9X0MUq0lwXFJU9
	 YgyERBTzJpv18D8k4ZRzyoXtZdN3m1U7Jy9+jpFphBZWsF+js0fYCbNC1MZYsaF6zX
	 Kq3FpoF8/G3aaiSooeFBzRQ27kHCp9hwSuAgVC3o4RVArCLlFzRQTOeBTUeT5E1B86
	 P+KXXyzxJ8f9A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BF0DA60898;
	Wed, 10 Dec 2025 14:34:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9E8E8E7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 14:34:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 90C0F40804
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 14:34:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V8FHaLD-TFaL for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Dec 2025 14:34:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=kurt@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B15CC407CA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B15CC407CA
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B15CC407CA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 14:34:52 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: "Behera, VIVEK" <vivek.behera@siemens.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Eric
 Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo
 Abeni <pabeni@redhat.com>
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
In-Reply-To: <AS1PR10MB5392E7164825969656D966CB8FA0A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
References: <AS1PR10MB5392B7268416DB8A1624FDB88FA7A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
 <4c90ed4e-307c-429a-9f8c-29032cc146ee@intel.com>
 <AS1PR10MB5392C71EED7AB2446036FB9F8FA3A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
 <AS1PR10MB539202E6B3C43BE259831AD88FA3A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
 <IA3PR11MB89863C74B0554055470B9EE0E5A3A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <IA3PR11MB8986E4ACB7F264CF2DD1D750E5A0A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <AS1PR10MB5392FCA415A38B9DD7BB5F218FA0A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
 <878qfaabgn.fsf@jax.kurt.home>
 <AS1PR10MB5392E7164825969656D966CB8FA0A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
Date: Wed, 10 Dec 2025 15:34:46 +0100
Message-ID: <87tsxymmm1.fsf@jax.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1765377287;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=GXu+C6jn4wjNW66trWRFDg4n3Pcoz6KWv3Dl/BCG4/U=;
 b=T6j3yqIVmBeB0ZISQ7pXgIvc+wlse/GfbOpdZTxduJssaJ+ou0LW7vpx+FNuqPsJLYj1rI
 TjLshd3OS52nWERDFmkRTgLsq/HnJwMsgmUQNgB4LS3rrGh/wsWUlIpcM2rgD2RfDQf7Vj
 mtlFN5JUhmSWkrCuPtGQeb366BI1jjgq5FuFBoClOuQlnIUQYiC3HhV8jLlpmJyFog+bUx
 d2NSXeVsK+elSnZ1vUHLZjIvxUwvzyu2uudDaFzK7rIqKbA1lAOlQ0pXW1IH2GpFqiBKVF
 uA3UYmPH+4jshBxw+xttRHEkOmPfLyr11iOOnjcX3ubwKoKkbdTfmh98JtJtCQ==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1765377287;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=GXu+C6jn4wjNW66trWRFDg4n3Pcoz6KWv3Dl/BCG4/U=;
 b=qo4CQNBpydMgYbtx5IzbN0U3qtcMhvxqHRnrhntUgZhqptowtBxu/gQTW3kDa0pDyPSGfJ
 KfBH2p47p9CRN8Dw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=T6j3yqIV; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=qo4CQNBp
Subject: Re: [Intel-wired-lan] [PATCH v5 iwl-net] igc: Fix trigger of
 incorrect irq in igc_xsk_wakeup function
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

On Wed Dec 10 2025, Behera, VIVEK wrote:
> On Wed Dec 10 2025, Kurt Kanzenbach wrote:
>> On Wed Dec 10 2025, Behera, VIVEK wrote:
>>> Changes in v5:
>>> - Updated comment style from multi-star to standard /* */ as suggested by  Aleksandr.
>>>
>>> From ab2583ff8a17405d3aa6caf4df1c4fdfb21f5e98 Mon Sep 17 00:00:00 2001
>>> From: Vivek Behera <vivek.behera@siemens.com>
>>> Date: Fri, 5 Dec 2025 10:26:05 +0100
>>> Subject: [PATCH v5] [iwl-net] igc: Fix trigger of incorrect irq in
>>> igc_xsk_wakeup function
>>>
>>> This patch addresses the issue where the igc_xsk_wakeup function was
>>> triggering an incorrect IRQ for tx-0 when the i226 is configured with
>>> only 2 combined queues or in an environment with 2 active CPU cores.
>>> This prevented XDP Zero-copy send functionality in such split IRQ
>>> configurations.
>>>
>>> The fix implements the correct logic for extracting q_vectors saved
>>> during rx and tx ring allocation and utilizes flags provided by the
>>> ndo_xsk_wakeup API to trigger the appropriate IRQ.
>>>
>>> Changed comment blocks to align with standard Linux comments
>>>
>>> Fixes: fc9df2a0b520d7d439ecf464794d53e91be74b93 ("igc: Enable RX via
>>> AF_XDP zero-copy")
>>> Fixes: 15fd021bc4270273d8f4b7f58fdda8a16214a377 ("igc: Add Tx hardware
>>> timestamp request for AF_XDP zero-copy packet")
>>> Signed-off-by: Vivek Behera <vivek.behera@siemens.com>
>>> Reviewed-by: Jacob Keller <jacob.keller@intel.com>
>>> Reviewed-by: Aleksandr loktinov <aleksandr.loktionov@intel.com>
>>
>> Hi,
>>
>> thanks for this fix. Does the same issue also exist for i210 in the igb driver? The igb driver also has this split IRQ configuration with 2 queues. Might be good to fix this one as well :).
>>
>> Thanks,
>> Kurt
>
> Hi Kurt,
>
> The issue so far has not popped up in i210 igb driver for XDP ZC send
> but will impact the xsk_wakeup attempting to wakeup the RX irqs or
> both Rx and Tx (for.e.g in xsk_poll) if IRQ configuration is with 2
> queues. Essentially same logic submitted in the patch is needed for
> igb. I am preparing a patch for the igb aswell.  However, I would wait
> for submission until I manage to resolve the formatting and other
> guideline related issue pointed out by Jakub in the igc patch.

Sounds great. Thanks!

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmk5hQYTHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzguaED/0RHqQGYwR2cNrg6ozr/W/x0636Bc7C
V1E1anymBBnf18gJPwYvFBPLlxcUsId07oOEVPRI9E2NMj0/0DGFedzUX+WNqspB
ncAOU075/J/IH7sVtbra5VKqg5dDkSnBSgCGpFY8P0RoAoJAJhiMEd30fQjE5PUm
mqNslkKqWQ+llA/8Vwp2tZEZYvOKGXQofPGq1NVX4E/bbxHl1z4ThlCc0FOniMJT
mIueeuQLNM+EwC5g5hXzkEfcmMsOYgjPd8waVd8AWc4wOBN7SFb+r2OHWQN6YsMx
e+NHzm6aZs+H6TaGjAbrTVJzd/7osBMefOK5d1i1QCuPoTLQMtNv3Nr0usFDw8sW
nCR8/43nVv6Ho5Y1uL+pGKlnLtnAoqQjkFFjp59CTrgKKxQAbrIQZwHtJYlcJ3Ir
E47s51QmBafxYKKpqMmqWvhjIKp51vJ+ciJfWtLRCMSqm0q+skERvvzGbAawM62R
AbsL2a7OzrN+bu94XaIWKjmqjJsHhHGvCVuAjMG98EChbqVdRlgH3he6XuZ1HegX
ngeZOW7ViGWOkLa3YgxFuW8+c480VqQ48uaA+2RkYFy/kihPfalsf+NtLGpxJfMk
UQcttAUhQrWIGcZrPul76QTeOHBopj59HoQrriatrJUWRSgpduwdkAnbYzX+BE79
IMypurogsOBBug==
=lLxh
-----END PGP SIGNATURE-----
--=-=-=--
