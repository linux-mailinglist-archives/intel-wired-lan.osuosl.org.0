Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 433E293AD27
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jul 2024 09:26:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 69A90813FD;
	Wed, 24 Jul 2024 07:26:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EPEfeL71zmhn; Wed, 24 Jul 2024 07:26:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6322F813F2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721806005;
	bh=WwPcpHBB8UQw4eHBQ9hxHNDfTRztoG00yWXTlWR3DtM=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Mfihr9hy17qNVWKYLNWzLfbhreWOFPuZF6y08+0LFJ9jajSpogdMU98xGmMIgFxq+
	 sSdXzVQGn5xKVv6gwQLPHKBAaOPbcDp9d5CPgQLIwk4/pYLNi/wgYwVF47LaGygdvU
	 05jZhnbvcuEO9J9g9LGtRGKmeak+yTq9GVgpIK+byo0ClldZgDOBVTVw/j/vOCy5ye
	 UYywzNsjwaQ3p4u6CESDP+lP6KDMbv1maUn8VRznFN2gPx5Lm0M3a3DRQrcqUxEyYY
	 uw6+RD35cJNhVaWemySiZUFQmizWR3NqNg+nK5K7C0HNjX1X9UgX/jj9lX38R3ChvA
	 GB7qPHVVfurYA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6322F813F2;
	Wed, 24 Jul 2024 07:26:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8FF0C1BF280
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 07:26:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DF73A813AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 07:26:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id F6or_4gFS_qE for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jul 2024 07:26:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C472A813F1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C472A813F1
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C472A813F1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 07:26:40 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Brett Creeley <bcreeley@amd.com>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <3f8aef95-e7f8-4c47-9b19-a2ba90c4a532@amd.com>
References: <20240611-igc_irq-v2-1-c63e413c45c4@linutronix.de>
 <3f8aef95-e7f8-4c47-9b19-a2ba90c4a532@amd.com>
Date: Wed, 24 Jul 2024 09:26:35 +0200
Message-ID: <87cyn3jln8.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1721805997;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=WwPcpHBB8UQw4eHBQ9hxHNDfTRztoG00yWXTlWR3DtM=;
 b=C0YSs3yTMp85z8smw547mEX4fJxzlvm9DVyXBatY5UpiYSNJz5E423bHxOQfCVPH/8AOsC
 lrXARGtga7iYG8qa+Jz9S+qwAN0VYlO0E972AlDhR4V3f/zBuCYdtG67/+tYJGIOmPUv2Y
 rzVkOoyRsPFVhxopOVxAjNk+CY7cqF9dU1dLVB1PWtBD30DXORMZJFFzDFSeHRHfQg1wNF
 jjK112gocu8Go+vpjkqMIQt8Uptmc1/SbJe83SLygRjsCM8aMcxzymTGHz5RfvnQClpA/Q
 MySsJPzYvq2mPOkkmMC8ukTt4QvyWS0ugTQyORNogAU7roFoboEo18aqiST3Eg==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1721805997;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=WwPcpHBB8UQw4eHBQ9hxHNDfTRztoG00yWXTlWR3DtM=;
 b=hwUkgqQKeNZAhfOKnkPaWr8313ZfX6HRxpOCJrrOl2QlRJMxcip7+tnhwpuD0TBELzNXkF
 q4Gu+5C1tu53tBAg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=C0YSs3yT; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=hwUkgqQK
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] igc: Get rid of spurious
 interrupts
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>, netdev@vger.kernel.org,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Tue Jul 23 2024, Brett Creeley wrote:
>> @@ -5811,11 +5815,29 @@ static void igc_watchdog_task(struct work_struct=
 *work)
>>          if (adapter->flags & IGC_FLAG_HAS_MSIX) {
>>                  u32 eics =3D 0;
>>=20
>> -               for (i =3D 0; i < adapter->num_q_vectors; i++)
>> -                       eics |=3D adapter->q_vector[i]->eims_value;
>> -               wr32(IGC_EICS, eics);
>> +               for (i =3D 0; i < adapter->num_q_vectors; i++) {
>> +                       struct igc_q_vector *q_vector =3D adapter->q_vec=
tor[i];
>> +                       struct igc_ring *rx_ring;
>> +
>> +                       if (!q_vector->rx.ring)
>> +                               continue;
>> +
>> +                       rx_ring =3D adapter->rx_ring[q_vector->rx.ring->=
queue_index];
>> +
>> +                       if (test_bit(IGC_RING_FLAG_RX_ALLOC_FAILED, &rx_=
ring->flags)) {
>> +                               eics |=3D q_vector->eims_value;
>> +                               clear_bit(IGC_RING_FLAG_RX_ALLOC_FAILED,=
 &rx_ring->flags);
>> +                       }
>
> Tiny nit, but is there a reason to not use test_and_clear_bit() here?

I believe that question was answered by Sebastian on v1:

 https://lore.kernel.org/all/20240613062426.Om5bQpR3@linutronix.de/

Other than that no particular reason.

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmagrKsTHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgtqlD/9840bSvad5sfDPGwDqHEMRVD28DlrR
riWOVpqpBnhm4bdneFbVaMHZCCAQuErE1e1SB0J3wowtSj7Du/+JjXgtvKeK/T1L
Zp4+oNlaYk/JzujT+ldKGBoRMXkilWa+OoFZJl9T0YApVjvFllgtg3ow66YsSc7m
PDznjOub+nRHyDipug12pnQehFCXsrqnB5fO6vl9B9FwokANM7Dz8jqsbELlX+Ds
OHCL1qPapGS618sno+UbGCGr7XYHnGvPA4uf4EKVmM3bkKDPSS83vQKHXc9BwLUH
P8OblHFlJfLrKwgztMYz43RpjReUELTWTbzNYb0gX6/zxdVNr/F6t61VvadOFcri
kqwR3L4avowLrncGPIDyzOtSYhjgIaSXu0c5v6QURZ6tDQWJ4TUKj55wVGdRq/py
fs+Wc0YGBUx1elcbRPLJxJ2NNshGmPd3ckne+oma5TEONuLSK/XpO5aZ2oxpD6X9
fnK29RKxnbFI8ElLZvashq+C3/IerxcFW5zA0jz+Zpd8l7c/kMvnV/j2LrbnVK5a
Yu79PSsRhSTCg3unge3aiXFK+ID1VZohLqYwwDdXXvJ9TyqYrdqOWJOCQKqgK1E2
VVWe2aBmgZAu1CxtoxIOHs1oydtjt3k/kxJT7Wo3vZmCVjMIUyUS/hi2RlhEiImz
dRQXFNXzhsqjpQ==
=6Gdp
-----END PGP SIGNATURE-----
--=-=-=--
